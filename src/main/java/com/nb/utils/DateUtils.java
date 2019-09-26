/**   
* @Title: DateUtils.java 
* @Package com.pile.util 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2018年4月21日 上午9:28:00 
* @version V1.0   
*/
package com.nb.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * @ClassName: DateUtils
 * @Description: 日期工具类
 * @author dbr
 * @date 2018年4月21日 上午9:28:00
 * 
 */
public class DateUtils {

	public static String FILE_NAME = "MMddHHmmssSSS";
	public static String DEFAULT_PATTERN = "yyyy-MM-dd";
	public static String DIR_PATTERN = "yyyy/MM/dd/";
	public static String TIMESTAMP_PATTERN = "yyyy-MM-dd HH:mm:ss";
	public static String TIMES_PATTERN = "HH:mm:ss";
	public static String NOCHAR_PATTERN = "yyyyMMdd HHmmss";
	public static String DATE_PATTERN = "yyyyMMdd";
	public static String TIME_PATTERN = "HHmmss";
	public static String UTC_PATTERN = "yyyyMMdd'T'HHmmss'Z'";
	public static String NOSEPARATOR_PATTERN = "YYYYMMDDhhmmss";
	
	/**
	 * 获取当前时间戳
	 *
	 * @param date
	 *
	 * @return
	 */
	public static String formatDefaultFileName() {
		return formatDateByFormat(new Date(), FILE_NAME);
	}

	/**
	 * 日期转换为字符串
	 * @param date  日期
	 * @param format 日期格式
	 * @return 指定格式的日期字符串
	 */
	public static String formatDateByFormat(Date date, String format) {
		String result = "";
		if (date != null) {
			try {
				SimpleDateFormat sdf = new SimpleDateFormat(format);
				result = sdf.format(date);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}

	/**
	 * 转换为默认格式(yyyy-MM-dd)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatDefaultDate(Date date) {
		return formatDateByFormat(date, DEFAULT_PATTERN);
	}

	/**
	 * 转换为目录格式(yyyy/MM/dd/)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatDirDate(Date date) {
		return formatDateByFormat(date, DIR_PATTERN);
	}

	/**
	 * 转换为完整格式(yyyy-MM-dd HH:mm:ss)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatTimesTampDate(Date date) {
		return formatDateByFormat(date, TIMESTAMP_PATTERN);
	}

	/**
	 * 转换为时分秒格式(HH:mm:ss)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatTimesDate(Date date) {
		return formatDateByFormat(date, TIMES_PATTERN);
	}

	/**
	 * 转换为时分秒格式(HH:mm:ss)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatNoCharDate(Date date) {
		return formatDateByFormat(date, NOCHAR_PATTERN);
	}
	
	/**
	 * 转换为时分秒格式(HHmm00)的日期字符串
	 * @param date
	 * @return
	 */
	public static String formatTimePattern(Date date) {
		return formatDateByFormat(date, "HHmm00");
	}

	/**
	 * 转换为时分秒格式(yyyyMMdd)的日期字符串
	 * @param date
	 * @return
	 */
	public static String curDate() {
		Date date = new Date();
		return formatDateByFormat(date, DATE_PATTERN);
	}
	
	/**
	 * 转换为时分秒格式(yyyyMMdd)的日期字符串
	 * @param date
	 * @return
	 */
	public static String curTime() {
		Date date = new Date();
		return formatDateByFormat(date, TIME_PATTERN);
	}

	/**
	 * 日期格式字符串转换为日期对象
	 * @param strDate 日期格式字符串
	 * @param pattern 日期对象
	 * @return
	 */
	public static Date parseDate(String strDate, String pattern) {
		try {
			SimpleDateFormat format = new SimpleDateFormat(pattern);
			Date nowDate = format.parse(strDate);
			return nowDate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 日期格式字符串转换为日期对象
	 * @param strDate 日期格式字符串
	 * @param pattern 日期对象
	 * @return
	 */
	public static String parseDate(Date date, String pattern) {
		try {
			String nowDate = formatDateByFormat(date, pattern);
			return nowDate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 字符串转换为默认格式(yyyy-MM-dd)日期对象
	 * @param date
	 * @return
	 * @throws Exception
	 */
	public static Date parseDefaultDate(String date) {
		return parseDate(date, DEFAULT_PATTERN);
	}

	/**
	 * 字符串转换为完整格式(yyyy-MM-dd HH:mm:ss)日期对象
	 * @param date
	 * @return
	 * @throws Exception
	 */
	public static Date parseTimesTampDate(String date) {
		return parseDate(date, TIMESTAMP_PATTERN);
	}
	
		/** 
	* @Title: parseTimesTampDate 
	* @Description: 讲字符串转成pattern格式的日期
	* @param @param date
	* @param @param pattern
	* @param @return    设定文件 
	* @return Date    返回类型 
	* @throws 
	*/
	public static Date parseTimesTampDate(String date, String pattern) {
		return parseDate(date, pattern);
	}
	
	/** 
	* @Title: parseUTCDate 
	* @Description: 讲字符串转成utc格式的日期
	* @param @param date
	* @param @param pattern
	* @param @return    设定文件 
	* @return Date    返回类型 
	* @throws 
	*/
	public static Date parseUTCDate(String date) {
		return parseDate(date, UTC_PATTERN);
	}

	/**
	 * 获得当前时间
	 * @return
	 */
	public static Date getCurrentDate() {
		Calendar calendar = Calendar.getInstance();
		return calendar.getTime();
	}

	/**
	 * sql Date 转 util Date
	 * @param date java.sql.Date日期
	 * @return java.util.Date
	 */
	public static Date parseUtilDate(java.sql.Date date) {
		return date;
	}

	/**
	 * util Date 转 sql Date
	 * @param date java.sql.Date日期
	 * @return
	 */
	public static java.sql.Date parseSqlDate(Date date) {
		return new java.sql.Date(date.getTime());
	}

	/**
	 * 获取年份
	 * @param date
	 * @return
	 */
	public static int getYear(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.YEAR);
	}

	/**
	 * 获取月份
	 * @param date
	 * @return
	 */
	public static int getMonth(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.MONTH) + 1;
	}

	/**
	 * 获取星期
	 * @param date
	 * @return
	 */
	public static int getWeek(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		int dayOfWeek = c.get(Calendar.DAY_OF_WEEK);
		dayOfWeek = dayOfWeek - 1;
		if (dayOfWeek == 0) {
			dayOfWeek = 7;
		}
		return dayOfWeek;
	}

	/**
	 * 获取日期(多少号)
	 * @param date
	 * @return
	 */
	public static int getDay(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.DAY_OF_MONTH);
	}

	/**
	 * 获取当前时间(小时)
	 * @param date
	 * @return
	 */
	public static int getHour(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.HOUR_OF_DAY);
	}

	/**
	 * 获取当前时间(分)
	 * @param date
	 * @return
	 */
	public static int getMinute(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.MINUTE);
	}

	/**
	 * 获取当前时间(秒)
	 * @param date
	 * @return
	 */
	public static int getSecond(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.get(Calendar.SECOND);
	}

	/**
	 * 获取当前毫秒
	 * @param date
	 * @return
	 */
	public static long getMillis(Date date) {
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c.getTimeInMillis();
	}

	/**
	 * 日期增加
	 * @param date   Date
	 * @param day    int
	 * @return Date
	 */
	public static Date addDate(Date date, int day) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.DAY_OF_YEAR, day);
		return c.getTime();
	}

	/**
	 * 日期相减(返回天数)
	 * @param date   Date
	 * @param date1  Date
	 * @return int 相差的天数
	 */
	public static int diffDate(Date date, Date date1) {
		return (int) ((getMillis(date) - getMillis(date1)) / (24 * 3600 * 1000));
	}

	/**
	 * 日期相减(返回秒值)
	 * @param date   Date
	 * @param date1  Date
	 * @return int
	 * @author
	 */
	public static Long diffDateTime(Date date, Date date1) {
		return (Long) ((getMillis(date) - getMillis(date1)) / 1000);
	}

	private static String[] randomValues = new String[] { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b",
			"c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "u", "t", "s", "o", "x", "v", "p", "q", "r",
			"w", "y", "z" };

	public static String getRandomNumber(int lenght) {
		StringBuffer str = new StringBuffer();
		for (int i = 0; i < lenght; i++) {
			Double number = Math.random() * (randomValues.length - 1);
			str.append(randomValues[number.intValue()]);
		}
		return str.toString();
	}
	
	/**
	 * 将字符串的日期转成整数
	 * 
	 * @example1 YMDtoInt("2016年07月07日 ", 0)->20160707
	 * @example2 YMDtoInt("2016-07-07", 1)->20160707
	 * @param date
	 *            {传入字符串日期date}
	 * @param type
	 *            {传入转换类型type}
	 * @return 返回整型的年月日
	 **/
	public static String ymdToInt(String date, int type) {
		if (type == 0) {
			return date.replace("年", "").replace("月", "").replace("日", "");
		} else {
			return date.replace("-", "").replace("-", "").replace("-", "");
		}
	}

	/**
	 * 将Object格式化为日期格式“YYYY年MM月DD日”
	 * 
	 * @example1 FormatToYMD("20160707")->2016年07月07日
	 * @example2 FormatToYMD("201607")->2016年07月
	 * @param obj
	 *            {传入Object类型日期}
	 * @return 返回字符串型的年月日
	 */
	public static String formatToYMD(Object obj) {
		if (obj == null) {
			return "";
		}
		String strdate = obj.toString().trim();
		if (!strdate.isEmpty()) {
			if (strdate.length() == Constant.EIGHT) {
				strdate = strdate.substring(0, 4) + "年" + strdate.substring(4, 6) + "月" + strdate.substring(6, 8) + "日";
				return strdate;
			} else if (strdate.length() == Constant.SIX) {
				strdate = strdate.substring(0, 4) + "年" + strdate.substring(4, 6) + "月";
				return strdate;
			} else if (strdate.length() == Constant.FOUR) {
				strdate = strdate.substring(0, 4) + "年";
				return strdate;
			} else {
				return "";
			}
		} else {
			return "";
		}
	}

	/**
	 * 将Object格式化为日期格式“YYYY-MM-DD”
	 * 
	 * @example1 FormatToYMD("20160707", "day")->2016-07-07
	 * @example2 FormatToYMD("201607", "month")->1970-01
	 * @param obj
	 *            {传入Object类型日期}
	 * @param type
	 *            {传入转换的日期格式 type="day" or "month"}
	 * @return 返回字符串型的YYYY-MM-DD
	 */
	public static String formatToYMD(Object obj, String type) {
		String rtnStr = null;
		if (Constant.DAY.equals(type)) {
			rtnStr = "1970-01-01";
		} else if (Constant.MONTH.equals(type)) {
			rtnStr = "1970-01";
		} else {
			return "";
		}

		if (obj == null) {
			return rtnStr;
		}
		String strdate = obj.toString().trim();
		if (!strdate.isEmpty()) {
			if (strdate.length() == Constant.EIGHT) {
				if (Constant.DAY.equals(type)) {
					strdate = strdate.substring(0, 4) + "-" + strdate.substring(4, 6) + "-" + strdate.substring(6, 8);
				} else if (Constant.MONTH.equals(type)) {
					strdate = strdate.substring(0, 4) + "-" + strdate.substring(4, 6);
				}
				return strdate;
			} else {
				return rtnStr;
			}
		} else {
			return rtnStr;
		}
	}

	/**
	 * 将Object格式化为日期格式“YYYY年MM月DD日” (8位日期为有效,否则为"")
	 * 
	 * @example1 intToYMD("20160707")->2016年07月07日
	 * @example2 intToYMD("201607")->""
	 * @param date
	 *            {传入Object类型日期}
	 * @return 返回字符串型的年月日
	 */
	public static String intToYMD(Object date) {
		String formatYMD = "";
		if (date == null) {
			return formatYMD;
		}
		String dateStr = date.toString();
		if (dateStr.length() == Constant.EIGHT) {
			formatYMD = dateStr.substring(0, 4) + "年" + dateStr.substring(4, 6) + "月" + dateStr.substring(6, 8) + "日";
		}

		return formatYMD;
	}

	/**
	 * 将Object格式化为日期格式"DD日hh时mm分",检查object不为空且长度6位时，格式化；否则：返回""
	 * 
	 * @example1 FormatToDHM(111204)->"11日12时04分"
	 * @example2 FormatToDHM(91204)->"09日12时04分"
	 * @param obj
	 *            {传入Object类型的时间}
	 * @return 返回字符串型的时间
	 */
	public static String formatToDHM(Object obj) {
		String strdate = "";
		if (obj != null) {
			strdate = obj.toString().trim();
			if (!strdate.isEmpty()) {
				if (strdate.length() == Constant.SIX) {
					strdate = strdate.substring(0, 2) + "日" + strdate.substring(2, 4) + "时" + strdate.substring(4, 6)
							+ "分";
				} else if (strdate.length() == Constant.FIVE) {
					strdate = "0" + strdate.substring(0, 1) + "日" + strdate.substring(1, 3) + "时"
							+ strdate.substring(3, 5) + "分";
				}
			}
		}
		return strdate;
	}

	/**
	 * 将Object格式化为日期格式"YYYY年MM月",检查object不为空且长度6位以上时（6位YYYYMM或8位YYYYMMDD），格式化;否则：返回""
	 * 
	 * @example1 FormatToYM(20160711)->"2016年07月"
	 * @example2 FormatToYM(160711)->""
	 * @param obj
	 *            {传入Object类型的时间}
	 * @return 返回字符串型的时间
	 */
	public static String formatToYM(Object obj) {
		String strdate = obj.toString().trim();
		if (!strdate.isEmpty()) {
			if (strdate.length() >= Constant.SIX) {
				strdate = strdate.substring(0, 4) + "年" + strdate.substring(4, 6) + "月";
				return strdate;
			} else {
				return "";
			}
		} else {
			return "";
		}
	}
	
	/** 
	* @Title: stampToDate 
	* @Description: 将时间戳转换为时间
	* @param @param s
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String stampToDate(long s) {
		String res = "";
		try {
			long lt = new Long(s);
			Date date = new Date(lt);
			res = formatTimesTampDate(date);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return res;
	}

	/** 
	* @Title: stampToNoCharDate 
	* @Description: 将时间戳转换为时间
	* @param @param s
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String stampToNoCharDate(long s) {
		String res = "";
		try {
			long lt = new Long(s);
			Date date = new Date(lt);
			res = formatNoCharDate(date);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return res;
	}
	
	/** 
	* @Title: utcToLocal 
	* @Description:  utc时间转成local时间
	* @param @param utcTime
	* @param @return    设定文件 
	* @return Date    返回类型 
	* @throws 
	*/
	public static Date utcToLocal(String utcTime, String datePattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(datePattern);
		sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
		Date utcDate = null;
		try {
			utcDate = sdf.parse(utcTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		sdf.setTimeZone(TimeZone.getDefault());
		Date locatlDate = null;
		String localTime = sdf.format(utcDate.getTime());
		try {
			locatlDate = sdf.parse(localTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return locatlDate;
	}
	/** 
	* @Title: localToUTC 
	* @Description: 时间转换成UTC时间
	* @param @param localTime
	* @param @return    设定文件 
	* @return Date    返回类型 
	* @throws 
	*/
	public static Date localToUTC(String localTime, String datePattern) {
		SimpleDateFormat sdf = new SimpleDateFormat(datePattern);
		Date localDate = null;
		try {
			localDate = sdf.parse(localTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		long localTimeInMillis = localDate.getTime();
		/** long时间转换成Calendar */
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(localTimeInMillis);
		/** 取得时间偏移量 */
		int zoneOffset = calendar.get(java.util.Calendar.ZONE_OFFSET);
		/** 取得夏令时差 */
		int dstOffset = calendar.get(java.util.Calendar.DST_OFFSET);
		/** 从本地时间里扣除这些差量，即可以取得UTC时间 */
		calendar.add(java.util.Calendar.MILLISECOND, -(zoneOffset + dstOffset));
		/** 取得的时间就是UTC标准时间 */
		Date utcDate = new Date(calendar.getTimeInMillis());
		return utcDate;
	}
    
}
