package com.nb.service.chinatelecomimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.nb.exception.ResultBean;
import com.nb.httputil.ChinaTelecomIotHttpsUtil;
import com.nb.logger.LogName;
import com.nb.logger.LoggerUtil;
import com.nb.mapper.CommonMapper;
import com.nb.mapper.NbCommandMapper;
import com.nb.model.CmdResult;
import com.nb.model.DeviceInfo;
import com.nb.model.NbCommand;
import com.nb.service.IChinaTelecomCommandService;
import com.nb.utils.AuthenticationUtils;
import com.nb.utils.Constant;
import com.nb.utils.DateUtils;
import com.nb.utils.JedisUtils;

import static com.nb.utils.ConverterUtils.*;
import com.nb.utils.JsonUtil;

/** 
* @ClassName: ChinaTelecomCommandServiceImpl 
* @Description: 中国电信命令管理实现类 
* @author dbr
* @date 2019年1月9日 上午10:01:41 
*  
*/
@Service
public class ChinaTelecomCommandServiceImpl implements IChinaTelecomCommandService {

	@Value("${commandExpireTime}")
	private int commandExpireTime;
	
	@Resource
	private CommonMapper commonMapper;
	
	@Resource
	private NbCommandMapper nbCommandMapper;
	/** (非 Javadoc) 
	* <p>Title: asynCommand</p> 
	* <p>Description: </p> 
	* @param command
	* @return
	* @throws Exception 
	* @see com.nb.service.IChinaTelecomCommandService#asynCommand(com.alibaba.fastjson.JSONObject) 
	* command{"rtuId":"1","mpId":"1","commandId":"1",operatorId":"1",
	 * "param":"{\"value\":\"12\"}"
	*/
	@Override
	
	public ResultBean<?> asynCommand(JSONObject command) throws Exception {
		
		LoggerUtil.logger(LogName.INFO).info("接收下发命令请求：" + command);

		Map<String, String> param = new HashMap<>();
		param = JsonUtil.jsonString2SimpleObj(command, param.getClass());
		DeviceInfo deviceInfo = commonMapper.getDeviceInfo(param);
		if (deviceInfo == null) {
			ResultBean<JSONObject> result = new ResultBean<JSONObject>(Constant.ERROR, "配置信息错误");
			return result;
		}
		String appId = deviceInfo.getAppId();
		String deviceId = deviceInfo.getDeviceId();

		ChinaTelecomIotHttpsUtil httpsUtil = new ChinaTelecomIotHttpsUtil();
		httpsUtil.initSSLConfigForTwoWay();
		String accessToken = AuthenticationUtils.getChinaTelecomAccessToken(httpsUtil, appId, deviceInfo.getSecret());

		String urlPostAsynCmd = Constant.CHINA_TELECOM_POST_ASYN_CMD;
		String callbackUrl = Constant.CHINA_TELECOM_REPORT_CMD_EXEC_RESULT_CALLBACK_URL;

		ResultBean<String> result = new ResultBean<String>();

		ObjectNode paras = JsonUtil.convertObject2ObjectNode(param.get("param"));
		
		Map<String, String> commandMap = commonMapper.getCommand(param);
		if (null == commandMap || commandMap.isEmpty()) {
			result.setStatus(Constant.ERROR);
			result.setError("命令类型不存在");
			return result;
		}
		
		Map<String, Object> paramCommand = new HashMap<>();
		paramCommand.putAll(commandMap);
		paramCommand.put("paras", paras);

		Map<String, Object> paramPostAsynCmd = new HashMap<>();
		paramPostAsynCmd.put("deviceId", deviceId);
		paramPostAsynCmd.put("command", paramCommand);
		paramPostAsynCmd.put("callbackUrl", callbackUrl);

		String jsonRequest = JsonUtil.jsonObj2Sting(paramPostAsynCmd);

		Map<String, String> header = new HashMap<>();
		header.put(Constant.HEADER_APP_KEY, appId);
		header.put(Constant.HEADER_APP_AUTH, "Bearer" + " " + accessToken);

		HttpResponse responsePostAsynCmd = httpsUtil.doPostJson(urlPostAsynCmd, header, jsonRequest);
		String responseBody = httpsUtil.getHttpResponseBody(responsePostAsynCmd);
		
		JSONObject responseJson = JSON.parseObject(responseBody);
		String commandId = toStr(responseJson.getString("commandId"));
		if (commandId.isEmpty()) {
			result.setStatus(Constant.ERROR);
			result.setError(responseBody);

		} else {
			insertNbCommand(param, paramCommand, commandId, Constant.ASYN_COMMAND);
		}

		result.setData(responseBody);
		
		return result;
	}
	

	/** (非 Javadoc) 
	* <p>Title: batchCommand</p> 
	* <p>Description: </p> 
	* @param command
	* @return
	* @throws Exception 
	* @see com.nb.service.IChinaTelecomCommandService#batchCommand(com.alibaba.fastjson.JSONObject) 
	* 
	* command{"appId":"YXnpwWndC3ioc15OGALXZvHLB1oa","secret":"YXnpwWndC3ioc15OGALXZvHLB1oa",
	* "deviceList:[232132,34324,34534,456456]",
	 * "commandId":"1",operatorId":"1", "serviceId":"ACD",method="CDE" "param":"{\"value\":\"12\"}"
	*/
	
	@Override
	public ResultBean<?> batchCommand(JSONObject commands) throws Exception {
		LoggerUtil.logger(LogName.INFO).info("接收批量下发命令请求：" + commands);
		JSONArray cmdArray = commands.getJSONArray("cmds");

		// 命令执行结果列表 用于返回给web
		List<CmdResult> resultList = new ArrayList<CmdResult>();

		for (Object cmd : cmdArray) {
			Map<String, String> param = new HashMap<>();
			param = JsonUtil.jsonString2SimpleObj(cmd, param.getClass());
			DeviceInfo deviceInfo = commonMapper.getDeviceInfo(param);
			if (deviceInfo == null) {
				resultList.add(new CmdResult(param.get("mpId"), Constant.ERROR, "档案配置错误"));
				continue;
			}

			ObjectNode paras = JsonUtil.convertObject2ObjectNode(param.get("param"));

			Map<String, String> commandMap = commonMapper.getCommand(param);
			if (null == commandMap || commandMap.isEmpty()) {
				resultList.add(new CmdResult(param.get("mpId"), Constant.ERROR, "命令类型不存在"));
				continue;
			}
			
			String appId = deviceInfo.getAppId();
			String deviceId = deviceInfo.getDeviceId();

			ChinaTelecomIotHttpsUtil httpsUtil = new ChinaTelecomIotHttpsUtil();
			httpsUtil.initSSLConfigForTwoWay();
			String accessToken = AuthenticationUtils.getChinaTelecomAccessToken(httpsUtil, appId,
					deviceInfo.getSecret());

			String urlPostAsynCmd = Constant.CHINA_TELECOM_POST_ASYN_CMD;
			String callbackUrl = Constant.CHINA_TELECOM_REPORT_CMD_EXEC_RESULT_CALLBACK_URL;

			Map<String, Object> paramCommand = new HashMap<>();
			paramCommand.putAll(commandMap);
			paramCommand.put("paras", paras);

			Map<String, Object> paramPostAsynCmd = new HashMap<>();
			paramPostAsynCmd.put("deviceId", deviceId);
			paramPostAsynCmd.put("command", paramCommand);
			paramPostAsynCmd.put("callbackUrl", callbackUrl);

			String jsonRequest = JsonUtil.jsonObj2Sting(paramPostAsynCmd);

			Map<String, String> header = new HashMap<>();
			header.put(Constant.HEADER_APP_KEY, appId);
			header.put(Constant.HEADER_APP_AUTH, "Bearer" + " " + accessToken);

			HttpResponse responsePostAsynCmd = httpsUtil.doPostJson(urlPostAsynCmd, header, jsonRequest);
			String responseBody = httpsUtil.getHttpResponseBody(responsePostAsynCmd);

			JSONObject responseJson = JSON.parseObject(responseBody);
			String commandId = toStr(responseJson.getString("commandId"));
			if (commandId.isEmpty()) {
				resultList.add(new CmdResult(param.get("mpId"), Constant.ERROR, responseBody));
				continue;
			} else {
				insertNbCommand(param, paramCommand, commandId, Constant.ASYN_COMMAND);
				resultList.add(new CmdResult(param.get("mpId"), Constant.SUCCESS, ""));
			}
		}
		ResultBean<List<CmdResult>> result = new ResultBean<List<CmdResult>>();
		result.setData(resultList);

		return result;
	}
	
	/** 
	* @Title: insertNbCommand 
	* @Description: 插入nb命令 
	* @param @param param
	* @param @param paramCommand
	* @param @param commandId
	* @param @param commandClass
	* @param @throws Exception    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertNbCommand(Map<String, String> param, Map<String, Object> paramCommand, String commandId,
			byte commandClass) throws Exception {
		NbCommand nbCommand = new NbCommand();
		nbCommand.setRtuId(toInt(param.get("rtuId")));
		nbCommand.setMpId(toShort(param.get("mpId")));
		nbCommand.setCommandClass(commandClass);
		nbCommand.setCommandType(toByte(param.get("commandId")));

		String tableNameDate = DateUtils.curDate();
		nbCommand.setCommandContent(paramCommand.toString());
		nbCommand.setOperatorId(toInt(param.get("operatorId")));
		nbCommand.setTableName(tableNameDate.substring(0, 6));
		nbCommand.setCommandId(commandId);
		nbCommandMapper.insertNbCommand(nbCommand);

		// 将命令对应数据表日期存入redis
		JedisUtils.set(Constant.COMMAND + commandId, tableNameDate, Constant.COMMAND_TIME_OUT);
	}
}
