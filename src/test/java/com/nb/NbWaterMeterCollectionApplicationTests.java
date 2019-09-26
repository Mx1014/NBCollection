package com.nb;



import static com.nb.utils.ConverterUtils.toByte;
import static com.nb.utils.ConverterUtils.toInt;
import static com.nb.utils.ConverterUtils.toShort;
import static com.nb.utils.ConverterUtils.toStr;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties.Jedis;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nb.logger.LogName;
import com.nb.logger.LoggerUtil;
import com.nb.mapper.CommonMapper;
import com.nb.mapper.EveMapper;
import com.nb.mapper.JFDayFlowMapper;
import com.nb.mapper.NbBatteryMapper;
import com.nb.mapper.NbCommandMapper;
import com.nb.mapper.NbDailyDataMapper;
import com.nb.mapper.NbInstantaneousMapper;
import com.nb.mapper.ScheduleJobMapper;
import com.nb.mapper.TaskMapper;
import com.nb.model.DeviceInfo;
import com.nb.model.Eve;
import com.nb.model.JFDayFlow;
import com.nb.model.NbBattery;
import com.nb.model.NbCommand;
import com.nb.model.NbCommandKey;
import com.nb.model.NbDailyData;
import com.nb.model.NbInstantaneous;
import com.nb.model.ScheduleJob;
import com.nb.model.jd.Battery;
import com.nb.model.jd.DeviceAlarm;
import com.nb.model.jd.PeriodReport;
import com.nb.model.jd.RealtimeReport;
import com.nb.service.IChinaMobileService;
import com.nb.service.IScheduleService;
import com.nb.service.chinamobileimpl.ChinaMobileSuntrontServiceImpl;
import com.nb.servicestrategy.ServiceStrategyContext;
import com.nb.task.FxTelecomCallDataTask;
import com.nb.utils.Constant;
import com.nb.utils.ConverterUtils;
import com.nb.utils.DateUtils;
import com.nb.utils.JedisUtils;
import com.nb.utils.JsonUtil;
import com.nb.utils.NumberUtils;

/** 
* @ClassName: NbWaterMeterCollectionApplicationTests 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年4月18日 下午4:50:24 
*  
*/
@RunWith(SpringRunner.class)
@SpringBootTest(classes = NbWaterMeterCollectionApplication.class)
@PropertySource({"classpath:config.properties" })
public class NbWaterMeterCollectionApplicationTests {

	
	@Resource
	private ScheduleJobMapper scheduleJobMapper;
	
	@Resource
	private IScheduleService scheduleService;
	
	@Resource
	private NbCommandMapper nbCommandMapper;
	
	@Resource
	private NbBatteryMapper nbBatteryMapper;

	@Resource
	private EveMapper eveMapper;
	
	@Resource
	private NbDailyDataMapper nbDailyDataMapper;
	
	@Autowired
	private ServiceStrategyContext chinaTelecomServiceContext;
	
	@Resource
	private CommonMapper commonMapper;
	
	@Resource
	private NbInstantaneousMapper nbInstantaneousMapper;
	
	@Resource
	private JFDayFlowMapper jfDayFlowMapper;

	@Resource
	private TaskMapper taskMapper;
	
	@Autowired
	private ChinaMobileSuntrontServiceImpl chinaMobileSuntrontService;
	@Test
	public void testXT() {
		System.out.println(JedisUtils.get(Constant.DEVICE_KEY + "333"));
		System.out.println(JedisUtils.get("a"));

//		NbCommand nbCommand = new NbCommand();
//		nbCommand.setTableName("201905");
//		nbCommand.setCommandId("00000001");
//		nbCommand.setExecuteResult((byte) 0);
//		nbCommand.setReportTime(new Date(1558594321798L));
//		System.out.println(nbCommandMapper.updateNbCommand(nbCommand));
		
//		System.out.println(JedisUtils.incr("a"));
//		
//		JFDayFlow jfDayFlow = new JFDayFlow();
//		jfDayFlow.setTableName("201905");
//		jfDayFlow.setRtuId(5);
//		jfDayFlow.setMpId((short)1);
//		jfDayFlow.setDate(20190518);
//
//		jfDayFlow.setTime(10000);
//		jfDayFlow.setLjllZx(111D);
//		jfDayFlow.setLlLjllZx(22D);
//		jfDayFlow.setLlLjllFx(3D);
//		System.out.println(jfDayFlowMapper.isExist(jfDayFlow));
//		
//		System.out.println(jfDayFlowMapper.updateJFDayFlow(jfDayFlow));
//		JSONObject xt = new JSONObject();
//		xt.put("at", new Date().getTime());
//		xt.put("imei", "867726030828687");
//		xt.put("type", 1);
//		xt.put("ds_id", "3200_0_5505");
//		xt.put("value", "68a107250419208000d0bdad0017051900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000089860437161890071548086076504044047800000000000000000018110000000000000000005416150519241946314435300808affcc90000eeeeeeeeeeD4DC16");
//		xt.put("dev_id", 526298861);
//		
//		chinaMobileSuntrontService.parseMsg(xt);
	}
	
//	@Test
	public void TaskTest() {
		
		Eve eve = new Eve();
		eve.setMemberId0(1);
		eve.setMemberId1(2);
		eve.setYmd(20190506);
		eve.setHmsms(2510000);
		eve.setTypeno((short)2004);
		eve.setTableName("201905");
		System.out.println(eveMapper.isExist(eve));
//		System.out.println(JedisUtils.get(Constant.ACCESS_TOKEN + "595yVAxsUL1HnK84TnylSC6xaY8a"));
		
	}
	
	
//	@Test
	public void testCommon() {
		 
		String className = FxTelecomCallDataTask.class.getName();
		Map<String,Object> batchCmdInfo = taskMapper.getBatchCommandByClass(className);
		System.out.println(batchCmdInfo);
		
		JSONObject command = JSONObject.parseObject(JSON.toJSONString(batchCmdInfo));

		System.out.println("command : "+ command );
//		NbInstantaneous nbInstantaneous = new NbInstantaneous();
////		commonMapper.updateDeviceIdByImei("11111", "1");e
//		nbInstantaneous.setTableName("201904");
//		nbInstantaneous.setMpId((short)1);
//		nbInstantaneous.setRtuId(2);
//		nbInstantaneous.setYmd(201904232);
//		nbInstantaneous.setHms(233000);
//		System.out.println(nbInstantaneousMapper.isExist(nbInstantaneous));

//		DeviceInfo deviceInfo = new DeviceInfo();
//		Map<String, String> param = new HashMap<>();
//		param.put("rtuId", "1");
//		param.put("mpId", "11");
//		deviceInfo = commonMapper.getDeviceInfo(param);
//		System.out.println(deviceInfo.toString());
//		JedisUtils.set(Constant.COMMAND + commandId, "201904", 60 * 60 * 12);
//
//		String tableNameDate = JedisUtils.get(Constant.COMMAND + commandId);
//		if (tableNameDate != null) {
//			NbCommand nbCommand = new NbCommand();
//			nbCommand.setTableName(tableNameDate);
//			nbCommand.setCommandId(commandId);
//			nbCommand.setExecuteResult((byte) 1);
//			System.out.println(nbCommandMapper.updateNbCommand(nbCommand));
//		}else {
//			System.out.println("oooo");
//		}
		
//		NbCommand nbCommand = new NbCommand();
//		nbCommand.setRtuId(toInt(1));
//		nbCommand.setMpId(toShort(1));
//		nbCommand.setCommandClass(toByte(1));// 单个命令
//		nbCommand.setCommandType(toByte(1));
//
//		nbCommand.setCommandContent("#243242342");
//		nbCommand.setOperatorId(toInt(1));
//		nbCommand.setTableName(DateUtils.curDate().substring(0, 6));
//		nbCommand.setCommandId("23423423423");
//		System.out.println(nbCommandMapper.insertNbCommand(nbCommand));
		
//		NbDailyData nbDailyData = new NbDailyData();
//		nbDailyData.setRtuId(1);
//		nbDailyData.setMpId((short)1);
//		nbDailyData.setYmd(20190410);
//		nbDailyData.setHms(173044);
//		nbDailyData.setTableName("201904");
//		nbDailyData.setBatteryVoltage(3.6);
//		System.out.println(nbDailyDataMapper.updateNbDailyData(nbDailyData)); 
		
		
//		JFDayFlow jfDayFlow = new JFDayFlow();
//		jfDayFlow.setTableName("200808");
//		jfDayFlow.setRtuId(1);
//		jfDayFlow.setMpId((short)1);
//		jfDayFlow.setDate(20080112);
//		jfDayFlow.setTime(120000);
//
//		jfDayFlow.setLjllZx(34D);
//		jfDayFlow.setLlLjllZx(4D);
//		jfDayFlow.setLlLjllFx(6D);
//
//		System.out.println(jfDayFlowMapper.insertJFDayFlow(jfDayFlow)); 
		
		
//		Map<String, String> param = new HashMap<>();
//		param.put("rtuId", "1");
//		param.put("mpId", "2");
//		param.put("commandId", "1");
//		
//		System.out.println(commonMapper.getRegisterInfo(param));
	}
	
	
//	@Test
	public void testFX(){
		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId("11111111");
		if (meterInfo == null) {
			return;
		}

		// 更新水表的阀门状态和固件版本
		meterInfo.put("valveState", 2);
		meterInfo.put("version", "10.25");
		try {
			System.out.println(commonMapper.updateWaterMeterValve(meterInfo));

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
//	@Test
	public void testEve() {
//		NbBattery nbBattery = new NbBattery();
//		nbBattery.setTableName("201904");
//		nbBattery.setBatteryVoltage(332.3432434);
//		nbBattery.setRtuId(0);
//		nbBattery.setHms(2);
//		nbBattery.setMpId((short)10);
//		nbBattery.setYmd(20190420);
//		boolean flag = false;
//		try {
//			if (null == nbBatteryMapper.getNbBattery(nbBattery)) {
//				flag = nbBatteryMapper.insertNbBattery(nbBattery);
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		System.out.println(flag);
		
//		for (int i = 0; i < 100000; i++) {
//			NbBattery nbBattery = new NbBattery();
//			nbBattery.setTableName("201904");
//			nbBattery.setYmd(20190413);
//			nbBattery.setHms(i);
//			nbBattery.setRtuId(1);
//			nbBattery.setMpId((short) 2);
//			String a = NumberUtils.formatNumber(new Random().nextDouble(), 2);
//			nbBattery.setBatteryVoltage(ConverterUtils.toDouble(a));
//			
//			JedisUtils.lpush(Constant.HISTORY_BATTERY_QUEUE, JsonUtil.jsonObj2Sting(nbBattery));
//		}
//		
		
//		for (int i = 0; i < 1000000; i++) {
//
//			Eve eve = new Eve();
//			eve.setTableName(toStr(201904));
//			eve.setYmd(20190413);
//			eve.setHmsms(i * 1000+i);
//			eve.setMemberId0(1);
//			eve.setMemberId1(2);
//			eve.setMemberId2(-1);
//			eve.setClassno(Constant.NB_ALARM);
//			eve.setTypeno((short)12);
//			eve.setCharInfo("23");
//
//			JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
//		}

		
//		for (int i = 0; i < 1000000; i++) {
//			NbDailyData nbDailyData = new NbDailyData();
//			nbDailyData.setTableName("201904");
//			nbDailyData.setReportType((byte) 0);
//			nbDailyData.setRtuId(1);
//			nbDailyData.setMpId((short) 2);
//			nbDailyData.setYmd(20190413);
//			nbDailyData.setHms(i);
//
//			String a = NumberUtils.formatNumber(new Random().nextDouble(), 2);
//
//			nbDailyData.setTotalFlow(i *ConverterUtils.toDouble(a));
//			nbDailyData.setDailyPositiveFlow(i * ConverterUtils.toDouble(a));
//			nbDailyData.setDailyNegativeFlow(i * ConverterUtils.toDouble(a));
//			nbDailyData.setDailyMaxVelocity(i * ConverterUtils.toDouble(a));
//
//			JedisUtils.lpush(Constant.HISTORY_DAILY_QUEUE, JsonUtil.jsonObj2Sting(nbDailyData));
//		}
		
		for (int i = 0; i < 100; i++) {
			NbInstantaneous nbInstantaneous = new NbInstantaneous();
			nbInstantaneous.setTableName("201904");
			nbInstantaneous.setRtuId(10);
			nbInstantaneous.setMpId((short)i);
			nbInstantaneous.setYmd(20190401 + i);

			Calendar c = Calendar.getInstance();
			c.set(Calendar.MINUTE, 0);
			for (int j = 0; j < 48; j++) {
				c.add(Calendar.MINUTE, 30);
				int time = toInt(DateUtils.formatTimePattern(c.getTime()));
				nbInstantaneous.setHms(time);
				String a = NumberUtils.formatNumber(new Random().nextDouble(), 2);

				nbInstantaneous.setTotalFlow(ConverterUtils.toDouble(a));

				JedisUtils.lpush(Constant.HISTORY_INSTAN_QUEUE, JsonUtil.jsonObj2Sting(nbInstantaneous));
			}
		}
		
//		try {
//			System.out.println(JedisUtils.rpop("333"));
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		
//		Eve eve = new Eve();
//		eve.setTableName(toStr(201904));
//		eve.setYmd(20190412);
//		eve.setHmsms(100 * 1000);
//		eve.setMemberId0(1);
//		eve.setMemberId1(2);
//		eve.setMemberId2(-1);
//		eve.setClassno(Constant.NB_ALARM);
//		eve.setTypeno(Constant.ALARM_2005);
//		eve.setCharInfo("电池告警，电压值为：" + 10 + ",电压阀值为： " +32);
//		System.out.println(JedisUtils.brpop(5, Constant.ALARM_EVENT__QUEUE));
		
//		System.out.println(JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve)));;
	}
	
	
//	@Test
	public void testValue(){
		Map<String, String> dataMap = new HashMap<String, String>();
		dataMap.put("valveState", "C");

		byte valveState = Constant.VALVE_OTHER;
		switch (dataMap.get("valveState")) {
		case "O":
			valveState = Constant.VALVE_OPEN;
			break;

		case "C":
			valveState = Constant.VALVE_CLOSE;
			break;
		case "H":
			valveState = Constant.VALVE_HALF_OPEN;
			break;
		default:
			break;
		}
		
		String deviceId = "55ff190f-33fe-40f7-8cbc-df877b5d9645";
		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		meterInfo.put("valveState", valveState);
		commonMapper.updateWaterMeterValve(meterInfo);
	}
	
//	@Test
	public void testPeriodReport(){
	Map<String, String> serviceMap = new HashMap<String, String>();
		
		Map<String, String> dataMap = new HashMap<>();
		dataMap.put("readTime", System.currentTimeMillis() + "");
		dataMap.put("cumulativeFlow", "180");
		dataMap.put("positiveCumulativeFlow", "10");
		dataMap.put("negativeCumulativeFlow", "1");
		dataMap.put("peakFlowRate", "5");
		dataMap.put("peakFlowRateTime", "210015");
		dataMap.put("startTime", System.currentTimeMillis() + "");
		dataMap.put("period", "10");
		
		List<Integer> list = new LinkedList<Integer>();
		for (int i = 0; i < 48; i++) {
			list.add(i * 2);
		}
		
		dataMap.put("flows", list.toString());


		String deviceId = "11111111";
		
		PeriodReport periodReport = JsonUtil.map2Bean(dataMap, PeriodReport.class);
		System.out.println(periodReport.toString());

		System.out.println(periodReport.getFlows());
		
		String evnetTime = periodReport.getReadTime();
		int date = toInt(evnetTime.substring(0, 8));
		int time = toInt(evnetTime.substring(9, 15));
		String tableNameDate = toStr(date / 100);

		insertPeriodReport(tableNameDate, date, time, periodReport, deviceId);

		insertInstantaneous(tableNameDate, date, periodReport, deviceId);
	}
	
	/** 
	* @Title: insertInstantaneous 
	* @Description: 插入瞬时量 
	* @param @param tableNameDate
	* @param @param date
	* @param @param periodReport
	* @param @param deviceId    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertInstantaneous(String tableNameDate, int date, PeriodReport periodReport, String deviceId) {

		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		int rtuId = toInt(meterInfo.get("rtuId"));
		short mpId = toShort(meterInfo.get("mpId"));

		NbInstantaneous nbInstantaneous = new NbInstantaneous();
		nbInstantaneous.setTableName(tableNameDate);
		nbInstantaneous.setRtuId(rtuId);
		nbInstantaneous.setMpId(mpId);
		nbInstantaneous.setYmd(date);
		
		JSONArray arrays = JSONArray.parseArray(periodReport.getFlows().toString());
		Calendar c = Calendar.getInstance();
		c.set(Calendar.MINUTE, 0);
		for (int i = 0; i < arrays.size(); i++) {
			c.add(Calendar.MINUTE, 30);
			int time = toInt(DateUtils.formatTimePattern(c.getTime()));
			nbInstantaneous.setHms(time);
			nbInstantaneous.setTotalFlow(arrays.getDouble(i));
			
			if (null == nbInstantaneousMapper.getNbInstantaneous(nbInstantaneous)) {
				nbInstantaneousMapper.insertNbInstantaneous(nbInstantaneous);
			}
		}
	}
	
	/** 
	* @Title: insertPeriodReport 
	* @Description: 将周期数据插入日数据表中 
	* @param @param tableNameDate
	* @param @param date
	* @param @param time
	* @param @param periodReport
	* @param @param deviceId    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertPeriodReport(String tableNameDate, int date, int time, PeriodReport periodReport, String deviceId) {

		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		int rtuId = toInt(meterInfo.get("rtuId"));
		short mpId = toShort(meterInfo.get("mpId"));

		NbDailyData nbDailyData = new NbDailyData();
		nbDailyData.setTableName(tableNameDate);
		nbDailyData.setReportType((byte)0);
		nbDailyData.setRtuId(rtuId);
		nbDailyData.setMpId(mpId);
		nbDailyData.setYmd(date);
		nbDailyData.setHms(time);

		nbDailyData.setTotalFlow(periodReport.getCumulativeFlow());
		nbDailyData.setDailyPositiveFlow(periodReport.getPositiveCumulativeFlow());
		nbDailyData.setDailyNegativeFlow(periodReport.getNegativeCumulativeFlow());
		nbDailyData.setDailyMaxVelocity(periodReport.getPeakFlowRate());

		if (null == nbDailyDataMapper.getNbDailyData(nbDailyData)) {
			nbDailyDataMapper.insertNbDailyData(nbDailyData);
		}
	}
	
//	@Test
	public void testRealReport(){
		Map<String, String> serviceMap = new HashMap<String, String>();
		
		Map<String,String> dataMap = new HashMap<>();
		dataMap.put("readTime", System.currentTimeMillis()+"");
		dataMap.put("cumulativeFlow", "180");
		dataMap.put("positiveCumulativeFlow", "10");
		dataMap.put("negativeCumulativeFlow", "1");
		dataMap.put("peakFlowRate", "5");
		dataMap.put("peakFlowRateTime", "210015");
		dataMap.put("pulseEq", "2");

		String deviceId = "11111111";
		RealtimeReport realtimeReport = JsonUtil.map2Bean(dataMap, RealtimeReport.class);
		
		String evnetTime = realtimeReport.getReadTime();
		int date = toInt(evnetTime.substring(0, 8));
		int time = toInt(evnetTime.substring(9, 15));
		String tableNameDate = toStr(date / 100);
		
		insertRealReport(tableNameDate, date, time, realtimeReport, deviceId);
	}
	
	private void insertRealReport(String tableNameDate, int date, int time, RealtimeReport realtimeReport, String deviceId) {

		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		int rtuId = toInt(meterInfo.get("rtuId"));
		short mpId = toShort(meterInfo.get("mpId"));

		NbDailyData nbDailyData = new NbDailyData();
		nbDailyData.setTableName(tableNameDate);
		nbDailyData.setReportType((byte)0);
		nbDailyData.setRtuId(rtuId);
		nbDailyData.setMpId(mpId);
		nbDailyData.setYmd(date);
		nbDailyData.setHms(time);

		nbDailyData.setTotalFlow(realtimeReport.getCumulativeFlow());
		nbDailyData.setDailyPositiveFlow(realtimeReport.getPositiveCumulativeFlow());
		nbDailyData.setDailyNegativeFlow(realtimeReport.getNegativeCumulativeFlow());
		nbDailyData.setDailyMaxVelocity(realtimeReport.getPeakFlowRate());

		if (null == nbDailyDataMapper.getNbDailyData(nbDailyData)) {
			nbDailyDataMapper.insertNbDailyData(nbDailyData);
		}
	}
	
//	@Test
	public void testDeviceAlarm(){
		String deviceId = "11111111";

		
		Map<String, String> serviceMap = new HashMap<String, String>();
		serviceMap.put("evnetTime", "20190416T163600");
		
		Map<String,String> dataMap = new HashMap<>();
		dataMap.put("peakFlowStartTime", System.currentTimeMillis()+"");
		dataMap.put("peakFlow", "180");
		dataMap.put("tampered", "1");
		dataMap.put("reverseFlowAlarm", "1");
		dataMap.put("magneticInterferenceAlarm", "1");
		dataMap.put("disconnectAlarm", "1");
		
		DeviceAlarm deviceAlarm = JsonUtil.map2Bean(dataMap, DeviceAlarm.class);
		deviceAlarm.setEvnetTime(serviceMap.get("evnetTime"));
		
		String eveInfo = "";
		Short typeNo = 0;
		// 篡改告警
		if (deviceAlarm.getTampered() == Constant.ALARM) {
			eveInfo = "序列号,生产日期,累计流量至少有一项被篡改";
			typeNo = Constant.ALARM_2012;
			insertEve(deviceAlarm, deviceId, eveInfo, typeNo);
		}

		// 反流告警
		if (deviceAlarm.getReverseFlowAlarm() == Constant.ALARM) {
			eveInfo = "反流告警";
			typeNo = Constant.ALARM_2003;
			insertEve(deviceAlarm, deviceId, eveInfo, typeNo);
		}

		// 磁干扰
		if (deviceAlarm.getMagneticInterferenceAlarm() == Constant.ALARM) {
			eveInfo = "磁干扰";
			typeNo = Constant.ALARM_2004;
			insertEve(deviceAlarm, deviceId, eveInfo, typeNo);
		}

		// 远传模块分离告警
		if (deviceAlarm.getDisconnectAlarm() == Constant.ALARM) {
			eveInfo = "远传模块分离告警";
			typeNo = Constant.ALARM_2006;
			insertEve(deviceAlarm, deviceId, eveInfo, typeNo);
		}

		// 大流量告警
		if (deviceAlarm.getPeakFlow() > 0) {
			typeNo = Constant.ALARM_2001;
			eveInfo = "大流量报警 开始时间:" + deviceAlarm.getPeakFlowStartTime() + ",最大流速:" + deviceAlarm.getPeakFlow()
					+ " L/h";
			insertEve(deviceAlarm, deviceId, eveInfo, typeNo);
		}
		
		System.out.println("ddd");
		
	}

	/** 
	* @Title: insertEve 
	* @Description: 插入电池电压告警
	* @param @param tableNameDate
	* @param @param date
	* @param @param time
	* @param @param battery    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertEve(DeviceAlarm deviceAlarm, String deviceId, String eveInfo, short typeNo) {
		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		int rtuId = toInt(meterInfo.get("rtuId"));
		int mpId = toInt(meterInfo.get("mpId"));

		Eve eve = new Eve();
		eve.setTableName(toStr(deviceAlarm.getEventDate() / 100));
		eve.setYmd(deviceAlarm.getEventDate());
		eve.setHmsms(deviceAlarm.getEventTime() * 1000);
		eve.setMemberId0(rtuId);
		eve.setMemberId1(mpId);
		eve.setMemberId2(-1);
		eve.setClassno(Constant.NB_ALARM);
		eve.setTypeno(typeNo);
		eve.setCharInfo(eveInfo);
		try {
			eveMapper.insertEve(eve);
		} catch (Exception e) {
			// TODO: handle exception
			LoggerUtil.logger(LogName.CALLBACK).info(eve.toString() + "存库失败");
		}
	}
	
	
//	@Test
	public void testBattery() {
		
		Map<String, String> serviceMap = new HashMap<String, String>();
		serviceMap.put("evnetTime", "20190415T063600");
		
		Map<String,String> dataMap = new HashMap<>();
		dataMap.put("batteryVoltage", "2.6");
		dataMap.put("batteryvoltageAlarm", "N");
		dataMap.put("batteryvoltageThreshold", "2.6");
		
		Battery battery = JsonUtil.map2Bean(dataMap, Battery.class);
		battery.setEvnetTime(serviceMap.get("evnetTime"));
		
		System.out.println(battery.toString());
		
		String deviceId = "11111111";
		Map<String, Object> meterInfo = this.commonMapper.getRtuMpIdByDeviceId(deviceId);
		if (meterInfo == null) {
			return;
		}

		int rtuId = toInt(meterInfo.get("rtuId"));
		int mpId = toInt(meterInfo.get("mpId"));
		
		// 电池电压告警
		if (battery.isAlarm()) {
			insertEve(battery, rtuId, mpId);
		} else { // 正常上报电池电压
			insertBattery( battery, rtuId, mpId);
		}
	}
	
	/** 
	* @Title: insertEve 
	* @Description: 插入电池电压告警 
	* @param @param battery
	* @param @param rtuId
	* @param @param mpId    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertEve(Battery battery, int rtuId, int mpId) {
		Eve eve = new Eve();
		eve.setTableName(toStr(battery.getEventDate() / 100));
		eve.setYmd(battery.getEventDate());
		eve.setHmsms(battery.getEventTime() * 1000);
		eve.setMemberId0(rtuId);
		eve.setMemberId1(mpId);
		eve.setMemberId2(-1);
		eve.setClassno(Constant.NB_ALARM);
		eve.setTypeno(Constant.ALARM_2005);
		eve.setCharInfo("电池告警，电压值为：" + battery.getBatteryVoltage() + ",电压阀值为： " + battery.getBatteryvoltageThreshold());
		eveMapper.insertEve(eve);
	}

	/** 
	* @Title: insertBattery 
	* @Description: 插入电池电压上报信息  nb_battery_200808
	* @param @param battery
	* @param @param rtuId
	* @param @param mpId    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private void insertBattery(Battery battery, int rtuId, int mpId) {
		NbBattery nbBattery = new NbBattery();
		nbBattery.setTableName(toStr(battery.getEventDate() / 100));
		nbBattery.setYmd(battery.getEventDate());
		nbBattery.setHms(battery.getEventTime());
		nbBattery.setRtuId(rtuId);
		nbBattery.setMpId((short) mpId);
		nbBattery.setBatteryVoltage(battery.getBatteryVoltage());
		if (null == nbBatteryMapper.getNbBattery(nbBattery)) {
			nbBatteryMapper.insertNbBattery(nbBattery);
		}
	}

}
