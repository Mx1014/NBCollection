/**   
* @Title: HistoryDatabaseCustomerThread.java 
* @Package com.nb.customer.historydatabase 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年3月11日 上午9:57:54 
* @version V1.0   
*/
package com.nb.customer.historydatabase;

import com.nb.utils.Constant;
import com.nb.utils.JedisUtils;

/**
 * @ClassName: DailyDataCustomerThread
 * @Description: 日数据历史库存储线程
 * @author dbr
 * @date 2019年3月11日 上午9:57:54
 * 
 */
public class DailyDataCustomerThread implements Runnable {

	/** 历史库线程起止标志 */
	public volatile static boolean historyDatabaseRunFlag = true;

	private HistoryDatabaseExecutor historyDatabaseExecutor;

	/** 
	* <p>Title: </p> 
	* <p>Description: </p> 
	* @param historyDatabaseExecutor 
	*/
	public DailyDataCustomerThread(HistoryDatabaseExecutor historyDatabaseExecutor) {
		super();
		this.historyDatabaseExecutor = historyDatabaseExecutor;
	}

	/** (非 Javadoc) 
	* <p>Title: run</p> 
	* <p>Description: </p>  
	* @see java.lang.Runnable#run() 
	*/
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while (true) {
			if (historyDatabaseRunFlag) {
				// 日数据
				Object dailyData = null;
				dailyData = JedisUtils.brpop(Constant.HISTORY_DAILY_QUEUE, Constant.REDIS_TIMEOUT);
				if (null != dailyData) {
					historyDatabaseExecutor.saveDailyData(dailyData);
				}
			}
		}

	}

}
