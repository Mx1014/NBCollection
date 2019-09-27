use yddata;
GO
--   '-------Create table NBˮ�������ݽṹ��(nb_daily_data_200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'nb_daily_data_200808')
begin
create table nb_daily_data_200808
(
    rtu_id				int				not null,				/*�ն˱��*/
		mp_id					smallint	not null,				/*��������*/
		ymd						int				not null,				/*��������*/
		hms						int				not null,				/*����ʱ��*/

		total_flow 					DECIMAL(10,3) 	null,			/*��ǰ�ۼ����� m3*/
		total_positive_flow DECIMAL(10,3) 	null,			/*��ǰ�����ۼ����� m3*/
		total_negative_flow DECIMAL(10,3) 	null,			/*��ǰ�����ۼ����� m3*/
		daily_positive_flow DECIMAL(10,3) 	null,		  /*�ս����ۻ�����*/
		daily_negative_flow DECIMAL(10,3) 	null,		  /*�սᷴ���ۻ�����*/
		daily_max_velocity  DECIMAL(10,3) 	null,	  	/*����������� m3*/
		daily_max_velocity_time  datetime 	null,	  	/*����������ٷ���ʱ��*/

		battery_voltage 		DECIMAL(4,2) 	null,			/*��ǰ��ص�ѹ*/
		valve_status				tinyint				null,			/*����״̬ 0������ 1���ط�*/
		CONSTRAINT pk_nb_daily_data_200808 PRIMARY KEY (rtu_id,mp_id,ymd,hms)				

)
 create unique index  uk_nb_daily_data_200808
	on nb_daily_data_200808(rtu_id,mp_id,ymd,hms,report_type)  
	create index  idx_nb_daily_data_200808
	on nb_daily_data_200808(rtu_id,mp_id,ymd)  
end
go
-- ��ǽ���


--   '-------Create table NBˮ�������ݽṹ��(nb_instantaneous_200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'nb_instantaneous_200808')
begin
create table nb_instantaneous_200808
(
    rtu_id				int				not null,				/*�ն˱��*/
		mp_id					smallint	not null,				/*��������*/
		ymd						int				not null,				/*��������*/
		hms						int				not null,				/*����ʱ��*/

		total_flow 					DECIMAL(10,3) null,			/*�ۼ�����*/
	
		CONSTRAINT pk_nb_instantaneous_200808 PRIMARY KEY (rtu_id,mp_id,ymd,hms)				
)
 create unique index  uk_nb_instantaneous_200808
	on nb_instantaneous_200808(rtu_id,mp_id,ymd,hms)  
end
go
-- ��ǽ���


--   '-------Create table NB��������ṹ��(nb_command_200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'nb_command_200808')
begin
create table nb_command_200808
(
    rtu_id				int				not null,				/*�ն˱��*/
		mp_id					smallint	not null,				/*��������*/
		send_time			datetime 	not null DEFAULT GETDATE(),		/*���������*/

		command_class		tinyint			 not null,								/*������� 0���������� 1:��������*/
		command_type		tinyint			 not null,								/*�������� �·�����  �������� */
		command_id		 	varchar(64)  		 null,								/*����ID*/
		execute_result 	tinyint      		 null,    						/*ִ�н��  �����:1 �����:2 ���ʱ:4 ����ɹ�:3 ����ʧ��:5*/
		report_time    	datetime     		 null,    						/*�ϱ�ʱ��*/
		command_content varchar(max) not null,								/*��������*/
		operator_id 		int 				 not null,								/*����Ա���*/
	  
	  CONSTRAINT pk_nb_command_200808 PRIMARY KEY (rtu_id,mp_id,send_time,command_type)					
)
 create unique index  uk_nb_command_200808 on nb_command_200808(command_id)  
end
go
-- ��ǽ���