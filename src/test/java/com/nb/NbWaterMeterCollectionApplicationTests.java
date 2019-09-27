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
import com.nb.mapper.ke.EveMapper;
import com.nb.mapper.ke.JFDayFlowMapper;
import com.nb.mapper.ke.NbCommandMapper;
import com.nb.mapper.ScheduleJobMapper;
import com.nb.mapper.TaskMapper;
import com.nb.model.DeviceInfo;
import com.nb.model.ke.Eve;
import com.nb.model.ke.JFDayFlow;
 import com.nb.model.ke.NbCommand;
 import com.nb.model.ke.NbDailyData;
import com.nb.model.ke.NbInstantaneous;
import com.nb.model.ScheduleJob;
import com.nb.service.IChinaMobileService;
import com.nb.service.IScheduleService;
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
	private EveMapper eveMapper;
	
	
	@Autowired
	private ServiceStrategyContext chinaTelecomServiceContext;
	
	@Resource
	private CommonMapper commonMapper;
	
	
	@Resource
	private JFDayFlowMapper jfDayFlowMapper;

	@Resource
	private TaskMapper taskMapper;
	
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
	
}
