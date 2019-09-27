use yddata;
GO
--   '-------Create table NB水表日数据结构表(nb_daily_data_200808) on yddata-------'
-- 标记开始
if not exists (select * from sysobjects where name = 'nb_daily_data_200808')
begin
create table nb_daily_data_200808
(
    rtu_id				int				not null,				/*终端编号*/
		mp_id					smallint	not null,				/*测量点编号*/
		ymd						int				not null,				/*数据日期*/
		hms						int				not null,				/*数据时间*/

		total_flow 					DECIMAL(10,3) 	null,			/*当前累计流量 m3*/
		total_positive_flow DECIMAL(10,3) 	null,			/*当前正向累计流量 m3*/
		total_negative_flow DECIMAL(10,3) 	null,			/*当前反向累计流量 m3*/
		daily_positive_flow DECIMAL(10,3) 	null,		  /*日结正累积流量*/
		daily_negative_flow DECIMAL(10,3) 	null,		  /*日结反向累积流量*/
		daily_max_velocity  DECIMAL(10,3) 	null,	  	/*当日最大流速 m3*/
		daily_max_velocity_time  datetime 	null,	  	/*当日最大流速发生时间*/

		battery_voltage 		DECIMAL(4,2) 	null,			/*当前电池电压*/
		valve_status				tinyint				null,			/*阀门状态 0：开阀 1：关阀*/
		CONSTRAINT pk_nb_daily_data_200808 PRIMARY KEY (rtu_id,mp_id,ymd,hms)				

)
 create unique index  uk_nb_daily_data_200808
	on nb_daily_data_200808(rtu_id,mp_id,ymd,hms,report_type)  
	create index  idx_nb_daily_data_200808
	on nb_daily_data_200808(rtu_id,mp_id,ymd)  
end
go
-- 标记结束


--   '-------Create table NB水表日数据结构表(nb_instantaneous_200808) on yddata-------'
-- 标记开始
if not exists (select * from sysobjects where name = 'nb_instantaneous_200808')
begin
create table nb_instantaneous_200808
(
    rtu_id				int				not null,				/*终端编号*/
		mp_id					smallint	not null,				/*测量点编号*/
		ymd						int				not null,				/*数据日期*/
		hms						int				not null,				/*数据时间*/

		total_flow 					DECIMAL(10,3) null,			/*累计流量*/
	
		CONSTRAINT pk_nb_instantaneous_200808 PRIMARY KEY (rtu_id,mp_id,ymd,hms)				
)
 create unique index  uk_nb_instantaneous_200808
	on nb_instantaneous_200808(rtu_id,mp_id,ymd,hms)  
end
go
-- 标记结束


--   '-------Create table NB任务命令结构表(nb_command_200808) on yddata-------'
-- 标记开始
if not exists (select * from sysobjects where name = 'nb_command_200808')
begin
create table nb_command_200808
(
    rtu_id				int				not null,				/*终端编号*/
		mp_id					smallint	not null,				/*测量点编号*/
		send_time			datetime 	not null DEFAULT GETDATE(),		/*命令发送日期*/

		command_class		tinyint			 not null,								/*命令类别 0：批量命令 1:单个命令*/
		command_type		tinyint			 not null,								/*命令类型 下发参数  补招数据 */
		command_id		 	varchar(64)  		 null,								/*命令ID*/
		execute_result 	tinyint      		 null,    						/*执行结果  命令发送:1 命令交付:2 命令超时:4 命令成功:3 命令失败:5*/
		report_time    	datetime     		 null,    						/*上报时间*/
		command_content varchar(max) not null,								/*命令内容*/
		operator_id 		int 				 not null,								/*操作员编号*/
	  
	  CONSTRAINT pk_nb_command_200808 PRIMARY KEY (rtu_id,mp_id,send_time,command_type)					
)
 create unique index  uk_nb_command_200808 on nb_command_200808(command_id)  
end
go
-- 标记结束