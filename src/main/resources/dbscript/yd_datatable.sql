use yddata 
go

--   '-------Create table ������ӱ�����ݱ�(JMinBDDL200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMinBDDL200808')
begin
create table JMinBDDL200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	bd_zy				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zw				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	dl_zy				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zw				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw				decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/
	dl_source		tinyint					DEFAULT 0
)
grant select on  JMinBDDL200808 to public
create unique clustered index JMinBDDL200808index1
	on JMinBDDL200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table �������˲ʱ�����ݱ�(JMinSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMinSsl200808')
begin
create table JMinSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*A��*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B��*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*C��*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*A��*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*B��*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*C��*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
	p				decimal(14, 3) 	DEFAULT 0.0 ,	/*���й�*/
	pa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A���й�*/
	pb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B���й�*/
	pc			decimal(14, 3) 	DEFAULT 0.0 ,	/*C���й�*/
	q				decimal(14, 3) 	DEFAULT 0.0 ,	/*���޹�*/
	qa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A���޹�*/
	qb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B���޹�*/
	qc			decimal(14, 3) 	DEFAULT 0.0 ,	/*C���޹�*/
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
	cs			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 3) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  JMinSsl200808 to public
create unique clustered index JMinSsl200808index1
	on JMinSsl200808(rtu_id,mp_id,date,time)
end
go	
-- ��ǽ���

--   '-------Create table �����ձ�׵������ݱ�(JDayBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JDayBdDl200808')
begin
create table JDayBdDl200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
	
	dl_source	tinyint					DEFAULT 0
)
grant select on  JDayBdDl200808 to public
create unique clustered index JDayBdDl200808index1
	on JDayBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ��������������������ݱ�(JDayMaxXlP200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JDayMaxXlP200808')
begin
create table JDayMaxXlP200808
(
	rtu_id				int			   			not null,
	mp_id					smallint   			not null,
	date					int							not null,
	time					int							not null,
	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/		
	xl_zy_tm			int 						DEFAULT 0 ,		/*�����й�����������ʱ��*/
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_tm			int 						DEFAULT 0 ,		/*�����޹�����������ʱ��*/
	ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/
	ext_p_max_tm	int 						DEFAULT 0  	/*������й����ʷ���ʱ��*/
	)
grant select on  JDayMaxXlP200808 to public
create unique clustered index JDayMaxXlP200808index1
	on JDayMaxXlP200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ������Ԥ����������(JDayYffMoney200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JDayYffMoney200808')
begin
create table JDayYffMoney200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	remain_value			decimal(14, 3) 	DEFAULT 0.0 ,	/*ʣ����*/
	credit_value			decimal(14, 3) 	DEFAULT 0.0 ,	/*��Ƿ���*/
)
grant select on  JDayYffMoney200808 to public
create unique clustered index JDayYffMoney200808index1
	on JDayYffMoney200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���񳭱��ձ�׵������ݱ�(JMRBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMRBdDl200808')
begin
create table JMRBdDl200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
	
	dl_source	tinyint					DEFAULT 0

)
grant select on  JMRBdDl200808 to public
create unique clustered index JMRBdDl200808index1
	on JMRBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table �����±�׵������ݱ�(JMonBdDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMonBdDl2008')
begin
create table JMonBdDl2008
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
	
	dl_source	tinyint					DEFAULT 0

)
grant select on  JMonBdDl2008 to public
create unique clustered index JMonBdDl2008index1
	on JMonBdDl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ��������������������ݱ�(JMonMaxXlP2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMonMaxXlP2008')
begin
create table JMonMaxXlP2008
(
	rtu_id				int			   			not null,
	mp_id					smallint   			not null,
	date					int							not null,
	time					int							not null,
	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/		
	xl_zy_tm			int 						DEFAULT 0 ,		/*�����й�����������ʱ��*/
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_tm			int 						DEFAULT 0 ,		/*�����޹�����������ʱ��*/
	ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/
	ext_p_max_tm	int 						DEFAULT 0 		/*������й����ʷ���ʱ��*/
	)
grant select on  JMonMaxXlP2008 to public
create unique clustered index JMonMaxXlP2008index1
	on JMonMaxXlP2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

----------------------����Ӧ�ý���--------------------------------------------


----------------------���վӦ�ÿ�ʼ--------------------------------------------
--   '-------Create table ���վʵʱ������ݱ�(BRealBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BRealBD200808')
begin
create table BRealBD200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 4) 	DEFAULT 0.0 	/*�������޹����*/
	
)
grant select on  BRealBD200808 to public
create unique clustered index BRealBD200808index1
	on BRealBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վʵʱ˲ʱ�����ݱ�(BRealSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BRealSsl200808')
begin
create table BRealSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 4) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 4) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 4) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 4) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 4) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 4) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 4) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 4) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  BRealSsl200808 to public
create unique clustered index BRealSsl200808index1
	on BRealSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ���ӱ�׵������ݱ�(BMinBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinBdDl200808')
begin
create table BMinBdDl200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 4) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  BMinBdDl200808 to public
create unique clustered index BMinBdDl200808index1
	on BMinBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



--   '-------Create table ���վ����˲ʱ�����ݱ�(BMinSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinSsl200808')
begin
create table BMinSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 4) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 4) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 4) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 4) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 4) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 4) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 4) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 4) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 4) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 4) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 4) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  BMinSsl200808 to public
create unique clustered index BMinSsl200808index1
	on BMinSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ�ձ�׵������ݱ�(BDayBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayBdDl200808')
begin
create table BDayBdDl200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 4) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  BDayBdDl200808 to public
create unique clustered index BDayBdDl200808index1
	on BDayBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ���������ݱ�(BDayMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayMaxXl200808')
begin
create table BDayMaxXl200808
(
	rtu_id				int			   			not null,
	mp_id					smallint   			not null,
	date					int							not null,
	time					int							not null,

	xl_zy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
)
grant select on  BDayMaxXl200808 to public
create unique clustered index BDayMaxXl200808index1
	on BDayMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ�յ�ѹ�ϸ������ݱ�(BDayVHg200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayVHg200808')
begin
create table BDayVHg200808
(
		rtu_id					int 		 not null,
		mp_id						smallint not null,
		date						int			 not null,
		time						int			 not null,

		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/			
)
grant select on  BDayVHg200808 to public
create unique clustered index BDayVHg200808index1
	on BDayVHg200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ�����ձ�׵������ݱ�(BMRBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMRBdDl200808')
begin
create table BMRBdDl200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 4) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
	
)
grant select on  BMRBdDl200808 to public
create unique clustered index BMRBdDl200808index1
	on BMRBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ�±�׵������ݱ�(BMonBdDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonBdDl2008')
begin
create table BMonBdDl2008
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 4) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 4) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  BMonBdDl2008 to public
create unique clustered index BMonBdDl2008index1
	on BMonBdDl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ���������ݱ�(BMonMaxXl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonMaxXl2008')
begin
create table BMonMaxXl2008
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/
	xl_zy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_fw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
)
grant select on  BMonMaxXl2008 to public
create unique clustered index BMonMaxXl2008index1
	on BMonMaxXl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ�µ�ѹ�ϸ������ݱ�(BMonVHg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonVHg2008')
begin
create table BMonVHg2008
(
		rtu_id					int 		 not null,
		mp_id						smallint not null,
		date						int			 not null,
		time						int			 not null,

		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/	
)
grant select on  BMonVHg2008 to public
create unique clustered index BMonVHg2008index1
	on BMonVHg2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--̫��IEC104�ӿ���2015.12
--   '-------Create table ���վ����״̬�����ݱ�(BMinStat200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinStat200808')
begin
create table BMinStat200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	yx01    tinyint				      null,
	yx02    tinyint				      null,
	yx03    tinyint				      null,
	yx04    tinyint				      null,
	yx05    tinyint				      null,
	yx06    tinyint				      null,
	yx07    tinyint				      null,
	yx08    tinyint				      null,
	yx09    tinyint				      null,
	yx10    tinyint				      null,
	yx11    tinyint				      null,
	yx12    tinyint				      null,
	yx13    tinyint				      null,
	yx14    tinyint				      null,
	yx15    tinyint				      null,
	yx16    tinyint				      null,
	yx17    tinyint				      null,
	yx18    tinyint				      null,
	yx19    tinyint				      null,
	yx20    tinyint				      null,
)
grant select on  BMinStat200808 to public
create unique clustered index BMinStat200808index1
	on BMinStat200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

----------------------���վӦ�ý���--------------------------------------------

----------------------ר�����Ӧ�ÿ�ʼ--------------------------------------------
--   '-------Create table ר�����ʵʱ������ݱ�(ZRealBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZRealBD200808')
begin
create table ZRealBD200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 	/*�������޹����*/
	
)
grant select on  ZRealBD200808 to public
create unique clustered index ZRealBD200808index1
	on ZRealBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����ʵʱ˲ʱ�����ݱ�(ZRealSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZRealSsl200808')
begin
create table ZRealSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 3) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  ZRealSsl200808 to public
create unique clustered index ZRealSsl200808index1
	on ZRealSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ר�������ӱ�׵������ݱ�(ZMinBDDL200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinBDDL200808')
begin
create table ZMinBDDL200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/		
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	

	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_source	tinyint					DEFAULT 0
)
grant select on  ZMinBDDL200808 to public
create unique clustered index ZMinBDDL200808index1
	on ZMinBDDL200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר��������˲ʱ�����ݱ�(ZMinSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinSsl200808')
begin
create table ZMinSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 3) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  ZMinSsl200808 to public
create unique clustered index ZMinSsl200808index1
	on ZMinSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ר������ձ�׵������ݱ�(ZDayBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayBdDl200808')
begin
create table ZDayBdDl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  ZDayBdDl200808 to public
create unique clustered index ZDayBdDl200808index1
	on ZDayBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר��������������ݱ�(ZDayMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayMaxXl200808')
begin
create table ZDayMaxXl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/		
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  ZDayMaxXl200808 to public
create unique clustered index ZDayMaxXl200808index1
	on ZDayMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������յ�ѹ�ϸ������ݱ�(ZDayVHg200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayVHg200808')
begin
create table ZDayVHg200808
(
		rtu_id					int 		 not null,
		mp_id						smallint not null,
		date						int			 not null,
		time						int			 not null,

		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/	
)
grant select on  ZDayVHg200808 to public
create unique clustered index ZDayVHg200808index1
	on ZDayVHg200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������յ���Խ�����ݱ�(ZDayILmt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayILmt200808')
begin
create table ZDayILmt200808
(
		rtu_id					int  			not null,
		mp_id						smallint 	not null,
		date						int				not null,
		time						int				not null,

		lmt_ia_hh_tm		int				DEFAULT 0 ,			/*A�����Խ�������ۼ�ʱ��*/
		lmt_ia_h_tm			int				DEFAULT 0 ,			/*A�����Խ�����ۼ�ʱ��*/
		lmt_ib_hh_tm		int				DEFAULT 0 ,			/*B�����Խ�������ۼ�ʱ��*/
		lmt_ib_h_tm			int				DEFAULT 0 ,			/*B�����Խ�����ۼ�ʱ��*/
		lmt_ic_hh_tm		int				DEFAULT 0 ,			/*C�����Խ�������ۼ�ʱ��*/
		lmt_ic_h_tm			int				DEFAULT 0 ,			/*C�����Խ�����ۼ�ʱ��*/
		lmt_i0_h_tm			int				DEFAULT 0 ,			/*�������Խ�����ۼ�ʱ��*/
		lmt_ia_max			decimal(14, 3)DEFAULT 0.0,/*A��������ֵ*/
		lmt_ia_max_tm		int				DEFAULT 0 ,			/*A��������ֵ����ʱ��*/
		lmt_ib_max			decimal(14, 3)DEFAULT 0.0,/*B��������ֵ*/
		lmt_ib_max_tm		int				DEFAULT 0 ,			/*B��������ֵ����ʱ��*/
		lmt_ic_max			decimal(14, 3)DEFAULT 0.0,/*C��������ֵ*/
		lmt_ic_max_tm		int				DEFAULT 0 ,			/*C��������ֵ����ʱ��*/
		lmt_i0_max			decimal(14, 3)DEFAULT 0.0,/*����������ֵ*/
		lmt_i0_max_tm		int				DEFAULT 0 			/*����������ֵ����ʱ��*/
)
grant select on  ZDayILmt200808 to public
create unique clustered index ZDayILmt200808index1
	on ZDayILmt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������ն���ͳ�����ݱ�(ZDayDX200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayDX200808')
begin
create table ZDayDX200808
(
		rtu_id		int 			not null,
		mp_id			smallint	not null,
		date			int				not null,
		time			int				not null,
	
		dx_tms		int				DEFAULT 0 ,		/*�ܶ������*/
		dx_a_tms	int				DEFAULT 0 ,		/*A��������*/
		dx_b_tms	int				DEFAULT 0 ,		/*B��������*/
		dx_c_tms	int				DEFAULT 0 ,		/*C��������*/
		dx_tm			int				DEFAULT 0 ,		/*�����ۼ�ʱ��*/
		dx_a_tm		int				DEFAULT 0 ,		/*A�����ۼ�ʱ��*/
		dx_b_tm		int				DEFAULT 0 ,		/*B�����ۼ�ʱ��*/
		dx_c_tm		int				DEFAULT 0 ,		/*C�����ۼ�ʱ��*/
		dx_1_s_tm	int				DEFAULT 0 ,		/*���һ�ζ�����ʼʱ��*/
		dx_a_s_tm	int				DEFAULT 0 ,		/*A�����������ʼʱ��*/
		dx_b_s_tm	int				DEFAULT 0 ,		/*B�����������ʼʱ��*/
		dx_c_s_tm	int				DEFAULT 0 ,		/*C�����������ʼʱ��*/
		dx_1_e_tm	int				DEFAULT 0 ,		/*���һ�ζ������ʱ��*/
		dx_a_e_tm	int				DEFAULT 0 ,		/*A������������ʱ��*/
		dx_b_e_tm	int				DEFAULT 0 ,		/*B������������ʱ��*/
		dx_c_e_tm	int				DEFAULT 0 ,		/*C������������ʱ��*/

)
grant select on  ZDayDX200808 to public
create unique clustered index ZDayDX200808index1
	on ZDayDX200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������չ��ʼ�ֵ���ݱ�(ZDayPMax200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayPMax200808')
begin
create table ZDayPMax200808
(
		rtu_id				int	   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/

)
grant select on  ZDayPMax200808 to public
create unique clustered index ZDayPMax200808index1
	on ZDayPMax200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������յ�����ƽ�����ݱ�(ZDayIBal200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayIBal200808')
begin
create table ZDayIBal200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		bph_i_tm			int							DEFAULT 0 ,			/*������ƽ���Խ���ۼ�ʱ��*/
		bph_v_tm			int							DEFAULT 0 ,			/*��ѹ��ƽ���Խ���ۼ�ʱ��*/ 
		bph_i_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*������ƽ�����ֵ*/
		bph_i_max_tm	int							DEFAULT 0 ,			/*������ƽ�����ֵ����ʱ��*/
		bph_v_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*��ѹ��ƽ�����ֵ*/
		bph_v_max_tm	int							DEFAULT 0			  /*��ѹ��ƽ�����ֵ����ʱ��*/
)
grant select on  ZDayIBal200808 to public
create unique clustered index ZDayIBal200808index1
	on ZDayIBal200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������ո������ݱ�(ZDayLoad200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayLoad200808')
begin
create table ZDayLoad200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		fz_max				decimal(14, 3) 	DEFAULT 0.0,	/*���������ֵ*/	
		fz_max_tm			int							DEFAULT 0 ,		/*���������ֵ����ʱ��*/
		fz_min				decimal(14, 3) 	DEFAULT 0.0,	/*��������Сֵ*/
		fz_min_tm			int							DEFAULT 0 		/*��������Сֵ����ʱ��*/
)
grant select on  ZDayLoad200808 to public
create unique clustered index ZDayLoad200808index1
	on ZDayLoad200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������չ������������ۼ�ʱ��(ZDayCos200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayCos200808')
begin
create table ZDayCos200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		cs_tm_1				int							DEFAULT 0 ,		/*����1�ۼ�ʱ�䣨������������ֵ1��*/
		cs_tm_2				int							DEFAULT 0 ,		/*����2�ۼ�ʱ�䣨��ֵ1�ܹ�����������ֵ2��*/
		cs_tm_3				int							DEFAULT 0 		/*����3�ۼ�ʱ�䣨���������ݶ�ֵ2��*/
)
grant select on  ZDayCos200808 to public
create unique clustered index ZDayCos200808index1
	on ZDayCos200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר����Ԥ����������(ZDayYffMoney200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayYffMoney200808')
begin
create table ZDayYffMoney200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	remain_value			decimal(14, 3) 	DEFAULT 0.0 ,	/*ʣ����*/
	credit_value			decimal(14, 3) 	DEFAULT 0.0 ,	/*��Ƿ���*/
)
grant select on  ZDayYffMoney200808 to public
create unique clustered index ZDayYffMoney200808index1
	on ZDayYffMoney200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר����䳭���ձ�׵������ݱ�(ZMRBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMRBdDl200808')
begin
create table ZMRBdDl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  ZMRBdDl200808 to public
create unique clustered index ZMRBdDl200808index1
	on ZMRBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������±�׵������ݱ�(ZMonBdDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonBdDl2008')
begin
create table ZMonBdDl2008
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  ZMonBdDl2008 to public
create unique clustered index ZMonBdDl2008index1
	on ZMonBdDl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר��������������ݱ�(ZMonMaxXl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonMaxXl2008')
begin
create table ZMonMaxXl2008
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	

	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  ZMonMaxXl2008 to public
create unique clustered index ZMonMaxXl2008index1
	on ZMonMaxXl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������µ�ѹ�ϸ������ݱ�(ZMonVHg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonVHg2008')
begin
create table ZMonVHg2008
(
		rtu_id					int   		not null,
		mp_id						smallint	not null,
		date						int				not null,
		time						int				not null,
	
		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/	
)
grant select on  ZMonVHg2008 to public
create unique clustered index ZMonVHg2008index1
	on ZMonVHg2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������µ���Խ�����ݱ�(ZMonILmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonILmt2008')
begin
create table ZMonILmt2008
(
		rtu_id					int  			not null,
		mp_id						smallint 	not null,
		date						int				not null,
		time						int				not null,

		lmt_ia_hh_tm		int				DEFAULT 0 ,			/*A�����Խ�������ۼ�ʱ��*/
		lmt_ia_h_tm			int				DEFAULT 0 ,			/*A�����Խ�����ۼ�ʱ��*/
		lmt_ib_hh_tm		int				DEFAULT 0 ,			/*B�����Խ�������ۼ�ʱ��*/
		lmt_ib_h_tm			int				DEFAULT 0 ,			/*B�����Խ�����ۼ�ʱ��*/
		lmt_ic_hh_tm		int				DEFAULT 0 ,			/*C�����Խ�������ۼ�ʱ��*/
		lmt_ic_h_tm			int				DEFAULT 0 ,			/*C�����Խ�����ۼ�ʱ��*/
		lmt_i0_h_tm			int				DEFAULT 0 ,			/*�������Խ�����ۼ�ʱ��*/
		lmt_ia_max			decimal(14, 3)DEFAULT 0.0,/*A��������ֵ*/
		lmt_ia_max_tm		int				DEFAULT 0 ,			/*A��������ֵ����ʱ��*/
		lmt_ib_max			decimal(14, 3)DEFAULT 0.0,/*B��������ֵ*/
		lmt_ib_max_tm		int				DEFAULT 0 ,			/*B��������ֵ����ʱ��*/
		lmt_ic_max			decimal(14, 3)DEFAULT 0.0,/*C��������ֵ*/
		lmt_ic_max_tm		int				DEFAULT 0 ,			/*C��������ֵ����ʱ��*/
		lmt_i0_max			decimal(14, 3)DEFAULT 0.0,/*����������ֵ*/
		lmt_i0_max_tm		int				DEFAULT 0 			/*����������ֵ����ʱ��*/
)
grant select on  ZMonILmt2008 to public
create unique clustered index ZMonILmt2008index1
	on ZMonILmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������¶���ͳ�����ݱ�(ZMonDx2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonDx2008')
begin
create table ZMonDx2008
(
		rtu_id		int 			not null,
		mp_id			smallint	not null,
		date			int				not null,
		time			int				not null,
	
		dx_tms		int				DEFAULT 0 ,		/*�ܶ������*/
		dx_a_tms	int				DEFAULT 0 ,		/*A��������*/
		dx_b_tms	int				DEFAULT 0 ,		/*B��������*/
		dx_c_tms	int				DEFAULT 0 ,		/*C��������*/
		dx_tm			int				DEFAULT 0 ,		/*�����ۼ�ʱ��*/
		dx_a_tm		int				DEFAULT 0 ,		/*A�����ۼ�ʱ��*/
		dx_b_tm		int				DEFAULT 0 ,		/*B�����ۼ�ʱ��*/
		dx_c_tm		int				DEFAULT 0 ,		/*C�����ۼ�ʱ��*/
		dx_1_s_tm	int				DEFAULT 0 ,		/*���һ�ζ�����ʼʱ��*/
		dx_a_s_tm	int				DEFAULT 0 ,		/*A�����������ʼʱ��*/
		dx_b_s_tm	int				DEFAULT 0 ,		/*B�����������ʼʱ��*/
		dx_c_s_tm	int				DEFAULT 0 ,		/*C�����������ʼʱ��*/
		dx_1_e_tm	int				DEFAULT 0 ,		/*���һ�ζ������ʱ��*/
		dx_a_e_tm	int				DEFAULT 0 ,		/*A������������ʱ��*/
		dx_b_e_tm	int				DEFAULT 0 ,		/*B������������ʱ��*/
		dx_c_e_tm	int				DEFAULT 0 		/*C������������ʱ��*/
)
grant select on  ZMonDx2008 to public
create unique clustered index ZMonDx2008index1
	on ZMonDx2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������¹��ʼ�ֵ���ݱ�(ZMonPMax2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonPMax2008')
begin
create table ZMonPMax2008
(
		rtu_id				int	   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  ZMonPMax2008 to public
create unique clustered index ZMonPMax2008index1
	on ZMonPMax2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������²�ƽ�����ݱ�(ZMonIBal2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonIBal2008')
begin
create table ZMonIBal2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		bph_i_tm			int							DEFAULT 0 ,			/*������ƽ���Խ���ۼ�ʱ��*/
		bph_v_tm			int							DEFAULT 0 ,			/*��ѹ��ƽ���Խ���ۼ�ʱ��*/ 
		bph_i_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*������ƽ�����ֵ*/
		bph_i_max_tm	int							DEFAULT 0 ,			/*������ƽ�����ֵ����ʱ��*/
		bph_v_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*��ѹ��ƽ�����ֵ*/
		bph_v_max_tm	int							DEFAULT 0			  /*��ѹ��ƽ�����ֵ����ʱ��*/
)
grant select on  ZMonIBal2008 to public
create unique clustered index ZMonIBal2008index1
	on ZMonIBal2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������¸������ݱ�(ZMonLoad2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonLoad2008')
begin
create table ZMonLoad2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		fz_max				decimal(14, 3) 	DEFAULT 0.0,	/*���������ֵ*/	
		fz_max_tm			int							DEFAULT 0 ,		/*���������ֵ����ʱ��*/
		fz_min				decimal(14, 3) 	DEFAULT 0.0,	/*��������Сֵ*/
		fz_min_tm			int							DEFAULT 0 		/*��������Сֵ����ʱ��*/
)
grant select on  ZMonLoad2008 to public
create unique clustered index ZMonLoad2008index1
	on ZMonLoad2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������¹������������ۼ�ʱ��(ZMonCos2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonCos2008')
begin
create table ZMonCos2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		cs_tm_1				int							DEFAULT 0 ,		/*����1�ۼ�ʱ�䣨������������ֵ1��*/
		cs_tm_2				int							DEFAULT 0 ,		/*����2�ۼ�ʱ�䣨��ֵ1�ܹ�����������ֵ2��*/
		cs_tm_3				int							DEFAULT 0 		/*����3�ۼ�ʱ�䣨���������ݶ�ֵ2��*/
)
grant select on  ZMonCos2008 to public
create unique clustered index ZMonCos2008index1
	on ZMonCos2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����г���������ݱ�(ZMonXbI2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbI2008')
begin
create table ZMonXbI2008
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_ia_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г���������ֵ*/
		xb_ia_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г���������ֵ*/
		xb_ia_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г���������ֵ*/
		xb_ia_05			    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г���������ֵ*/
		xb_ia_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г���������ֵ*/
		xb_ia_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г���������ֵ*/
		xb_ia_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г���������ֵ*/
		xb_ia_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г���������ֵ*/
		xb_ia_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г���������ֵ*/
		xb_ia_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г���������ֵ*/
		xb_ia_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г���������ֵ*/
		xb_ia_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г���������ֵ*/
		xb_ia_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г���������ֵ*/
		xb_ia_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г���������ֵ*/
		xb_ia_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г���������ֵ*/
		xb_ia_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г���������ֵ*/
		xb_ia_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г���������ֵ*/
		xb_ia_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г���������ֵ*/
		xb_ia_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г���������ֵ*/
		xb_ia_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г���������ֵ*/
		xb_ia							decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
		
		xb_ia_02_tm				int		DEFAULT 0 ,							/*A��2��г���������ֵ����ʱ��*/
		xb_ia_03_tm				int		DEFAULT 0 ,							/*A��3��г���������ֵ����ʱ��*/
		xb_ia_04_tm				int		DEFAULT 0 ,							/*A��4��г���������ֵ����ʱ��*/
		xb_ia_05_tm				int		DEFAULT 0 ,							/*A��5��г���������ֵ����ʱ��*/
		xb_ia_06_tm				int		DEFAULT 0 ,							/*A��6��г���������ֵ����ʱ��*/
		xb_ia_07_tm				int		DEFAULT 0 ,							/*A��7��г���������ֵ����ʱ��*/
		xb_ia_08_tm				int		DEFAULT 0 ,							/*A��8��г���������ֵ����ʱ��*/
		xb_ia_09_tm				int		DEFAULT 0 ,							/*A��9��г���������ֵ����ʱ��*/
		xb_ia_10_tm				int		DEFAULT 0 ,							/*A��10��г���������ֵ����ʱ��*/
		xb_ia_11_tm				int		DEFAULT 0 ,							/*A��11��г���������ֵ����ʱ��*/
		xb_ia_12_tm				int		DEFAULT 0 ,							/*A��12��г���������ֵ����ʱ��*/
		xb_ia_13_tm				int		DEFAULT 0 ,							/*A��13��г���������ֵ����ʱ��*/
		xb_ia_14_tm				int		DEFAULT 0 ,							/*A��14��г���������ֵ����ʱ��*/
		xb_ia_15_tm				int		DEFAULT 0 ,							/*A��15��г���������ֵ����ʱ��*/
		xb_ia_16_tm				int		DEFAULT 0 ,							/*A��16��г���������ֵ����ʱ��*/
		xb_ia_17_tm				int		DEFAULT 0 ,							/*A��17��г���������ֵ����ʱ��*/
		xb_ia_18_tm				int		DEFAULT 0 ,							/*A��18��г���������ֵ����ʱ��*/
		xb_ia_19_tm				int		DEFAULT 0 ,							/*A��19��г���������ֵ����ʱ��*/
		xb_ia_20_tm				int		DEFAULT 0 ,							/*A��20��г���������ֵ����ʱ��*/
		xb_ia_21_tm				int		DEFAULT 0 ,							/*A��21��г���������ֵ����ʱ��*/
		xb_ia_tm					int		DEFAULT 0 ,					 	  /*A���ܻ���������ֵ����ʱ��*/
		
		
		xb_ib_02					decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г���������ֵ*/
		xb_ib_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г���������ֵ*/
		xb_ib_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г���������ֵ*/
		xb_ib_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г���������ֵ*/
		xb_ib_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г���������ֵ*/
		xb_ib_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г���������ֵ*/
		xb_ib_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г���������ֵ*/
		xb_ib_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г���������ֵ*/
		xb_ib_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г���������ֵ*/
		xb_ib_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г���������ֵ*/
		xb_ib_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г���������ֵ*/
		xb_ib_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г���������ֵ*/
		xb_ib_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г���������ֵ*/
		xb_ib_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г���������ֵ*/
		xb_ib_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г���������ֵ*/
		xb_ib_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г���������ֵ*/
		xb_ib_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г���������ֵ*/
		xb_ib_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г���������ֵ*/
		xb_ib_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г���������ֵ*/
		xb_ib_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г���������ֵ*/
		xb_ib							decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_ib_02_tm				int		DEFAULT 0 ,							/*B��2��г���������ֵ����ʱ��*/
		xb_ib_03_tm				int		DEFAULT 0 ,							/*B��3��г���������ֵ����ʱ��*/
		xb_ib_04_tm				int		DEFAULT 0 ,							/*B��4��г���������ֵ����ʱ��*/
		xb_ib_05_tm				int		DEFAULT 0 ,							/*B��5��г���������ֵ����ʱ��*/
		xb_ib_06_tm				int		DEFAULT 0 ,							/*B��6��г���������ֵ����ʱ��*/
		xb_ib_07_tm				int		DEFAULT 0 ,							/*B��7��г���������ֵ����ʱ��*/
		xb_ib_08_tm				int		DEFAULT 0 ,							/*B��8��г���������ֵ����ʱ��*/
		xb_ib_09_tm				int		DEFAULT 0 ,							/*B��9��г���������ֵ����ʱ��*/
		xb_ib_10_tm				int		DEFAULT 0 ,							/*B��10��г���������ֵ����ʱ��*/
		xb_ib_11_tm				int		DEFAULT 0 ,							/*B��11��г���������ֵ����ʱ��*/
		xb_ib_12_tm				int		DEFAULT 0 ,							/*B��12��г���������ֵ����ʱ��*/
		xb_ib_13_tm				int		DEFAULT 0 ,							/*B��13��г���������ֵ����ʱ��*/
		xb_ib_14_tm				int		DEFAULT 0 ,							/*B��14��г���������ֵ����ʱ��*/
		xb_ib_15_tm				int		DEFAULT 0 ,							/*B��15��г���������ֵ����ʱ��*/
		xb_ib_16_tm				int		DEFAULT 0 ,							/*B��16��г���������ֵ����ʱ��*/
		xb_ib_17_tm				int		DEFAULT 0 ,							/*B��17��г���������ֵ����ʱ��*/
		xb_ib_18_tm				int		DEFAULT 0 ,							/*B��18��г���������ֵ����ʱ��*/
		xb_ib_19_tm				int		DEFAULT 0 ,							/*B��19��г���������ֵ����ʱ��*/
		xb_ib_20_tm				int		DEFAULT 0 ,							/*B��20��г���������ֵ����ʱ��*/
		xb_ib_21_tm				int		DEFAULT 0 ,							/*B��21��г���������ֵ����ʱ��*/
		xb_ib_tm					int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_ic_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г���������ֵ*/
		xb_ic_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г���������ֵ*/
		xb_ic_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г���������ֵ*/
		xb_ic_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г���������ֵ*/
		xb_ic_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г���������ֵ*/
		xb_ic_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г���������ֵ*/
		xb_ic_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г���������ֵ*/
		xb_ic_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г���������ֵ*/
		xb_ic_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г���������ֵ*/
		xb_ic_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г���������ֵ*/
		xb_ic_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г���������ֵ*/
		xb_ic_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г���������ֵ*/
		xb_ic_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г���������ֵ*/
		xb_ic_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г���������ֵ*/
		xb_ic_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г���������ֵ*/
		xb_ic_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г���������ֵ*/
		xb_ic_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г���������ֵ*/
		xb_ic_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г���������ֵ*/
		xb_ic_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г���������ֵ*/
		xb_ic_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г���������ֵ*/
		xb_ic							decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_ic_02_tm				int		DEFAULT 0 ,							/*C��2��г���������ֵ����ʱ��*/
		xb_ic_03_tm				int		DEFAULT 0 ,							/*C��3��г���������ֵ����ʱ��*/
		xb_ic_04_tm				int		DEFAULT 0 ,							/*C��4��г���������ֵ����ʱ��*/
		xb_ic_05_tm				int		DEFAULT 0 ,							/*C��5��г���������ֵ����ʱ��*/
		xb_ic_06_tm				int		DEFAULT 0 ,							/*C��6��г���������ֵ����ʱ��*/
		xb_ic_07_tm				int		DEFAULT 0 ,							/*C��7��г���������ֵ����ʱ��*/
		xb_ic_08_tm				int		DEFAULT 0 ,							/*C��8��г���������ֵ����ʱ��*/
		xb_ic_09_tm				int		DEFAULT 0 ,							/*C��9��г���������ֵ����ʱ��*/
		xb_ic_10_tm				int		DEFAULT 0 ,							/*C��10��г���������ֵ����ʱ��*/
		xb_ic_11_tm				int		DEFAULT 0 ,							/*C��11��г���������ֵ����ʱ��*/
		xb_ic_12_tm				int		DEFAULT 0 ,							/*C��12��г���������ֵ����ʱ��*/
		xb_ic_13_tm				int		DEFAULT 0 ,							/*C��13��г���������ֵ����ʱ��*/
		xb_ic_14_tm				int		DEFAULT 0 ,							/*C��14��г���������ֵ����ʱ��*/
		xb_ic_15_tm				int		DEFAULT 0 ,							/*C��15��г���������ֵ����ʱ��*/
		xb_ic_16_tm				int		DEFAULT 0 ,							/*C��16��г���������ֵ����ʱ��*/
		xb_ic_17_tm				int		DEFAULT 0 ,							/*C��17��г���������ֵ����ʱ��*/
		xb_ic_18_tm				int		DEFAULT 0 ,							/*C��18��г���������ֵ����ʱ��*/
		xb_ic_19_tm				int		DEFAULT 0 ,							/*C��19��г���������ֵ����ʱ��*/
		xb_ic_20_tm				int		DEFAULT 0 ,							/*C��20��г���������ֵ����ʱ��*/
		xb_ic_21_tm				int		DEFAULT 0 ,							/*C��21��г���������ֵ����ʱ��*/
		xb_ic_tm					int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/

)
grant select on  ZMonXbI2008 to public
create unique clustered index ZMonXbI2008index1
	on ZMonXbI2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����г����ѹ���ݱ�(ZMonXbU2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbU2008')
begin
create table ZMonXbU2008
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0,	/*A��2��г����ѹ���������ֵ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ���������ֵ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ���������ֵ*/
		xb_va_05		    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ���������ֵ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ���������ֵ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ���������ֵ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ���������ֵ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ���������ֵ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ���������ֵ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ���������ֵ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ���������ֵ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ���������ֵ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ���������ֵ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ���������ֵ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ���������ֵ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ���������ֵ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ���������ֵ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ���������ֵ*/
		xb_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ���������ֵ*/
		xb_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ���������ֵ*/
		xb_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
				
		xb_va_02_tm			int		DEFAULT 0 ,							/*A��2��г����ѹ���������ֵ����ʱ��*/
		xb_va_03_tm			int		DEFAULT 0 ,							/*A��3��г����ѹ���������ֵ����ʱ��*/
		xb_va_04_tm			int		DEFAULT 0 ,							/*A��4��г����ѹ���������ֵ����ʱ��*/
		xb_va_05_tm			int		DEFAULT 0 ,							/*A��5��г����ѹ���������ֵ����ʱ��*/
		xb_va_06_tm			int		DEFAULT 0 ,							/*A��6��г����ѹ���������ֵ����ʱ��*/
		xb_va_07_tm			int		DEFAULT 0 ,							/*A��7��г����ѹ���������ֵ����ʱ��*/
		xb_va_08_tm			int		DEFAULT 0 ,							/*A��8��г����ѹ���������ֵ����ʱ��*/
		xb_va_09_tm			int		DEFAULT 0 ,							/*A��9��г����ѹ���������ֵ����ʱ��*/
		xb_va_10_tm			int		DEFAULT 0 ,							/*A��10��г����ѹ���������ֵ����ʱ��*/
		xb_va_11_tm			int		DEFAULT 0 ,							/*A��11��г����ѹ���������ֵ����ʱ��*/
		xb_va_12_tm			int		DEFAULT 0 ,							/*A��12��г����ѹ���������ֵ����ʱ��*/
		xb_va_13_tm			int		DEFAULT 0 ,							/*A��13��г����ѹ���������ֵ����ʱ��*/
		xb_va_14_tm			int		DEFAULT 0 ,							/*A��14��г����ѹ���������ֵ����ʱ��*/
		xb_va_15_tm			int		DEFAULT 0 ,							/*A��15��г����ѹ���������ֵ����ʱ��*/
		xb_va_16_tm			int		DEFAULT 0 ,							/*A��16��г����ѹ���������ֵ����ʱ��*/
		xb_va_17_tm			int		DEFAULT 0 ,							/*A��17��г����ѹ���������ֵ����ʱ��*/
		xb_va_18_tm			int		DEFAULT 0 ,							/*A��18��г����ѹ���������ֵ����ʱ��*/
		xb_va_19_tm			int		DEFAULT 0 ,							/*A��19��г����ѹ���������ֵ����ʱ��*/
		xb_va_20_tm			int		DEFAULT 0 ,							/*A��20��г����ѹ���������ֵ����ʱ��*/
		xb_va_21tm			int		DEFAULT 0 ,							/*A��21��г����ѹ���������ֵ����ʱ��*/
		xb_va_tm				int		DEFAULT 0 ,					 		/*A���ܻ���������ֵ����ʱ��*/
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г����ѹ���������ֵ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ���������ֵ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ���������ֵ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ���������ֵ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ���������ֵ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ���������ֵ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ���������ֵ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ���������ֵ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ���������ֵ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ���������ֵ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ���������ֵ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ���������ֵ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ���������ֵ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ���������ֵ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ���������ֵ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ���������ֵ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ���������ֵ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ���������ֵ*/
		xb_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ���������ֵ*/
		xb_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ���������ֵ*/
		xb_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_vb_02_tm			int		DEFAULT 0 ,							/*B��2��г����ѹ���������ֵ����ʱ��*/
		xb_vb_03_tm			int		DEFAULT 0 ,							/*B��3��г����ѹ���������ֵ����ʱ��*/
		xb_vb_04_tm			int		DEFAULT 0 ,							/*B��4��г����ѹ���������ֵ����ʱ��*/
		xb_vb_05_tm			int		DEFAULT 0 ,							/*B��5��г����ѹ���������ֵ����ʱ��*/
		xb_vb_06_tm			int		DEFAULT 0 ,							/*B��6��г����ѹ���������ֵ����ʱ��*/
		xb_vb_07_tm			int		DEFAULT 0 ,							/*B��7��г����ѹ���������ֵ����ʱ��*/
		xb_vb_08_tm			int		DEFAULT 0 ,							/*B��8��г����ѹ���������ֵ����ʱ��*/
		xb_vb_09_tm			int		DEFAULT 0 ,							/*B��9��г����ѹ���������ֵ����ʱ��*/
		xb_vb_10_tm			int		DEFAULT 0 ,							/*B��10��г����ѹ���������ֵ����ʱ��*/
		xb_vb_11_tm			int		DEFAULT 0 ,							/*B��11��г����ѹ���������ֵ����ʱ��*/
		xb_vb_12_tm			int		DEFAULT 0 ,							/*B��12��г����ѹ���������ֵ����ʱ��*/
		xb_vb_13_tm			int		DEFAULT 0 ,							/*B��13��г����ѹ���������ֵ����ʱ��*/
		xb_vb_14_tm			int		DEFAULT 0 ,							/*B��14��г����ѹ���������ֵ����ʱ��*/
		xb_vb_15_tm			int		DEFAULT 0 ,							/*B��15��г����ѹ���������ֵ����ʱ��*/
		xb_vb_16_tm			int		DEFAULT 0 ,							/*B��16��г����ѹ���������ֵ����ʱ��*/
		xb_vb_17_tm			int		DEFAULT 0 ,							/*B��17��г����ѹ���������ֵ����ʱ��*/
		xb_vb_18_tm			int		DEFAULT 0 ,							/*B��18��г����ѹ���������ֵ����ʱ��*/
		xb_vb_19_tm			int		DEFAULT 0 ,							/*B��19��г����ѹ���������ֵ����ʱ��*/
		xb_vb_20_tm			int		DEFAULT 0 ,							/*B��20��г����ѹ���������ֵ����ʱ��*/
		xb_vb_21_tm			int		DEFAULT 0 ,							/*B��21��г����ѹ���������ֵ����ʱ��*/
		xb_vb_tm				int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ���������ֵ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ���������ֵ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ���������ֵ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ���������ֵ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ���������ֵ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ���������ֵ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ���������ֵ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ���������ֵ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ���������ֵ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ���������ֵ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ���������ֵ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ���������ֵ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ���������ֵ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ���������ֵ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ���������ֵ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ���������ֵ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ���������ֵ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ���������ֵ*/
		xb_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ���������ֵ*/
		xb_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ���������ֵ*/
		xb_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_vc_02_tm			int		DEFAULT 0 ,							/*C��2��г����ѹ���������ֵ����ʱ��*/
		xb_vc_03_tm			int		DEFAULT 0 ,							/*C��3��г����ѹ���������ֵ����ʱ��*/
		xb_vc_04_tm			int		DEFAULT 0 ,							/*C��4��г����ѹ���������ֵ����ʱ��*/
		xb_vc_05_tm			int		DEFAULT 0 ,							/*C��5��г����ѹ���������ֵ����ʱ��*/
		xb_vc_06_tm			int		DEFAULT 0 ,							/*C��6��г����ѹ���������ֵ����ʱ��*/
		xb_vc_07_tm			int		DEFAULT 0 ,							/*C��7��г����ѹ���������ֵ����ʱ��*/
		xb_vc_08_tm			int		DEFAULT 0 ,							/*C��8��г����ѹ���������ֵ����ʱ��*/
		xb_vc_09_tm			int		DEFAULT 0 ,							/*C��9��г����ѹ���������ֵ����ʱ��*/
		xb_vc_10_tm			int		DEFAULT 0 ,							/*C��10��г����ѹ���������ֵ����ʱ��*/
		xb_vc_11_tm			int		DEFAULT 0 ,							/*C��11��г����ѹ���������ֵ����ʱ��*/
		xb_vc_12_tm			int		DEFAULT 0 ,							/*C��12��г����ѹ���������ֵ����ʱ��*/
		xb_vc_13_tm			int		DEFAULT 0 ,							/*C��13��г����ѹ���������ֵ����ʱ��*/
		xb_vc_14_tm			int		DEFAULT 0 ,							/*C��14��г����ѹ���������ֵ����ʱ��*/
		xb_vc_15_tm			int		DEFAULT 0 ,							/*C��15��г����ѹ���������ֵ����ʱ��*/
		xb_vc_16_tm			int		DEFAULT 0 ,							/*C��16��г����ѹ���������ֵ����ʱ��*/
		xb_vc_17_tm			int		DEFAULT 0 ,							/*C��17��г����ѹ���������ֵ����ʱ��*/
		xb_vc_18_tm			int		DEFAULT 0 ,							/*C��18��г����ѹ���������ֵ����ʱ��*/
		xb_vc_19_tm			int		DEFAULT 0 ,							/*C��19��г����ѹ���������ֵ����ʱ��*/
		xb_vc_20_tm			int		DEFAULT 0 ,							/*C��20��г����ѹ���������ֵ����ʱ��*/
		xb_vc_21_tm			int		DEFAULT 0 ,							/*C��21��г����ѹ���������ֵ����ʱ��*/
		xb_vc_tm				int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/
)
grant select on  ZMonXbU2008 to public
create unique clustered index ZMonXbU2008index1
	on ZMonXbU2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����г��Խ�����ݱ�(ZMonXbLmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbLmt2008')
begin
create table ZMonXbLmt2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		xblmt_va			int		DEFAULT 0 ,			/*A���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_02		int		DEFAULT 0 ,			/*A��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_03		int		DEFAULT 0 ,			/*A��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_04		int		DEFAULT 0 ,			/*A��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_05		int		DEFAULT 0 ,			/*A��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_06		int		DEFAULT 0 ,			/*A��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_07		int		DEFAULT 0 ,			/*A��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_08		int		DEFAULT 0 ,			/*A��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_09		int		DEFAULT 0 ,			/*A��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_10		int		DEFAULT 0 ,			/*A��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_11		int		DEFAULT 0 ,			/*A��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_12		int		DEFAULT 0 ,			/*A��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_13		int		DEFAULT 0 ,			/*A��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_14		int		DEFAULT 0 ,			/*A��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_15		int		DEFAULT 0 ,			/*A��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_16		int		DEFAULT 0 ,			/*A��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_17		int		DEFAULT 0 ,			/*A��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_18		int		DEFAULT 0 ,			/*A��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_19		int		DEFAULT 0 ,			/*A��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_20		int		DEFAULT 0 ,			/*A��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_21		int		DEFAULT 0 ,			/*A��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ia			int		DEFAULT 0 ,			/*A���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ia_02		int		DEFAULT 0 ,			/*A��2��г������Խ���ۼ�ʱ��*/
		xblmt_ia_03		int		DEFAULT 0 ,			/*A��3��г������Խ���ۼ�ʱ��*/
		xblmt_ia_04		int		DEFAULT 0 ,			/*A��4��г������Խ���ۼ�ʱ��*/
		xblmt_ia_05		int		DEFAULT 0 ,			/*A��5��г������Խ���ۼ�ʱ��*/
		xblmt_ia_06		int		DEFAULT 0 ,			/*A��6��г������Խ���ۼ�ʱ��*/
		xblmt_ia_07		int		DEFAULT 0 ,			/*A��7��г������Խ���ۼ�ʱ��*/
		xblmt_ia_08		int		DEFAULT 0 ,			/*A��8��г������Խ���ۼ�ʱ��*/
		xblmt_ia_09		int		DEFAULT 0 ,			/*A��9��г������Խ���ۼ�ʱ��*/
		xblmt_ia_10		int		DEFAULT 0 ,			/*A��10��г������Խ���ۼ�ʱ��*/
		xblmt_ia_11		int		DEFAULT 0 ,			/*A��11��г������Խ���ۼ�ʱ��*/
		xblmt_ia_12		int		DEFAULT 0 ,			/*A��12��г������Խ���ۼ�ʱ��*/
		xblmt_ia_13		int		DEFAULT 0 ,			/*A��13��г������Խ���ۼ�ʱ��*/
		xblmt_ia_14		int		DEFAULT 0 ,			/*A��14��г������Խ���ۼ�ʱ��*/
		xblmt_ia_15		int		DEFAULT 0 ,			/*A��15��г������Խ���ۼ�ʱ��*/
		xblmt_ia_16		int		DEFAULT 0 ,			/*A��16��г������Խ���ۼ�ʱ��*/
		xblmt_ia_17		int		DEFAULT 0 ,			/*A��17��г������Խ���ۼ�ʱ��*/
		xblmt_ia_18		int		DEFAULT 0 ,			/*A��18��г������Խ���ۼ�ʱ��*/
		xblmt_ia_19		int		DEFAULT 0 ,			/*A��19��г������Խ���ۼ�ʱ��*/
		xblmt_ia_20		int		DEFAULT 0 ,			/*A��20��г������Խ���ۼ�ʱ��*/
		xblmt_ia_21		int		DEFAULT 0 ,			/*A��21��г������Խ���ۼ�ʱ��*/
		xblmt_vb			int		DEFAULT 0 ,			/*B���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_02		int		DEFAULT 0 ,			/*B��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_03		int		DEFAULT 0 ,			/*B��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_04		int		DEFAULT 0 ,			/*B��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_05		int		DEFAULT 0 ,			/*B��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_06		int		DEFAULT 0 ,			/*B��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_07		int		DEFAULT 0 ,			/*B��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_08		int		DEFAULT 0 ,			/*B��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_09		int		DEFAULT 0 ,			/*B��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_10		int		DEFAULT 0 ,			/*B��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_11		int		DEFAULT 0 ,			/*B��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_12		int		DEFAULT 0 ,			/*B��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_13		int		DEFAULT 0 ,			/*B��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_14		int		DEFAULT 0 ,			/*B��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_15		int		DEFAULT 0 ,			/*B��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_16		int		DEFAULT 0 ,			/*B��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_17		int		DEFAULT 0 ,			/*B��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_18		int		DEFAULT 0 ,			/*B��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_19		int		DEFAULT 0 ,			/*B��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_20		int		DEFAULT 0 ,			/*B��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_21		int		DEFAULT 0 ,			/*B��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ib			int		DEFAULT 0 ,			/*B���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ib_02		int		DEFAULT 0 ,			/*B��2��г������Խ���ۼ�ʱ��*/
		xblmt_ib_03		int		DEFAULT 0 ,			/*B��3��г������Խ���ۼ�ʱ��*/
		xblmt_ib_04		int		DEFAULT 0 ,			/*B��4��г������Խ���ۼ�ʱ��*/
		xblmt_ib_05		int		DEFAULT 0 ,			/*B��5��г������Խ���ۼ�ʱ��*/
		xblmt_ib_06		int		DEFAULT 0 ,			/*B��6��г������Խ���ۼ�ʱ��*/
		xblmt_ib_07		int		DEFAULT 0 ,			/*B��7��г������Խ���ۼ�ʱ��*/
		xblmt_ib_08		int		DEFAULT 0 ,			/*B��8��г������Խ���ۼ�ʱ��*/
		xblmt_ib_09		int		DEFAULT 0 ,			/*B��9��г������Խ���ۼ�ʱ��*/
		xblmt_ib_10		int		DEFAULT 0 ,			/*B��10��г������Խ���ۼ�ʱ��*/
		xblmt_ib_11		int		DEFAULT 0 ,			/*B��11��г������Խ���ۼ�ʱ��*/
		xblmt_ib_12		int		DEFAULT 0 ,			/*B��12��г������Խ���ۼ�ʱ��*/
		xblmt_ib_13		int		DEFAULT 0 ,			/*B��13��г������Խ���ۼ�ʱ��*/
		xblmt_ib_14		int		DEFAULT 0 ,			/*B��14��г������Խ���ۼ�ʱ��*/
		xblmt_ib_15		int		DEFAULT 0 ,			/*B��15��г������Խ���ۼ�ʱ��*/
		xblmt_ib_16		int		DEFAULT 0 ,			/*B��16��г������Խ���ۼ�ʱ��*/
		xblmt_ib_17		int		DEFAULT 0 ,			/*B��17��г������Խ���ۼ�ʱ��*/
		xblmt_ib_18		int		DEFAULT 0 ,			/*B��18��г������Խ���ۼ�ʱ��*/
		xblmt_ib_19		int		DEFAULT 0 ,			/*B��19��г������Խ���ۼ�ʱ��*/
		xblmt_ib_20		int		DEFAULT 0 ,			/*B��20��г������Խ���ۼ�ʱ��*/
		xblmt_ib_21		int		DEFAULT 0 ,			/*B��21��г������Խ���ۼ�ʱ��*/
		xblmt_vc			int		DEFAULT 0 ,			/*C���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_02		int		DEFAULT 0 ,			/*C��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_03		int		DEFAULT 0 ,			/*C��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_04		int		DEFAULT 0 ,			/*C��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_05		int		DEFAULT 0 ,			/*C��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_06		int		DEFAULT 0 ,			/*C��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_07		int		DEFAULT 0 ,			/*C��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_08		int		DEFAULT 0 ,			/*C��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_09		int		DEFAULT 0 ,			/*C��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_10		int		DEFAULT 0 ,			/*C��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_11		int		DEFAULT 0 ,			/*C��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_12		int		DEFAULT 0 ,			/*C��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_13		int		DEFAULT 0 ,			/*C��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_14		int		DEFAULT 0 ,			/*C��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_15		int		DEFAULT 0 ,			/*C��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_16		int		DEFAULT 0 ,			/*C��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_17		int		DEFAULT 0 ,			/*C��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_18		int		DEFAULT 0 ,			/*C��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_19		int		DEFAULT 0 ,			/*C��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_20		int		DEFAULT 0 ,			/*C��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_21		int		DEFAULT 0 ,			/*C��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ic			int		DEFAULT 0 ,			/*C���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ic_02		int		DEFAULT 0 ,			/*C��2��г������Խ���ۼ�ʱ��*/
		xblmt_ic_03		int		DEFAULT 0 ,			/*C��3��г������Խ���ۼ�ʱ��*/
		xblmt_ic_04		int		DEFAULT 0 ,			/*C��4��г������Խ���ۼ�ʱ��*/
		xblmt_ic_05		int		DEFAULT 0 ,			/*C��5��г������Խ���ۼ�ʱ��*/
		xblmt_ic_06		int		DEFAULT 0 ,			/*C��6��г������Խ���ۼ�ʱ��*/
		xblmt_ic_07		int		DEFAULT 0 ,			/*C��7��г������Խ���ۼ�ʱ��*/
		xblmt_ic_08		int		DEFAULT 0 ,			/*C��8��г������Խ���ۼ�ʱ��*/
		xblmt_ic_09		int		DEFAULT 0 ,			/*C��9��г������Խ���ۼ�ʱ��*/
		xblmt_ic_10		int		DEFAULT 0 ,			/*C��10��г������Խ���ۼ�ʱ��*/
		xblmt_ic_11		int		DEFAULT 0 ,			/*C��11��г������Խ���ۼ�ʱ��*/
		xblmt_ic_12		int		DEFAULT 0 ,			/*C��12��г������Խ���ۼ�ʱ��*/
		xblmt_ic_13		int		DEFAULT 0 ,			/*C��13��г������Խ���ۼ�ʱ��*/
		xblmt_ic_14		int		DEFAULT 0 ,			/*C��14��г������Խ���ۼ�ʱ��*/
		xblmt_ic_15		int		DEFAULT 0 ,			/*C��15��г������Խ���ۼ�ʱ��*/
		xblmt_ic_16		int		DEFAULT 0 ,			/*C��16��г������Խ���ۼ�ʱ��*/
		xblmt_ic_17		int		DEFAULT 0 ,			/*C��17��г������Խ���ۼ�ʱ��*/
		xblmt_ic_18		int		DEFAULT 0 ,			/*C��18��г������Խ���ۼ�ʱ��*/
		xblmt_ic_19		int		DEFAULT 0 ,			/*C��19��г������Խ���ۼ�ʱ��*/
		xblmt_ic_20		int		DEFAULT 0 ,			/*C��20��г������Խ���ۼ�ʱ��*/
		xblmt_ic_21		int		DEFAULT 0 			/*C��21��г������Խ���ۼ�ʱ��*/
)
grant select on  ZMonXbLmt2008 to public
create unique clustered index ZMonXbLmt2008index1
	on ZMonXbLmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������ܼ����������ݱ�(ZGMinQx200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZGMinQx200808')
begin
create table ZGMinQx200808
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	p					decimal(14, 3) 	DEFAULT 0.0 ,	/*	�й�����*/
	q					decimal(14, 3) 	DEFAULT 0.0 ,	/*	�޹�����*/
	ygdl			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�й�����*/
	wgdl			decimal(14, 3) 	DEFAULT 0.0	  /*	�޹�����*/
)
grant select on  ZGMinQx200808 to public
create unique clustered index ZGMinSsl200808index1
	on ZGMinQx200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר������ܼ����չ��ʼ�ֵ���ݱ�(ZGDayPMax200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZGDayPMax200808')
begin
create table ZGDayPMax200808
(
		rtu_id				int			   			not null,
		group_id			smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  ZGDayPMax200808 to public
create unique clustered index ZGDayPMax200808index1
	on ZGDayPMax200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������ܼ����յ������ݱ�(ZGDayDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZGDayDl200808')
begin
create table ZGDayDl200808
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  ZGDayDl200808 to public
create unique clustered index ZGDayDl200808index1
	on ZGDayDl200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������ܼ����¹��ʼ�ֵ���ݱ�(ZGMonMaxP2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZGMonMaxP2008')
begin
create table ZGMonMaxP2008
(
		rtu_id				int   					not null,
		group_id			smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  ZGMonMaxP2008 to public
create unique clustered index ZGMonMaxP2008index1
	on ZGMonMaxP2008(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������ܼ����µ������ݱ�(ZGMonDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZGMonDl2008')
begin
create table ZGMonDl2008
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  ZGMonDl2008 to public
create unique clustered index ZGMonDl2008index1
	on ZGMonDl2008(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

----------------------ר�����Ӧ�ý���--------------------------------------------


----------------------ũ��Ӧ�ÿ�ʼ--------------------------------------------
--   '-------Create table ũ��ʵʱ������ݱ�(NRealBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NRealBD200808')
begin
create table NRealBD200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 	/*�������޹����*/
	
)
grant select on  NRealBD200808 to public
create unique clustered index NRealBD200808index1
	on NRealBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ��ʵʱ˲ʱ�����ݱ�(NRealSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NRealSsl200808')
begin
create table NRealSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 3) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  NRealSsl200808 to public
create unique clustered index NRealSsl200808index1
	on NRealSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ũ�ŷ��ӱ�׵������ݱ�(NMinBDDL200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMinBDDL200808')
begin
create table NMinBDDL200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/		
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	

	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_source	tinyint					DEFAULT 0
)
grant select on  NMinBDDL200808 to public
create unique clustered index NMinBDDL200808index1
	on NMinBDDL200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ�ŷ���˲ʱ�����ݱ�(NMinSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMinSsl200808')
begin
create table NMinSsl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A��*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B��*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C��*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	p				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���й�*/
	pa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���й�*/
	pb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���й�*/
	pc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���й�*/
	q				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���޹�*/
	qa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���޹�*/
	qb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���޹�*/
	qc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���޹�*/
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����*/
	cs			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܹ�������*/
	csa			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�๦������*/
	csb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�๦������*/
	csc			decimal(14, 3) 	DEFAULT 0.0 	/*C�๦������*/
)
grant select on  NMinSsl200808 to public
create unique clustered index NMinSsl200808index1
	on NMinSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ũ���ձ�׵������ݱ�(NDayBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayBdDl200808')
begin
create table NDayBdDl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  NDayBdDl200808 to public
create unique clustered index NDayBdDl200808index1
	on NDayBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ�����������ݱ�(NDayMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayMaxXl200808')
begin
create table NDayMaxXl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/		
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  NDayMaxXl200808 to public
create unique clustered index NDayMaxXl200808index1
	on NDayMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���յ�ѹ�ϸ������ݱ�(NDayVHg200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayVHg200808')
begin
create table NDayVHg200808
(
		rtu_id					int 		 not null,
		mp_id						smallint not null,
		date						int			 not null,
		time						int			 not null,

		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/	
)
grant select on  NDayVHg200808 to public
create unique clustered index NDayVHg200808index1
	on NDayVHg200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���յ���Խ�����ݱ�(NDayILmt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayILmt200808')
begin
create table NDayILmt200808
(
		rtu_id					int  			not null,
		mp_id						smallint 	not null,
		date						int				not null,
		time						int				not null,

		lmt_ia_hh_tm		int				DEFAULT 0 ,			/*A�����Խ�������ۼ�ʱ��*/
		lmt_ia_h_tm			int				DEFAULT 0 ,			/*A�����Խ�����ۼ�ʱ��*/
		lmt_ib_hh_tm		int				DEFAULT 0 ,			/*B�����Խ�������ۼ�ʱ��*/
		lmt_ib_h_tm			int				DEFAULT 0 ,			/*B�����Խ�����ۼ�ʱ��*/
		lmt_ic_hh_tm		int				DEFAULT 0 ,			/*C�����Խ�������ۼ�ʱ��*/
		lmt_ic_h_tm			int				DEFAULT 0 ,			/*C�����Խ�����ۼ�ʱ��*/
		lmt_i0_h_tm			int				DEFAULT 0 ,			/*�������Խ�����ۼ�ʱ��*/
		lmt_ia_max			decimal(14, 3)DEFAULT 0.0,/*A��������ֵ*/
		lmt_ia_max_tm		int				DEFAULT 0 ,			/*A��������ֵ����ʱ��*/
		lmt_ib_max			decimal(14, 3)DEFAULT 0.0,/*B��������ֵ*/
		lmt_ib_max_tm		int				DEFAULT 0 ,			/*B��������ֵ����ʱ��*/
		lmt_ic_max			decimal(14, 3)DEFAULT 0.0,/*C��������ֵ*/
		lmt_ic_max_tm		int				DEFAULT 0 ,			/*C��������ֵ����ʱ��*/
		lmt_i0_max			decimal(14, 3)DEFAULT 0.0,/*����������ֵ*/
		lmt_i0_max_tm		int				DEFAULT 0 			/*����������ֵ����ʱ��*/
)
grant select on  NDayILmt200808 to public
create unique clustered index NDayILmt200808index1
	on NDayILmt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ���ն���ͳ�����ݱ�(NDayDX200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayDX200808')
begin
create table NDayDX200808
(
		rtu_id		int 			not null,
		mp_id			smallint	not null,
		date			int				not null,
		time			int				not null,
	
		dx_tms		int				DEFAULT 0 ,		/*�ܶ������*/
		dx_a_tms	int				DEFAULT 0 ,		/*A��������*/
		dx_b_tms	int				DEFAULT 0 ,		/*B��������*/
		dx_c_tms	int				DEFAULT 0 ,		/*C��������*/
		dx_tm			int				DEFAULT 0 ,		/*�����ۼ�ʱ��*/
		dx_a_tm		int				DEFAULT 0 ,		/*A�����ۼ�ʱ��*/
		dx_b_tm		int				DEFAULT 0 ,		/*B�����ۼ�ʱ��*/
		dx_c_tm		int				DEFAULT 0 ,		/*C�����ۼ�ʱ��*/
		dx_1_s_tm	int				DEFAULT 0 ,		/*���һ�ζ�����ʼʱ��*/
		dx_a_s_tm	int				DEFAULT 0 ,		/*A�����������ʼʱ��*/
		dx_b_s_tm	int				DEFAULT 0 ,		/*B�����������ʼʱ��*/
		dx_c_s_tm	int				DEFAULT 0 ,		/*C�����������ʼʱ��*/
		dx_1_e_tm	int				DEFAULT 0 ,		/*���һ�ζ������ʱ��*/
		dx_a_e_tm	int				DEFAULT 0 ,		/*A������������ʱ��*/
		dx_b_e_tm	int				DEFAULT 0 ,		/*B������������ʱ��*/
		dx_c_e_tm	int				DEFAULT 0 ,		/*C������������ʱ��*/

)
grant select on  NDayDX200808 to public
create unique clustered index NDayDX200808index1
	on NDayDX200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���չ��ʼ�ֵ���ݱ�(NDayPMax200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayPMax200808')
begin
create table NDayPMax200808
(
		rtu_id				int	   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/

)
grant select on  NDayPMax200808 to public
create unique clustered index NDayPMax200808index1
	on NDayPMax200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ���յ�����ƽ�����ݱ�(NDayIBal200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayIBal200808')
begin
create table NDayIBal200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		bph_i_tm			int							DEFAULT 0 ,			/*������ƽ���Խ���ۼ�ʱ��*/
		bph_v_tm			int							DEFAULT 0 ,			/*��ѹ��ƽ���Խ���ۼ�ʱ��*/ 
		bph_i_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*������ƽ�����ֵ*/
		bph_i_max_tm	int							DEFAULT 0 ,			/*������ƽ�����ֵ����ʱ��*/
		bph_v_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*��ѹ��ƽ�����ֵ*/
		bph_v_max_tm	int							DEFAULT 0			  /*��ѹ��ƽ�����ֵ����ʱ��*/
)
grant select on  NDayIBal200808 to public
create unique clustered index NDayIBal200808index1
	on NDayIBal200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���ո������ݱ�(NDayLoad200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayLoad200808')
begin
create table NDayLoad200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		fz_max				decimal(14, 3) 	DEFAULT 0.0,	/*���������ֵ*/	
		fz_max_tm			int							DEFAULT 0 ,		/*���������ֵ����ʱ��*/
		fz_min				decimal(14, 3) 	DEFAULT 0.0,	/*��������Сֵ*/
		fz_min_tm			int							DEFAULT 0 		/*��������Сֵ����ʱ��*/
)
grant select on  NDayLoad200808 to public
create unique clustered index NDayLoad200808index1
	on NDayLoad200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ���չ������������ۼ�ʱ��(NDayCos200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NDayCos200808')
begin
create table NDayCos200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		cs_tm_1				int							DEFAULT 0 ,		/*����1�ۼ�ʱ�䣨������������ֵ1��*/
		cs_tm_2				int							DEFAULT 0 ,		/*����2�ۼ�ʱ�䣨��ֵ1�ܹ�����������ֵ2��*/
		cs_tm_3				int							DEFAULT 0 		/*����3�ۼ�ʱ�䣨���������ݶ�ֵ2��*/
)
grant select on  NDayCos200808 to public
create unique clustered index NDayCos200808index1
	on NDayCos200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



--   '-------Create table ũ�ų����ձ�׵������ݱ�(NMRBdDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMRBdDl200808')
begin
create table NMRBdDl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  NMRBdDl200808 to public
create unique clustered index NMRBdDl200808index1
	on NMRBdDl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���±�׵������ݱ�(NMonBdDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonBdDl2008')
begin
create table NMonBdDl2008
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	bd_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	
	bd_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܱ��*/	
	bd_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
	bd_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ���*/	
	bd_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȱ��*/	
	bd_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�����*/	
		
	bd_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	
	bd_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܱ��*/	
	bd_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/	
	bd_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ���*/	
	bd_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȱ��*/	
	bd_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�����*/
	
	bd_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹����*/	
	bd_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/	
	bd_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹����*/
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/
		
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0, 	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  NMonBdDl2008 to public
create unique clustered index NMonBdDl2008index1
	on NMonBdDl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ�����������ݱ�(NMonMaxXl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonMaxXl2008')
begin
create table NMonMaxXl2008
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	

	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  NMonMaxXl2008 to public
create unique clustered index NMonMaxXl2008index1
	on NMonMaxXl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���µ�ѹ�ϸ������ݱ�(NMonVHg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonVHg2008')
begin
create table NMonVHg2008
(
		rtu_id					int   		not null,
		mp_id						smallint	not null,
		date						int				not null,
		time						int				not null,
	
		hg_va_hh_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_ll_tm			int		DEFAULT 0 ,								/*A���ѹԽ�������ۼ�ʱ��*/
		hg_va_h_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_l_tm			int		DEFAULT 0 ,								/*A���ѹԽ�����ۼ�ʱ��*/
		hg_va_tm				int		DEFAULT 0 ,								/*A���ѹ�ϸ����ۼ�ʱ��*/
		hg_vb_hh_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_ll_tm			int		DEFAULT 0 ,								/*B���ѹԽ�������ۼ�ʱ��*/
		hg_vb_h_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_l_tm			int		DEFAULT 0 ,								/*B���ѹԽ�����ۼ�ʱ��*/
		hg_vb_tm				int		DEFAULT 0 ,								/*B���ѹ�ϸ����ۼ�ʱ��*/
		hg_vc_hh_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_ll_tm			int		DEFAULT 0 ,								/*C���ѹԽ�������ۼ�ʱ��*/
		hg_vc_h_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_l_tm			int		DEFAULT 0 ,								/*C���ѹԽ�����ۼ�ʱ��*/
		hg_vc_tm				int		DEFAULT 0 ,								/*C���ѹ�ϸ����ۼ�ʱ��*/
		hg_va_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ���ֵ*/
		hg_va_max_tm		int		DEFAULT 0 ,								/*A���ѹ���ֵ����ʱ��*/
		hg_va_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ��Сֵ*/
		hg_va_min_tm		int		DEFAULT 0 ,								/*A���ѹ��Сֵ����ʱ��*/
		hg_vb_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ���ֵ*/
		hg_vb_max_tm		int		DEFAULT 0 ,								/*B���ѹ���ֵ����ʱ��*/
		hg_vb_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ��Сֵ*/
		hg_vb_min_tm		int		DEFAULT 0 ,								/*B���ѹ��Сֵ����ʱ��*/
		hg_vc_max				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ���ֵ*/
		hg_vc_max_tm		int		DEFAULT 0 ,								/*C���ѹ���ֵ����ʱ��*/
		hg_vc_min				decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹ��Сֵ*/
		hg_vc_min_tm		int		DEFAULT 0 ,								/*C���ѹ��Сֵ����ʱ��*/
		hg_va_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*A��ƽ����ѹ*/
		hg_vb_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*B��ƽ����ѹ*/
		hg_vc_pj				decimal(14, 3) 	DEFAULT 0.0 ,		/*C��ƽ����ѹ*/
		
		hg_va_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹԽ������*/
		hg_va_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹ�ϸ���*/
		hg_vb_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹԽ������*/
		hg_vb_hgl 			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹ�ϸ���*/
		hg_vc_ysxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_yxxl			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹԽ������*/
		hg_vc_hgl 			decimal(14, 3) 	DEFAULT 0.0 		/*C���ѹ�ϸ���*/	
)
grant select on  NMonVHg2008 to public
create unique clustered index NMonVHg2008index1
	on NMonVHg2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ���µ���Խ�����ݱ�(NMonILmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonILmt2008')
begin
create table NMonILmt2008
(
		rtu_id					int  			not null,
		mp_id						smallint 	not null,
		date						int				not null,
		time						int				not null,

		lmt_ia_hh_tm		int				DEFAULT 0 ,			/*A�����Խ�������ۼ�ʱ��*/
		lmt_ia_h_tm			int				DEFAULT 0 ,			/*A�����Խ�����ۼ�ʱ��*/
		lmt_ib_hh_tm		int				DEFAULT 0 ,			/*B�����Խ�������ۼ�ʱ��*/
		lmt_ib_h_tm			int				DEFAULT 0 ,			/*B�����Խ�����ۼ�ʱ��*/
		lmt_ic_hh_tm		int				DEFAULT 0 ,			/*C�����Խ�������ۼ�ʱ��*/
		lmt_ic_h_tm			int				DEFAULT 0 ,			/*C�����Խ�����ۼ�ʱ��*/
		lmt_i0_h_tm			int				DEFAULT 0 ,			/*�������Խ�����ۼ�ʱ��*/
		lmt_ia_max			decimal(14, 3)DEFAULT 0.0,/*A��������ֵ*/
		lmt_ia_max_tm		int				DEFAULT 0 ,			/*A��������ֵ����ʱ��*/
		lmt_ib_max			decimal(14, 3)DEFAULT 0.0,/*B��������ֵ*/
		lmt_ib_max_tm		int				DEFAULT 0 ,			/*B��������ֵ����ʱ��*/
		lmt_ic_max			decimal(14, 3)DEFAULT 0.0,/*C��������ֵ*/
		lmt_ic_max_tm		int				DEFAULT 0 ,			/*C��������ֵ����ʱ��*/
		lmt_i0_max			decimal(14, 3)DEFAULT 0.0,/*����������ֵ*/
		lmt_i0_max_tm		int				DEFAULT 0 			/*����������ֵ����ʱ��*/
)
grant select on  NMonILmt2008 to public
create unique clustered index NMonILmt2008index1
	on NMonILmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���¶���ͳ�����ݱ�(NMonDx2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonDx2008')
begin
create table NMonDx2008
(
		rtu_id		int 			not null,
		mp_id			smallint	not null,
		date			int				not null,
		time			int				not null,
	
		dx_tms		int				DEFAULT 0 ,		/*�ܶ������*/
		dx_a_tms	int				DEFAULT 0 ,		/*A��������*/
		dx_b_tms	int				DEFAULT 0 ,		/*B��������*/
		dx_c_tms	int				DEFAULT 0 ,		/*C��������*/
		dx_tm			int				DEFAULT 0 ,		/*�����ۼ�ʱ��*/
		dx_a_tm		int				DEFAULT 0 ,		/*A�����ۼ�ʱ��*/
		dx_b_tm		int				DEFAULT 0 ,		/*B�����ۼ�ʱ��*/
		dx_c_tm		int				DEFAULT 0 ,		/*C�����ۼ�ʱ��*/
		dx_1_s_tm	int				DEFAULT 0 ,		/*���һ�ζ�����ʼʱ��*/
		dx_a_s_tm	int				DEFAULT 0 ,		/*A�����������ʼʱ��*/
		dx_b_s_tm	int				DEFAULT 0 ,		/*B�����������ʼʱ��*/
		dx_c_s_tm	int				DEFAULT 0 ,		/*C�����������ʼʱ��*/
		dx_1_e_tm	int				DEFAULT 0 ,		/*���һ�ζ������ʱ��*/
		dx_a_e_tm	int				DEFAULT 0 ,		/*A������������ʱ��*/
		dx_b_e_tm	int				DEFAULT 0 ,		/*B������������ʱ��*/
		dx_c_e_tm	int				DEFAULT 0 		/*C������������ʱ��*/
)
grant select on  NMonDx2008 to public
create unique clustered index NMonDx2008index1
	on NMonDx2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ũ���¹��ʼ�ֵ���ݱ�(NMonPMax2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonPMax2008')
begin
create table NMonPMax2008
(
		rtu_id				int	   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  NMonPMax2008 to public
create unique clustered index NMonPMax2008index1
	on NMonPMax2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���²�ƽ�����ݱ�(NMonIBal2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonIBal2008')
begin
create table NMonIBal2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		bph_i_tm			int							DEFAULT 0 ,			/*������ƽ���Խ���ۼ�ʱ��*/
		bph_v_tm			int							DEFAULT 0 ,			/*��ѹ��ƽ���Խ���ۼ�ʱ��*/ 
		bph_i_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*������ƽ�����ֵ*/
		bph_i_max_tm	int							DEFAULT 0 ,			/*������ƽ�����ֵ����ʱ��*/
		bph_v_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*��ѹ��ƽ�����ֵ*/
		bph_v_max_tm	int							DEFAULT 0			  /*��ѹ��ƽ�����ֵ����ʱ��*/
)
grant select on  NMonIBal2008 to public
create unique clustered index NMonIBal2008index1
	on NMonIBal2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���¸������ݱ�(NMonLoad2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonLoad2008')
begin
create table NMonLoad2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		fz_max				decimal(14, 3) 	DEFAULT 0.0,	/*���������ֵ*/	
		fz_max_tm			int							DEFAULT 0 ,		/*���������ֵ����ʱ��*/
		fz_min				decimal(14, 3) 	DEFAULT 0.0,	/*��������Сֵ*/
		fz_min_tm			int							DEFAULT 0 		/*��������Сֵ����ʱ��*/
)
grant select on  NMonLoad2008 to public
create unique clustered index NMonLoad2008index1
	on NMonLoad2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���¹������������ۼ�ʱ��(NMonCos2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonCos2008')
begin
create table NMonCos2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		cs_tm_1				int							DEFAULT 0 ,		/*����1�ۼ�ʱ�䣨������������ֵ1��*/
		cs_tm_2				int							DEFAULT 0 ,		/*����2�ۼ�ʱ�䣨��ֵ1�ܹ�����������ֵ2��*/
		cs_tm_3				int							DEFAULT 0 		/*����3�ۼ�ʱ�䣨���������ݶ�ֵ2��*/
)
grant select on  NMonCos2008 to public
create unique clustered index NMonCos2008index1
	on NMonCos2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ��г���������ݱ�(NMonXbI2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonXbI2008')
begin
create table NMonXbI2008
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_ia_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г���������ֵ*/
		xb_ia_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г���������ֵ*/
		xb_ia_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г���������ֵ*/
		xb_ia_05			    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г���������ֵ*/
		xb_ia_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г���������ֵ*/
		xb_ia_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г���������ֵ*/
		xb_ia_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г���������ֵ*/
		xb_ia_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г���������ֵ*/
		xb_ia_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г���������ֵ*/
		xb_ia_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г���������ֵ*/
		xb_ia_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г���������ֵ*/
		xb_ia_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г���������ֵ*/
		xb_ia_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г���������ֵ*/
		xb_ia_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г���������ֵ*/
		xb_ia_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г���������ֵ*/
		xb_ia_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г���������ֵ*/
		xb_ia_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г���������ֵ*/
		xb_ia_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г���������ֵ*/
		xb_ia							decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
		
		xb_ia_02_tm				int		DEFAULT 0 ,							/*A��2��г���������ֵ����ʱ��*/
		xb_ia_03_tm				int		DEFAULT 0 ,							/*A��3��г���������ֵ����ʱ��*/
		xb_ia_04_tm				int		DEFAULT 0 ,							/*A��4��г���������ֵ����ʱ��*/
		xb_ia_05_tm				int		DEFAULT 0 ,							/*A��5��г���������ֵ����ʱ��*/
		xb_ia_06_tm				int		DEFAULT 0 ,							/*A��6��г���������ֵ����ʱ��*/
		xb_ia_07_tm				int		DEFAULT 0 ,							/*A��7��г���������ֵ����ʱ��*/
		xb_ia_08_tm				int		DEFAULT 0 ,							/*A��8��г���������ֵ����ʱ��*/
		xb_ia_09_tm				int		DEFAULT 0 ,							/*A��9��г���������ֵ����ʱ��*/
		xb_ia_10_tm				int		DEFAULT 0 ,							/*A��10��г���������ֵ����ʱ��*/
		xb_ia_11_tm				int		DEFAULT 0 ,							/*A��11��г���������ֵ����ʱ��*/
		xb_ia_12_tm				int		DEFAULT 0 ,							/*A��12��г���������ֵ����ʱ��*/
		xb_ia_13_tm				int		DEFAULT 0 ,							/*A��13��г���������ֵ����ʱ��*/
		xb_ia_14_tm				int		DEFAULT 0 ,							/*A��14��г���������ֵ����ʱ��*/
		xb_ia_15_tm				int		DEFAULT 0 ,							/*A��15��г���������ֵ����ʱ��*/
		xb_ia_16_tm				int		DEFAULT 0 ,							/*A��16��г���������ֵ����ʱ��*/
		xb_ia_17_tm				int		DEFAULT 0 ,							/*A��17��г���������ֵ����ʱ��*/
		xb_ia_18_tm				int		DEFAULT 0 ,							/*A��18��г���������ֵ����ʱ��*/
		xb_ia_19_tm				int		DEFAULT 0 ,							/*A��19��г���������ֵ����ʱ��*/
		xb_ia_tm					int		DEFAULT 0 ,					 	  /*A���ܻ���������ֵ����ʱ��*/
		
		
		xb_ib_02					decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г���������ֵ*/
		xb_ib_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г���������ֵ*/
		xb_ib_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г���������ֵ*/
		xb_ib_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г���������ֵ*/
		xb_ib_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г���������ֵ*/
		xb_ib_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г���������ֵ*/
		xb_ib_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г���������ֵ*/
		xb_ib_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г���������ֵ*/
		xb_ib_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г���������ֵ*/
		xb_ib_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г���������ֵ*/
		xb_ib_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г���������ֵ*/
		xb_ib_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г���������ֵ*/
		xb_ib_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г���������ֵ*/
		xb_ib_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г���������ֵ*/
		xb_ib_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г���������ֵ*/
		xb_ib_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г���������ֵ*/
		xb_ib_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г���������ֵ*/
		xb_ib_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г���������ֵ*/
		xb_ib							decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_ib_02_tm				int		DEFAULT 0 ,							/*B��2��г���������ֵ����ʱ��*/
		xb_ib_03_tm				int		DEFAULT 0 ,							/*B��3��г���������ֵ����ʱ��*/
		xb_ib_04_tm				int		DEFAULT 0 ,							/*B��4��г���������ֵ����ʱ��*/
		xb_ib_05_tm				int		DEFAULT 0 ,							/*B��5��г���������ֵ����ʱ��*/
		xb_ib_06_tm				int		DEFAULT 0 ,							/*B��6��г���������ֵ����ʱ��*/
		xb_ib_07_tm				int		DEFAULT 0 ,							/*B��7��г���������ֵ����ʱ��*/
		xb_ib_08_tm				int		DEFAULT 0 ,							/*B��8��г���������ֵ����ʱ��*/
		xb_ib_09_tm				int		DEFAULT 0 ,							/*B��9��г���������ֵ����ʱ��*/
		xb_ib_10_tm				int		DEFAULT 0 ,							/*B��10��г���������ֵ����ʱ��*/
		xb_ib_11_tm				int		DEFAULT 0 ,							/*B��11��г���������ֵ����ʱ��*/
		xb_ib_12_tm				int		DEFAULT 0 ,							/*B��12��г���������ֵ����ʱ��*/
		xb_ib_13_tm				int		DEFAULT 0 ,							/*B��13��г���������ֵ����ʱ��*/
		xb_ib_14_tm				int		DEFAULT 0 ,							/*B��14��г���������ֵ����ʱ��*/
		xb_ib_15_tm				int		DEFAULT 0 ,							/*B��15��г���������ֵ����ʱ��*/
		xb_ib_16_tm				int		DEFAULT 0 ,							/*B��16��г���������ֵ����ʱ��*/
		xb_ib_17_tm				int		DEFAULT 0 ,							/*B��17��г���������ֵ����ʱ��*/
		xb_ib_18_tm				int		DEFAULT 0 ,							/*B��18��г���������ֵ����ʱ��*/
		xb_ib_19_tm				int		DEFAULT 0 ,							/*B��19��г���������ֵ����ʱ��*/
		xb_ib_tm					int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_ic_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г���������ֵ*/
		xb_ic_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г���������ֵ*/
		xb_ic_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г���������ֵ*/
		xb_ic_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г���������ֵ*/
		xb_ic_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г���������ֵ*/
		xb_ic_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г���������ֵ*/
		xb_ic_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г���������ֵ*/
		xb_ic_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г���������ֵ*/
		xb_ic_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г���������ֵ*/
		xb_ic_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г���������ֵ*/
		xb_ic_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г���������ֵ*/
		xb_ic_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г���������ֵ*/
		xb_ic_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г���������ֵ*/
		xb_ic_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г���������ֵ*/
		xb_ic_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г���������ֵ*/
		xb_ic_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г���������ֵ*/
		xb_ic_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г���������ֵ*/
		xb_ic_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г���������ֵ*/
		xb_ic							decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_ic_02_tm				int		DEFAULT 0 ,							/*C��2��г���������ֵ����ʱ��*/
		xb_ic_03_tm				int		DEFAULT 0 ,							/*C��3��г���������ֵ����ʱ��*/
		xb_ic_04_tm				int		DEFAULT 0 ,							/*C��4��г���������ֵ����ʱ��*/
		xb_ic_05_tm				int		DEFAULT 0 ,							/*C��5��г���������ֵ����ʱ��*/
		xb_ic_06_tm				int		DEFAULT 0 ,							/*C��6��г���������ֵ����ʱ��*/
		xb_ic_07_tm				int		DEFAULT 0 ,							/*C��7��г���������ֵ����ʱ��*/
		xb_ic_08_tm				int		DEFAULT 0 ,							/*C��8��г���������ֵ����ʱ��*/
		xb_ic_09_tm				int		DEFAULT 0 ,							/*C��9��г���������ֵ����ʱ��*/
		xb_ic_10_tm				int		DEFAULT 0 ,							/*C��10��г���������ֵ����ʱ��*/
		xb_ic_11_tm				int		DEFAULT 0 ,							/*C��11��г���������ֵ����ʱ��*/
		xb_ic_12_tm				int		DEFAULT 0 ,							/*C��12��г���������ֵ����ʱ��*/
		xb_ic_13_tm				int		DEFAULT 0 ,							/*C��13��г���������ֵ����ʱ��*/
		xb_ic_14_tm				int		DEFAULT 0 ,							/*C��14��г���������ֵ����ʱ��*/
		xb_ic_15_tm				int		DEFAULT 0 ,							/*C��15��г���������ֵ����ʱ��*/
		xb_ic_16_tm				int		DEFAULT 0 ,							/*C��16��г���������ֵ����ʱ��*/
		xb_ic_17_tm				int		DEFAULT 0 ,							/*C��17��г���������ֵ����ʱ��*/
		xb_ic_18_tm				int		DEFAULT 0 ,							/*C��18��г���������ֵ����ʱ��*/
		xb_ic_19_tm				int		DEFAULT 0 ,							/*C��19��г���������ֵ����ʱ��*/
		xb_ic_tm					int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/

)
grant select on  NMonXbI2008 to public
create unique clustered index NMonXbI2008index1
	on NMonXbI2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ��г����ѹ���ݱ�(NMonXbU2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonXbU2008')
begin
create table NMonXbU2008
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0,	/*A��2��г����ѹ���������ֵ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ���������ֵ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ���������ֵ*/
		xb_va_05		    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ���������ֵ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ���������ֵ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ���������ֵ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ���������ֵ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ���������ֵ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ���������ֵ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ���������ֵ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ���������ֵ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ���������ֵ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ���������ֵ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ���������ֵ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ���������ֵ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ���������ֵ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ���������ֵ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ���������ֵ*/
		xb_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
				
		xb_va_02_tm			int		DEFAULT 0 ,							/*A��2��г����ѹ���������ֵ����ʱ��*/
		xb_va_03_tm			int		DEFAULT 0 ,							/*A��3��г����ѹ���������ֵ����ʱ��*/
		xb_va_04_tm			int		DEFAULT 0 ,							/*A��4��г����ѹ���������ֵ����ʱ��*/
		xb_va_05_tm			int		DEFAULT 0 ,							/*A��5��г����ѹ���������ֵ����ʱ��*/
		xb_va_06_tm			int		DEFAULT 0 ,							/*A��6��г����ѹ���������ֵ����ʱ��*/
		xb_va_07_tm			int		DEFAULT 0 ,							/*A��7��г����ѹ���������ֵ����ʱ��*/
		xb_va_08_tm			int		DEFAULT 0 ,							/*A��8��г����ѹ���������ֵ����ʱ��*/
		xb_va_09_tm			int		DEFAULT 0 ,							/*A��9��г����ѹ���������ֵ����ʱ��*/
		xb_va_10_tm			int		DEFAULT 0 ,							/*A��10��г����ѹ���������ֵ����ʱ��*/
		xb_va_11_tm			int		DEFAULT 0 ,							/*A��11��г����ѹ���������ֵ����ʱ��*/
		xb_va_12_tm			int		DEFAULT 0 ,							/*A��12��г����ѹ���������ֵ����ʱ��*/
		xb_va_13_tm			int		DEFAULT 0 ,							/*A��13��г����ѹ���������ֵ����ʱ��*/
		xb_va_14_tm			int		DEFAULT 0 ,							/*A��14��г����ѹ���������ֵ����ʱ��*/
		xb_va_15_tm			int		DEFAULT 0 ,							/*A��15��г����ѹ���������ֵ����ʱ��*/
		xb_va_16_tm			int		DEFAULT 0 ,							/*A��16��г����ѹ���������ֵ����ʱ��*/
		xb_va_17_tm			int		DEFAULT 0 ,							/*A��17��г����ѹ���������ֵ����ʱ��*/
		xb_va_18_tm			int		DEFAULT 0 ,							/*A��18��г����ѹ���������ֵ����ʱ��*/
		xb_va_19_tm			int		DEFAULT 0 ,							/*A��19��г����ѹ���������ֵ����ʱ��*/
		xb_va_tm				int		DEFAULT 0 ,					 		/*A���ܻ���������ֵ����ʱ��*/
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г����ѹ���������ֵ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ���������ֵ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ���������ֵ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ���������ֵ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ���������ֵ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ���������ֵ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ���������ֵ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ���������ֵ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ���������ֵ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ���������ֵ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ���������ֵ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ���������ֵ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ���������ֵ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ���������ֵ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ���������ֵ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ���������ֵ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ���������ֵ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ���������ֵ*/
		xb_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_vb_02_tm			int		DEFAULT 0 ,							/*B��2��г����ѹ���������ֵ����ʱ��*/
		xb_vb_03_tm			int		DEFAULT 0 ,							/*B��3��г����ѹ���������ֵ����ʱ��*/
		xb_vb_04_tm			int		DEFAULT 0 ,							/*B��4��г����ѹ���������ֵ����ʱ��*/
		xb_vb_05_tm			int		DEFAULT 0 ,							/*B��5��г����ѹ���������ֵ����ʱ��*/
		xb_vb_06_tm			int		DEFAULT 0 ,							/*B��6��г����ѹ���������ֵ����ʱ��*/
		xb_vb_07_tm			int		DEFAULT 0 ,							/*B��7��г����ѹ���������ֵ����ʱ��*/
		xb_vb_08_tm			int		DEFAULT 0 ,							/*B��8��г����ѹ���������ֵ����ʱ��*/
		xb_vb_09_tm			int		DEFAULT 0 ,							/*B��9��г����ѹ���������ֵ����ʱ��*/
		xb_vb_10_tm			int		DEFAULT 0 ,							/*B��10��г����ѹ���������ֵ����ʱ��*/
		xb_vb_11_tm			int		DEFAULT 0 ,							/*B��11��г����ѹ���������ֵ����ʱ��*/
		xb_vb_12_tm			int		DEFAULT 0 ,							/*B��12��г����ѹ���������ֵ����ʱ��*/
		xb_vb_13_tm			int		DEFAULT 0 ,							/*B��13��г����ѹ���������ֵ����ʱ��*/
		xb_vb_14_tm			int		DEFAULT 0 ,							/*B��14��г����ѹ���������ֵ����ʱ��*/
		xb_vb_15_tm			int		DEFAULT 0 ,							/*B��15��г����ѹ���������ֵ����ʱ��*/
		xb_vb_16_tm			int		DEFAULT 0 ,							/*B��16��г����ѹ���������ֵ����ʱ��*/
		xb_vb_17_tm			int		DEFAULT 0 ,							/*B��17��г����ѹ���������ֵ����ʱ��*/
		xb_vb_18_tm			int		DEFAULT 0 ,							/*B��18��г����ѹ���������ֵ����ʱ��*/
		xb_vb_19_tm			int		DEFAULT 0 ,							/*B��19��г����ѹ���������ֵ����ʱ��*/
		xb_vb_tm				int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ���������ֵ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ���������ֵ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ���������ֵ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ���������ֵ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ���������ֵ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ���������ֵ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ���������ֵ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ���������ֵ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ���������ֵ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ���������ֵ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ���������ֵ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ���������ֵ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ���������ֵ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ���������ֵ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ���������ֵ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ���������ֵ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ���������ֵ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ���������ֵ*/
		xb_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_vc_02_tm			int		DEFAULT 0 ,							/*C��2��г����ѹ���������ֵ����ʱ��*/
		xb_vc_03_tm			int		DEFAULT 0 ,							/*C��3��г����ѹ���������ֵ����ʱ��*/
		xb_vc_04_tm			int		DEFAULT 0 ,							/*C��4��г����ѹ���������ֵ����ʱ��*/
		xb_vc_05_tm			int		DEFAULT 0 ,							/*C��5��г����ѹ���������ֵ����ʱ��*/
		xb_vc_06_tm			int		DEFAULT 0 ,							/*C��6��г����ѹ���������ֵ����ʱ��*/
		xb_vc_07_tm			int		DEFAULT 0 ,							/*C��7��г����ѹ���������ֵ����ʱ��*/
		xb_vc_08_tm			int		DEFAULT 0 ,							/*C��8��г����ѹ���������ֵ����ʱ��*/
		xb_vc_09_tm			int		DEFAULT 0 ,							/*C��9��г����ѹ���������ֵ����ʱ��*/
		xb_vc_10_tm			int		DEFAULT 0 ,							/*C��10��г����ѹ���������ֵ����ʱ��*/
		xb_vc_11_tm			int		DEFAULT 0 ,							/*C��11��г����ѹ���������ֵ����ʱ��*/
		xb_vc_12_tm			int		DEFAULT 0 ,							/*C��12��г����ѹ���������ֵ����ʱ��*/
		xb_vc_13_tm			int		DEFAULT 0 ,							/*C��13��г����ѹ���������ֵ����ʱ��*/
		xb_vc_14_tm			int		DEFAULT 0 ,							/*C��14��г����ѹ���������ֵ����ʱ��*/
		xb_vc_15_tm			int		DEFAULT 0 ,							/*C��15��г����ѹ���������ֵ����ʱ��*/
		xb_vc_16_tm			int		DEFAULT 0 ,							/*C��16��г����ѹ���������ֵ����ʱ��*/
		xb_vc_17_tm			int		DEFAULT 0 ,							/*C��17��г����ѹ���������ֵ����ʱ��*/
		xb_vc_18_tm			int		DEFAULT 0 ,							/*C��18��г����ѹ���������ֵ����ʱ��*/
		xb_vc_19_tm			int		DEFAULT 0 ,							/*C��19��г����ѹ���������ֵ����ʱ��*/
		xb_vc_tm				int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/
)
grant select on  NMonXbU2008 to public
create unique clustered index NMonXbU2008index1
	on NMonXbU2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ��г��Խ�����ݱ�(NMonXbLmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NMonXbLmt2008')
begin
create table NMonXbLmt2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		xblmt_va			int		DEFAULT 0 ,			/*A���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_02		int		DEFAULT 0 ,			/*A��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_03		int		DEFAULT 0 ,			/*A��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_04		int		DEFAULT 0 ,			/*A��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_05		int		DEFAULT 0 ,			/*A��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_06		int		DEFAULT 0 ,			/*A��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_07		int		DEFAULT 0 ,			/*A��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_08		int		DEFAULT 0 ,			/*A��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_09		int		DEFAULT 0 ,			/*A��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_10		int		DEFAULT 0 ,			/*A��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_11		int		DEFAULT 0 ,			/*A��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_12		int		DEFAULT 0 ,			/*A��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_13		int		DEFAULT 0 ,			/*A��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_14		int		DEFAULT 0 ,			/*A��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_15		int		DEFAULT 0 ,			/*A��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_16		int		DEFAULT 0 ,			/*A��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_17		int		DEFAULT 0 ,			/*A��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_18		int		DEFAULT 0 ,			/*A��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_19		int		DEFAULT 0 ,			/*A��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ia			int		DEFAULT 0 ,			/*A���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ia_02		int		DEFAULT 0 ,			/*A��2��г������Խ���ۼ�ʱ��*/
		xblmt_ia_03		int		DEFAULT 0 ,			/*A��3��г������Խ���ۼ�ʱ��*/
		xblmt_ia_04		int		DEFAULT 0 ,			/*A��4��г������Խ���ۼ�ʱ��*/
		xblmt_ia_05		int		DEFAULT 0 ,			/*A��5��г������Խ���ۼ�ʱ��*/
		xblmt_ia_06		int		DEFAULT 0 ,			/*A��6��г������Խ���ۼ�ʱ��*/
		xblmt_ia_07		int		DEFAULT 0 ,			/*A��7��г������Խ���ۼ�ʱ��*/
		xblmt_ia_08		int		DEFAULT 0 ,			/*A��8��г������Խ���ۼ�ʱ��*/
		xblmt_ia_09		int		DEFAULT 0 ,			/*A��9��г������Խ���ۼ�ʱ��*/
		xblmt_ia_10		int		DEFAULT 0 ,			/*A��10��г������Խ���ۼ�ʱ��*/
		xblmt_ia_11		int		DEFAULT 0 ,			/*A��11��г������Խ���ۼ�ʱ��*/
		xblmt_ia_12		int		DEFAULT 0 ,			/*A��12��г������Խ���ۼ�ʱ��*/
		xblmt_ia_13		int		DEFAULT 0 ,			/*A��13��г������Խ���ۼ�ʱ��*/
		xblmt_ia_14		int		DEFAULT 0 ,			/*A��14��г������Խ���ۼ�ʱ��*/
		xblmt_ia_15		int		DEFAULT 0 ,			/*A��15��г������Խ���ۼ�ʱ��*/
		xblmt_ia_16		int		DEFAULT 0 ,			/*A��16��г������Խ���ۼ�ʱ��*/
		xblmt_ia_17		int		DEFAULT 0 ,			/*A��17��г������Խ���ۼ�ʱ��*/
		xblmt_ia_18		int		DEFAULT 0 ,			/*A��18��г������Խ���ۼ�ʱ��*/
		xblmt_ia_19		int		DEFAULT 0 ,			/*A��19��г������Խ���ۼ�ʱ��*/
		xblmt_vb			int		DEFAULT 0 ,			/*B���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_02		int		DEFAULT 0 ,			/*B��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_03		int		DEFAULT 0 ,			/*B��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_04		int		DEFAULT 0 ,			/*B��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_05		int		DEFAULT 0 ,			/*B��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_06		int		DEFAULT 0 ,			/*B��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_07		int		DEFAULT 0 ,			/*B��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_08		int		DEFAULT 0 ,			/*B��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_09		int		DEFAULT 0 ,			/*B��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_10		int		DEFAULT 0 ,			/*B��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_11		int		DEFAULT 0 ,			/*B��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_12		int		DEFAULT 0 ,			/*B��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_13		int		DEFAULT 0 ,			/*B��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_14		int		DEFAULT 0 ,			/*B��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_15		int		DEFAULT 0 ,			/*B��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_16		int		DEFAULT 0 ,			/*B��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_17		int		DEFAULT 0 ,			/*B��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_18		int		DEFAULT 0 ,			/*B��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_19		int		DEFAULT 0 ,			/*B��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ib			int		DEFAULT 0 ,			/*B���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ib_02		int		DEFAULT 0 ,			/*B��2��г������Խ���ۼ�ʱ��*/
		xblmt_ib_03		int		DEFAULT 0 ,			/*B��3��г������Խ���ۼ�ʱ��*/
		xblmt_ib_04		int		DEFAULT 0 ,			/*B��4��г������Խ���ۼ�ʱ��*/
		xblmt_ib_05		int		DEFAULT 0 ,			/*B��5��г������Խ���ۼ�ʱ��*/
		xblmt_ib_06		int		DEFAULT 0 ,			/*B��6��г������Խ���ۼ�ʱ��*/
		xblmt_ib_07		int		DEFAULT 0 ,			/*B��7��г������Խ���ۼ�ʱ��*/
		xblmt_ib_08		int		DEFAULT 0 ,			/*B��8��г������Խ���ۼ�ʱ��*/
		xblmt_ib_09		int		DEFAULT 0 ,			/*B��9��г������Խ���ۼ�ʱ��*/
		xblmt_ib_10		int		DEFAULT 0 ,			/*B��10��г������Խ���ۼ�ʱ��*/
		xblmt_ib_11		int		DEFAULT 0 ,			/*B��11��г������Խ���ۼ�ʱ��*/
		xblmt_ib_12		int		DEFAULT 0 ,			/*B��12��г������Խ���ۼ�ʱ��*/
		xblmt_ib_13		int		DEFAULT 0 ,			/*B��13��г������Խ���ۼ�ʱ��*/
		xblmt_ib_14		int		DEFAULT 0 ,			/*B��14��г������Խ���ۼ�ʱ��*/
		xblmt_ib_15		int		DEFAULT 0 ,			/*B��15��г������Խ���ۼ�ʱ��*/
		xblmt_ib_16		int		DEFAULT 0 ,			/*B��16��г������Խ���ۼ�ʱ��*/
		xblmt_ib_17		int		DEFAULT 0 ,			/*B��17��г������Խ���ۼ�ʱ��*/
		xblmt_ib_18		int		DEFAULT 0 ,			/*B��18��г������Խ���ۼ�ʱ��*/
		xblmt_ib_19		int		DEFAULT 0 ,			/*B��19��г������Խ���ۼ�ʱ��*/
		xblmt_vc			int		DEFAULT 0 ,			/*C���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_02		int		DEFAULT 0 ,			/*C��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_03		int		DEFAULT 0 ,			/*C��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_04		int		DEFAULT 0 ,			/*C��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_05		int		DEFAULT 0 ,			/*C��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_06		int		DEFAULT 0 ,			/*C��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_07		int		DEFAULT 0 ,			/*C��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_08		int		DEFAULT 0 ,			/*C��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_09		int		DEFAULT 0 ,			/*C��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_10		int		DEFAULT 0 ,			/*C��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_11		int		DEFAULT 0 ,			/*C��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_12		int		DEFAULT 0 ,			/*C��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_13		int		DEFAULT 0 ,			/*C��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_14		int		DEFAULT 0 ,			/*C��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_15		int		DEFAULT 0 ,			/*C��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_16		int		DEFAULT 0 ,			/*C��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_17		int		DEFAULT 0 ,			/*C��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_18		int		DEFAULT 0 ,			/*C��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_19		int		DEFAULT 0 ,			/*C��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ic			int		DEFAULT 0 ,			/*C���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ic_02		int		DEFAULT 0 ,			/*C��2��г������Խ���ۼ�ʱ��*/
		xblmt_ic_03		int		DEFAULT 0 ,			/*C��3��г������Խ���ۼ�ʱ��*/
		xblmt_ic_04		int		DEFAULT 0 ,			/*C��4��г������Խ���ۼ�ʱ��*/
		xblmt_ic_05		int		DEFAULT 0 ,			/*C��5��г������Խ���ۼ�ʱ��*/
		xblmt_ic_06		int		DEFAULT 0 ,			/*C��6��г������Խ���ۼ�ʱ��*/
		xblmt_ic_07		int		DEFAULT 0 ,			/*C��7��г������Խ���ۼ�ʱ��*/
		xblmt_ic_08		int		DEFAULT 0 ,			/*C��8��г������Խ���ۼ�ʱ��*/
		xblmt_ic_09		int		DEFAULT 0 ,			/*C��9��г������Խ���ۼ�ʱ��*/
		xblmt_ic_10		int		DEFAULT 0 ,			/*C��10��г������Խ���ۼ�ʱ��*/
		xblmt_ic_11		int		DEFAULT 0 ,			/*C��11��г������Խ���ۼ�ʱ��*/
		xblmt_ic_12		int		DEFAULT 0 ,			/*C��12��г������Խ���ۼ�ʱ��*/
		xblmt_ic_13		int		DEFAULT 0 ,			/*C��13��г������Խ���ۼ�ʱ��*/
		xblmt_ic_14		int		DEFAULT 0 ,			/*C��14��г������Խ���ۼ�ʱ��*/
		xblmt_ic_15		int		DEFAULT 0 ,			/*C��15��г������Խ���ۼ�ʱ��*/
		xblmt_ic_16		int		DEFAULT 0 ,			/*C��16��г������Խ���ۼ�ʱ��*/
		xblmt_ic_17		int		DEFAULT 0 ,			/*C��17��г������Խ���ۼ�ʱ��*/
		xblmt_ic_18		int		DEFAULT 0 ,			/*C��18��г������Խ���ۼ�ʱ��*/
		xblmt_ic_19		int		DEFAULT 0 			/*C��19��г������Խ���ۼ�ʱ��*/
)
grant select on  NMonXbLmt2008 to public
create unique clustered index NMonXbLmt2008index1
	on NMonXbLmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���ܼ����������ݱ�(NGMinQx200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NGMinQx200808')
begin
create table NGMinQx200808
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	p					decimal(14, 3) 	DEFAULT 0.0 ,	/*	�й�����*/
	q					decimal(14, 3) 	DEFAULT 0.0 ,	/*	�޹�����*/
	ygdl			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�й�����*/
	wgdl			decimal(14, 3) 	DEFAULT 0.0	  /*	�޹�����*/
)
grant select on  NGMinQx200808 to public
create unique clustered index ZGMinSsl200808index1
	on NGMinQx200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ũ���ܼ����չ��ʼ�ֵ���ݱ�(NGDayPMax200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NGDayPMax200808')
begin
create table NGDayPMax200808
(
		rtu_id				int			   			not null,
		group_id			smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  NGDayPMax200808 to public
create unique clustered index NGDayPMax200808index1
	on NGDayPMax200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���ܼ����յ������ݱ�(NGDayDl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NGDayDl200808')
begin
create table NGDayDl200808
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_1xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*һ�����޹�����*/	
	dl_2xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_3xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/	
	dl_4xx		decimal(14, 3) 	DEFAULT 0.0 ,	/*�������޹�����*/
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  NGDayDl200808 to public
create unique clustered index NGDayDl200808index1
	on NGDayDl200808(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���ܼ����¹��ʼ�ֵ���ݱ�(NGMonMaxP2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NGMonMaxP2008')
begin
create table NGMonMaxP2008
(
		rtu_id				int   					not null,
		group_id			smallint   			not null,
		date					int							not null,
		time					int							not null,
		ext_p_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*������й�����*/	
		ext_p_max_tm	int		DEFAULT 0 ,							/*������й����ʷ���ʱ��*/
		ext_p_a				decimal(14, 3) 	DEFAULT 0.0 ,	/*A������й�����*/
		ext_p_a_tm		int		DEFAULT 0 ,							/*A������й����ʷ���ʱ��*/
		ext_p_b				decimal(14, 3) 	DEFAULT 0.0 ,	/*B������й�����*/
		ext_p_b_tm		int		DEFAULT 0 ,							/*B������й����ʷ���ʱ��*/
		ext_p_c				decimal(14, 3) 	DEFAULT 0.0 ,	/*C������й�����*/
		ext_p_c_tm		int		DEFAULT 0 ,							/*C������й����ʷ���ʱ��*/
		ext_p_min			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�С����*/
		ext_p_min_tm	int		DEFAULT 0 ,							/*����С�й����ʷ���ʱ��*/
		ext_p_0_tm		int		DEFAULT 0 ,							/*���й�����Ϊ��ʱ��*/
		ext_p_a0_tm		int		DEFAULT 0 ,							/*A���й�����Ϊ��ʱ��*/
		ext_p_b0_tm		int		DEFAULT 0 ,							/*B���й�����Ϊ��ʱ��*/
		ext_p_c0_tm		int		DEFAULT 0								/*C���й�����Ϊ��ʱ��*/
)
grant select on  NGMonMaxP2008 to public
create unique clustered index NGMonMaxP2008index1
	on NGMonMaxP2008(rtu_id,group_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ũ���ܼ����µ������ݱ�(NGMonDl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NGMonDl2008')
begin
create table NGMonDl2008
(
	rtu_id		int   					not null,
	group_id	smallint   			not null,
	date			int							not null,
	time			int							not null,
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_zy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_zy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_zy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
	dl_fy_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	dl_fy_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ȵ���*/	
	dl_fy_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й������*/	
		
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_zw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_zw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_zw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_zw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/	
	dl_fw_fl1	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	dl_fw_fl2	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	dl_fw_fl3	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ȵ���*/	
	dl_fw_fl4	decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹������*/	
	
	dl_source	tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  NGMonDl2008 to public
create unique clustered index NGMonDl2008index1
	on NGMonDl2008(rtu_id,group_id,date,time)
end
go
-- ��ǽ���


--	'-------Create table ũ���õ��¼��(npyd_record2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'npyd_record2008')
begin
create table npyd_record2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	card_no				varchar(32)					not	null,			/*����*/
	
	area_id				int											null,
	farmer_id			smallint								null,
	farmer_no			varchar(64)							null,

	begin_date		int									not	null,			/*��ʼ����*/
	begin_time		int									not	null,			/*��ʼʱ��*/	
	end_date			int									not	null,			/*��������*/
	end_time			int									not	null,			/*����ʱ��*/		
	fee						decimal(12,6)						null,			/*����*/
	use_money			decimal(12,2)						null,			/*�����õ���*/	
	remain_money  decimal(12,2)						null,			/*ʣ����*/	
	use_dl				decimal(12,2)						null,			/*�����õ����*/	
	zero_dl				decimal(12,2)						null,			/*���ι������*/	
	farmer_state	tinyint									null,			/*�õ�״̬ 0 ���� 1 ϵͳͣ�� 2 �������Զ���բ 3��Ϊ����*/
)
grant select on npyd_record2008 to public
create unique clustered index npyd_record2008index1
	on npyd_record2008(rtu_id,mp_id,begin_date,begin_time)
create index npyd_record2008index2
	on npyd_record2008(card_no,begin_date,begin_time)
end
go
-- ��ǽ���


--hzhw 20130311
--	'-------Create table ũ�Ź����¼��(npgq_record2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'npgq_record2008')
begin
create table npgq_record2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	card_no				varchar(32)					not	null,			/*����*/
	
	begin_date		int									not	null,			/*��ʼ����*/
	begin_time		int									not	null,			/*��ʼʱ��*/	
	gq_date			  int									not	null,			/*��������*/
	gq_time			  int									not	null,			/*����ʱ��*/		
	fee						decimal(12,6)						null,			/*����*/
	use_money			decimal(12,2)						null,			/*�����õ���*/	
	remain_money  decimal(12,2)						null,			/*ʣ����*/	
	
	use_dl				decimal(12,2)						null,			/*�����õ����*/	
	zero_dl				decimal(12,2)						null,			/*���ι������*/	
	farmer_state	tinyint									null,			/*�õ�״̬ 0 ���� 1 ϵͳͣ�� 2 �������Զ���բ 3��Ϊ����*/
)
grant select on npgq_record2008 to public
create unique clustered index npgq_record2008index1
	on npgq_record2008(rtu_id,mp_id,begin_date,begin_time)
create index npgq_record2008index2
	on npgq_record2008(card_no,begin_date,begin_time)
end
go
-- ��ǽ���

----------------------ũ��Ӧ�ý���--------------------------------------------


----------------------ϵͳ���ʼ------------------------------------------------

--   '-------Create table ��ʷ�����(eve200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'eve200808')
begin
create table eve200808
(
    classno    			smallint      	null,
    typeno  				smallint      	not null,
    ymd        			int           	not null,
    hmsms    	 			int           	not null,
    voltgrade	  		tinyint		 			null,
    output        	tinyint       	null,
    member_id0  		int      				not null,
    member_id1  		int      				not null,
    member_id2  		int      				not null,
    double_value0  	decimal(14, 3)	null,
    double_value1  	decimal(14, 3)	null,
    double_value2  	decimal(14, 3)	null,
    double_value3  	decimal(14, 3)	null,
    state_value0  	tinyint       	null,
    state_value1  	tinyint       	null,
    state_value2  	tinyint       	null,
    state_value3  	tinyint       	null,
    group_name  		varchar(16)     null,    
    member_name0  	varchar(16)     null,
    member_name1  	varchar(16)     null,
    member_name2  	varchar(16)     null,
    char_info  		varchar(255)    	null
)
grant select on eve200808 to public
create  clustered index  eve200808ind
	on eve200808(ymd,hmsms,typeno,member_id0,member_id1)  
end
go
-- ��ǽ���

--   '-------Create table ��ʷ����ݱ�(eve_kld200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'eve_kld200808')
begin
create table eve_kld200808
(
    classno    			smallint      	null,
    typeno  				smallint      	not null,
    ymd        			int           	not null,
    hmsms    	 			int           	not null,
    voltgrade	  		tinyint		 			null,
    output        	tinyint       	null,
    member_id0  		int      				not null,
    member_id1  		int      				not null,
    member_id2  		int      				not null,
    double_value0  	decimal(14, 3)	null,
    double_value1  	decimal(14, 3)	null,
    double_value2  	decimal(14, 3)	null,
    double_value3  	decimal(14, 3)	null,
    state_value0  	tinyint       	null,
    state_value1  	tinyint       	null,
    state_value2  	tinyint       	null,
    state_value3  	tinyint       	null,    
    group_name  		varchar(16)     null,
    member_name0  	varchar(16)    	null,
    member_name1  	varchar(16)     null,
    member_name2  	varchar(16)     null,    
    char_info  		varchar(255)    null
)
grant select on eve_kld200808 to public
create  clustered index  eve_kld200808ind
	on eve_kld200808(ymd,hmsms,typeno,member_id0,member_id1)  
end
go
-- ��ǽ���

--   '-------Create table ��ʷ������(eveproc200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'eveproc200808')
begin
create table eveproc200808
(
    classno       smallint       null,
    typeno      smallint       not null,
    ymd           int            not null,
    hmsms         int            not null,
    member_id0    int          not null,
    member_id1    int          not null,
    member_id2    int          not null,
  procmanid    smallint    null,
  procymd       int            null,
    prochmsms     int            null,
    procinfo     varchar(255)    null
)
grant select on eveproc200808 to public
create  clustered index  eveproc200808ind
 on eveproc200808(ymd,hmsms,typeno,member_id0,member_id1)  
end
go
-- ��ǽ���

----------------------�ɷѽ������ʼ------------------------------------------------

--   '-------Create table �ɷѽ��������(payjs200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'payjs200808')
begin
create table payjs200808
(
		ymd        			int           	not null,
    hmsms    	 			int           	not null,
    app_type				tinyint					not null, 
    ok_flag					tinyint					not null,
    double_value0  	decimal(14, 3)	null,
    double_value1  	decimal(14, 3)	null,
    state_value0  	tinyint       	null,
    state_value1  	tinyint       	null,
    member_name0  	varchar(16)     null,
    member_name1  	varchar(16)     null,
    char_info  			varchar(128)    null
)
grant select on payjs200808 to public
create  clustered index  payjs200808ind
	on payjs200808(ymd,hmsms,app_type,ok_flag)  
end
go
-- ��ǽ���
----------------------ϵͳ�������------------------------------------------------


--hzhw20110609
----------------------Ԥ���ѿ�ʼ------------------------------------------------

--	'-------Create table �ն�Ԥ���Ѽ�¼��(ZYff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZYff2008')
begin
create table ZYff2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	
	cons_id				smallint						not null,			/*�ͻ����*/
	cons_desc			varchar(64)							null,			/*�ͻ�����*/
	
	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ����  */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/
	
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*/
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	
	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/	
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*������2-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyf			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyp			decimal(12,2)						null,			/*������2-����ƽ���*/	
	jsbd1_zyg			decimal(12,2)						null,			/*������2-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*������3-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyf			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyp			decimal(12,2)						null,			/*������3-����ƽ���*/	
	jsbd2_zyg			decimal(12,2)						null,			/*������3-����ȱ��*/
	-- 20130108
	jsbd_zwz			decimal(12,2)						null,			/*������1-�����޹��ܱ��*/
	jsbd1_zwz			decimal(12,2)						null,			/*������2-�����޹��ܱ��*/
	jsbd2_zwz			decimal(12,2)						null,			/*������3-�����޹��ܱ��*/
	--20130108
	
	jsbd_ymd			int											null,			/*����ʱ��*/

	-- 20130108
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyf			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyp			decimal(12,2)		  			null,			/*���ʱƽ���*/
	calc_zyg			decimal(12,2)		  			null,			/*���ʱ�ȱ��*/
	              		                  
	calc1_zyz			decimal(12,2)		  			null,			/*��������1-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyf			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyp			decimal(12,2)		  			null,			/*��������1-���ʱƽ���*/
	calc1_zyg			decimal(12,2)		  			null,			/*��������1-���ʱ�ȱ��*/

	calc2_zyz			decimal(12,2)		  			null,			/*��������2-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyf			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyp			decimal(12,2)		  			null,			/*��������2-���ʱƽ���*/
	calc2_zyg			decimal(12,2)		  			null,			/*��������2-���ʱ�ȱ��*/

	calc_zwz			decimal(12,2)						null,			/*������1-����޹��ܱ��*/
	calc1_zwz			decimal(12,2)						null,			/*������2-����޹��ܱ��*/
	calc2_zwz			decimal(12,2)						null,			/*������3-����޹��ܱ��*/

	real_powrate	decimal(12,2)						null,			/*ʵ�ʹ�������*/
	ele_money		  decimal(12,2)						null,			/*��ȵ��*/
	jbf_money		  decimal(12,2)						null,			/*�����ѵ��*/
	powrate_money	decimal(12,2)						null,			/*�������*/
	other_money		decimal(12,2)						null,			/*�������*/
	
	now_remain		decimal(12,2)		  			null,			/*��ǰʣ��*/
	total_gdz			decimal(12,2)		  			null,			/*�ۼƹ���ֵ*/
	
	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/

	zbele_money	  decimal(12,2)						null,			/*׷����ȵ��*/
	zbjbf_money	  decimal(12,2)						null,			/*׷�������ѵ��*/
	zbother_money	decimal(12,2)						null,			/*׷���������*/
	--20130108

	alarm1				decimal(12,2)						null,			/*����ֵ1*/
	alarm2				decimal(12,2)						null,			/*����ֵ2*/

	lsttw_money		decimal(12,6)						null,			/*�ϴε�β���*/
	nowtw_money		decimal(12,6)						null,			/*���ε�β���*/

	buy_times			int											null,			/*�������*/
	
	cur_feeproj		smallint								null,			/*������1-��ǰ���ʺ�*/
	cur_feeproj1	smallint								null,			/*������2-��ǰ���ʺ�*/
	cur_feeproj2	smallint								null,			/*������3-��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/	

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
	
	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ���־*/
	checkpay_flag	tinyint									null			/*186�ϴ��ɹ���־*/
)
grant select on ZYff2008 to public
create clustered index ZYff2008index1
	on ZYff2008(rtu_id,zjg_id,op_date,op_time)	
end
go
-- ��ǽ���


--	'-------Create table �ն�Ԥ���Ѽ�¼���ݱ�(syszyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'syszyfrcd2008')
begin
create table syszyfrcd2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	
	cons_id				smallint						not null,			/*�ͻ����*/
	cons_desc			varchar(64)							null,			/*�ͻ�����*/
	
	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ����  */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/
	
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*/
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	
	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/	
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*������2-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyf			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyp			decimal(12,2)						null,			/*������2-����ƽ���*/	
	jsbd1_zyg			decimal(12,2)						null,			/*������2-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*������3-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyf			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyp			decimal(12,2)						null,			/*������3-����ƽ���*/	
	jsbd2_zyg			decimal(12,2)						null,			/*������3-����ȱ��*/
	-- 20130108
	jsbd_zwz			decimal(12,2)						null,			/*������1-�����޹��ܱ��*/
	jsbd1_zwz			decimal(12,2)						null,			/*������2-�����޹��ܱ��*/
	jsbd2_zwz			decimal(12,2)						null,			/*������3-�����޹��ܱ��*/
	--20130108
	
	jsbd_ymd			int											null,			/*����ʱ��*/

	-- 20130108
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyf			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyp			decimal(12,2)		  			null,			/*���ʱƽ���*/
	calc_zyg			decimal(12,2)		  			null,			/*���ʱ�ȱ��*/
	              		                  
	calc1_zyz			decimal(12,2)		  			null,			/*��������1-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyf			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyp			decimal(12,2)		  			null,			/*��������1-���ʱƽ���*/
	calc1_zyg			decimal(12,2)		  			null,			/*��������1-���ʱ�ȱ��*/

	calc2_zyz			decimal(12,2)		  			null,			/*��������2-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyf			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyp			decimal(12,2)		  			null,			/*��������2-���ʱƽ���*/
	calc2_zyg			decimal(12,2)		  			null,			/*��������2-���ʱ�ȱ��*/

	calc_zwz			decimal(12,2)						null,			/*������1-����޹��ܱ��*/
	calc1_zwz			decimal(12,2)						null,			/*������2-����޹��ܱ��*/
	calc2_zwz			decimal(12,2)						null,			/*������3-����޹��ܱ��*/

	real_powrate	decimal(12,2)						null,			/*ʵ�ʹ�������*/
	ele_money		  decimal(12,2)						null,			/*��ȵ��*/
	jbf_money		  decimal(12,2)						null,			/*�����ѵ��*/
	powrate_money	decimal(12,2)						null,			/*�������*/
	other_money		decimal(12,2)						null,			/*�������*/
	
	now_remain		decimal(12,2)		  			null,			/*��ǰʣ��*/
	total_gdz			decimal(12,2)		  			null,			/*�ۼƹ���ֵ*/
	
	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/

	zbele_money	  decimal(12,2)						null,			/*׷����ȵ��*/
	zbjbf_money	  decimal(12,2)						null,			/*׷�������ѵ��*/
	zbother_money	decimal(12,2)						null,			/*׷���������*/
	--20130108

	alarm1				decimal(12,2)						null,			/*����ֵ1*/
	alarm2				decimal(12,2)						null,			/*����ֵ2*/

	lsttw_money		decimal(12,6)						null,			/*�ϴε�β���*/
	nowtw_money		decimal(12,6)						null,			/*���ε�β���*/

	buy_times			int											null,			/*�������*/
	
	cur_feeproj		smallint								null,			/*������1-��ǰ���ʺ�*/
	cur_feeproj1	smallint								null,			/*������2-��ǰ���ʺ�*/
	cur_feeproj2	smallint								null,			/*������3-��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/	

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
	
	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ���־*/
	checkpay_flag	tinyint									null			/*186�ϴ��ɹ���־*/
)
grant select on syszyfrcd2008 to public
create clustered index syszyfrcd2008index1
	on syszyfrcd2008(rtu_id,zjg_id,op_date,op_time)	
end
go
-- ��ǽ���


--	'-------Create table ���ɿ��Ƽ�¼��(ZFk2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZFk2008')
begin
create table ZFk2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	cons_id				smallint						not null,			/*�ͻ����*/
		
	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null		
)
grant select on ZFk2008 to public
create unique clustered index ZFk2008index1
	on ZFk2008(rtu_id, zjg_id, op_date, op_time)
end
go
-- ��ǽ���


--	'-------Create table (syszcontrol2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'syszcontrol2008')
begin
create table syszcontrol2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	cons_id				smallint						not null,			/*�ͻ����*/

	op_date				int									not null,
	op_time				int									not null,

	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/

	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/

	reserve1		  int											null,
	reserve2		  int											null		
)
grant select on syszcontrol2008 to public
create unique clustered index syszcontrol2008index1
	on syszcontrol2008(rtu_id,zjg_id, op_date, op_time)
end
go
-- ��ǽ���



--	'-------Create table ���ʸ��ļ�¼��(ZFeeRateChg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZFeeRateChg2008')
begin
create table ZFeeRateChg2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	cons_id				smallint						not null,					/*�ͻ����*/

	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,					/*����Ա*/	

	/*�ɷ���*/
	old_id				smallint        				null,					/*���*/
	old_describe	varchar(64)     				null,					/*����*/
	
	/*add*/
	old_fee_type	tinyint									null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/
	
	old_areafee_f	tinyint				default 0 null,					/*ʱ����۱�־ 20141006*/
	old_rate_ext	decimal(12,6)			  		null,					/*���ӵ��*/

	/*������*/
	old_rated_z		decimal(12,6)			  		null,					/*�ܷ���*/
	old_rated2_z	decimal(12,6)			  		null,					/*�ܷ��� ��*/
	old_rated3_z	decimal(12,6)			  		null,					/*�ܷ��� ��*/

	/*������*/
	old_ratef_j		decimal(12,6)   				null,					/*�����*/
	old_ratef_f		decimal(12,6)			  		null,					/*�����*/	
	old_ratef_p		decimal(12,6)  					null,					/*ƽ����*/
	old_ratef_g		decimal(12,6)   				null,					/*�ȷ���*/

	old_ratef2_j	decimal(12,6)   				null,					/*�����*/
	old_ratef2_f	decimal(12,6)			  		null,					/*�����*/	
	old_ratef2_p	decimal(12,6)  					null,					/*ƽ����*/
	old_ratef2_g	decimal(12,6)   				null,					/*�ȷ���*/
	
	old_ratef3_j	decimal(12,6)   				null,					/*�����*/
	old_ratef3_f	decimal(12,6)			  		null,					/*�����*/	
	old_ratef3_p	decimal(12,6)  					null,					/*ƽ����*/
	old_ratef3_g	decimal(12,6)   				null,					/*�ȷ���*/	
	
	/*��Ϸ���*/
	old_rateh_1		decimal(12,6)   				null,					/*��Ϸ���1*/
	old_rateh_2		decimal(12,6)			  		null,					/*��Ϸ���2*/	
	old_rateh_3		decimal(12,6)  					null,					/*��Ϸ���3*/
	old_rateh_4		decimal(12,6)   				null,					/*��Ϸ���4*/	
	
	old_rateh_bl1	tinyint									null,					/*��ϱ���1*/	
	old_rateh_bl2	tinyint									null,					/*��ϱ���2*/		
	old_rateh_bl3	tinyint									null,					/*��ϱ���3*/		
	old_rateh_bl4	tinyint									null,					/*��ϱ���4*/		
	
	/*���ݵ��*/
	/*���ݵ��*/
	old_ratej_type 			tinyint									null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	old_ratej_num 			tinyint									null,					/*���ݵ����*/
	old_meterfee_type		tinyint									null,					/*����������  1������ 2������*/
	old_meterfee_r			decimal(12,6)   				null,					/*���ִ�е��*/
	
	old_ratej_r1				decimal(12,6)   				null,					/*���ݷ���1*/
	old_ratej_r2				decimal(12,6)			  		null,					/*���ݷ���2*/	
	old_ratej_r3				decimal(12,6)  					null,					/*���ݷ���3*/
	old_ratej_r4				decimal(12,6)   				null,					/*���ݷ���4*/

	old_ratej_td1				decimal(12,6)						null,					/*�����ݶ�ֵ1*/
	old_ratej_td2				decimal(12,6)						null,					/*�����ݶ�ֵ2*/
	old_ratej_td3				decimal(12,6)						null,					/*�����ݶ�ֵ3*/

/*��Ͻ��ݵ��*/
	old_ratehj_type 		tinyint									null,					/*���ݵ������*/ 	/*0 ��ȷ���, 1�¶ȷ���*/
	old_ratehj_num			tinyint									null,					/*���ݵ����*/
	
	old_meterfeehj_type	tinyint									null,					/*����������  0������ 1������ 20120704*/
	old_meterfeehj_r		decimal(12,6)   				null,					/*���ִ�е��*/
	
	old_ratehj_hr1_r1		decimal(12,6)   				null,					/*��1�������-���ݷ���1*/
	old_ratehj_hr1_r2		decimal(12,6)						null,					/*��1�������-���ݷ���2*/
	old_ratehj_hr1_r3		decimal(12,6)  					null,					/*��1�������-���ݷ���3*/
	old_ratehj_hr1_r4		decimal(12,6)   				null,					/*��1�������-���ݷ���4*/
		
	old_ratehj_hr1_td1	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ1*/
	old_ratehj_hr1_td2	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ2*/
	old_ratehj_hr1_td3	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ3*/
	
	old_ratehj_hr2			decimal(12,6)   				null,					/*��2�������*/
	old_ratehj_hr3			decimal(12,6)   				null,					/*��3�������*/
	
	old_ratehj_bl1			tinyint									null,					/*��ϱ���1*/	
	old_ratehj_bl2			tinyint									null,					/*��ϱ���2*/	
	old_ratehj_bl3			tinyint									null,					/*��ϱ���3*/	
	
	/*�·���*/
	new_id							smallint        				null,					/*���*/
	new_describe				varchar(64)     				null,					/*����*/
	
	/*add*/
	new_fee_type				tinyint									null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/

	new_areafee_f				tinyint				default 0 null,					/*ʱ����۱�־ 20141006*/
	new_rate_ext				decimal(12,6)				  	null,					/*���ӵ��*/
	
	/*������*/
	new_rated_z					decimal(12,6)				  	null,					/*�ܷ���*/
	new_rated2_z				decimal(12,6)				  	null,					/*�ܷ���*/
	new_rated3_z				decimal(12,6)			  		null,					/*�ܷ���*/
	
	/*������*/
	new_ratef_j					decimal(12,6)		   			null,					/*�����*/
	new_ratef_f					decimal(12,6)				  	null,					/*�����*/	
	new_ratef_p					decimal(12,6)	  				null,					/*ƽ����*/
	new_ratef_g					decimal(12,6)		   			null,					/*�ȷ���*/
	
	new_ratef2_j				decimal(12,6)   				null,					/*�����*/
	new_ratef2_f				decimal(12,6)				  	null,					/*�����*/	
	new_ratef2_p				decimal(12,6)  					null,					/*ƽ����*/
	new_ratef2_g				decimal(12,6)   				null,					/*�ȷ���*/
	
	new_ratef3_j				decimal(12,6)		   			null,					/*�����*/
	new_ratef3_f				decimal(12,6)				  	null,					/*�����*/	
	new_ratef3_p				decimal(12,6)  					null,					/*ƽ����*/
	new_ratef3_g				decimal(12,6)   				null,					/*�ȷ���*/
	
	/*��Ϸ���*/
	new_rateh_1					decimal(12,6)   				null,					/*��Ϸ���1*/
	new_rateh_2					decimal(12,6)			  		null,					/*��Ϸ���2*/	
	new_rateh_3					decimal(12,6)  					null,					/*��Ϸ���3*/
	new_rateh_4					decimal(12,6)   				null,					/*��Ϸ���4*/	
	
	new_rateh_bl1				tinyint									null,					/*��ϱ���1*/	
	new_rateh_bl2				tinyint									null,					/*��ϱ���2*/		
	new_rateh_bl3				tinyint									null,					/*��ϱ���3*/		
	new_rateh_bl4				tinyint									null,					/*��ϱ���4*/		
	
	/*���ݵ��*/
	new_ratej_type 			tinyint									null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	new_ratej_num 			tinyint									null,					/*���ݵ����*/	
	new_meterfee_type		tinyint									null,					/*����������  1������ 2������*/
	new_meterfee_r			decimal(12,6)   				null,					/*���ִ�е��*/
		
	new_ratej_r1				decimal(12,6)   				null,					/*���ݷ���1*/
	new_ratej_r2				decimal(12,6)			  		null,					/*���ݷ���2*/	
	new_ratej_r3				decimal(12,6)  					null,					/*���ݷ���3*/
	new_ratej_r4				decimal(12,6)   				null,					/*���ݷ���4*/

	new_ratej_td1				decimal(12,6)						null,					/*�����ݶ�ֵ1*/
	new_ratej_td2				decimal(12,6)						null,					/*�����ݶ�ֵ2*/
	new_ratej_td3				decimal(12,6)						null,					/*�����ݶ�ֵ3*/

	/*��Ͻ��ݵ��*/
	new_ratehj_type 		tinyint									null,					/*���ݵ������*/ 	/*0 ��ȷ���, 1�¶ȷ���*/
	new_ratehj_num			tinyint									null,					/*���ݵ����*/
	
	new_meterfeehj_type	tinyint									null,					/*����������  0������ 1������ 20120704*/
	new_meterfeehj_r		decimal(12,6)   				null,					/*���ִ�е��*/
	
	new_ratehj_hr1_r1		decimal(12,6)   				null,					/*��1�������-���ݷ���1*/
	new_ratehj_hr1_r2		decimal(12,6)						null,					/*��1�������-���ݷ���2*/
	new_ratehj_hr1_r3		decimal(12,6)  					null,					/*��1�������-���ݷ���3*/
	new_ratehj_hr1_r4		decimal(12,6)   				null,					/*��1�������-���ݷ���4*/
		
	new_ratehj_hr1_td1	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ1*/
	new_ratehj_hr1_td2	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ2*/
	new_ratehj_hr1_td3	decimal(12,6)						null,					/*��1�������-�����ݶ�ֵ3*/
	
	new_ratehj_hr2			decimal(12,6)   				null,					/*��2�������*/
	new_ratehj_hr3			decimal(12,6)   				null,					/*��3�������*/
	
	new_ratehj_bl1			tinyint									null,					/*��ϱ���1*/	
	new_ratehj_bl2			tinyint									null,					/*��ϱ���2*/	
	new_ratehj_bl3			tinyint									null,					/*��ϱ���3*/
	
	reserve1		  			int											null,
	reserve2		  			int											null		
)
grant select on ZFeeRateChg2008 to public
create unique clustered index ZFeeRateChg2008index1
	on ZFeeRateChg2008(rtu_id, zjg_id, op_date, op_time)
end
go
-- ��ǽ���

--	'-------Create table ���ӷѸ��ļ�¼��(ZPayAddChg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZPayAddChg2008')
begin
create table ZPayAddChg2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	cons_id				smallint						not null,					/*�ͻ����*/

	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,					/*����Ա*/	

	old_payadd1		decimal(12,6)   				null,					/*�ɸ��ӷ�1*/
	old_payadd2		decimal(12,6)   				null,					/*�ɸ��ӷ�2*/
	old_payadd3		decimal(12,6)   				null,					/*�ɸ��ӷ�3*/
			
	new_payadd1		decimal(12,6)   				null,					/*�¸��ӷ�*/
	new_payadd2		decimal(12,6)   				null,					/*�¸��ӷ�*/
	new_payadd3		decimal(12,6)   				null,					/*�¸��ӷ�*/		
	
	reserve1		  int											null,
	reserve2		  int											null		
)
grant select on ZPayAddChg2008 to public
create unique clustered index ZPayAddChg2008index1
	on ZPayAddChg2008(rtu_id, zjg_id, op_date, op_time)
end
go
-- ��ǽ���

--	'-------Create table ������Ԥ���Ѽ�¼��(JYff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JYff2008')
begin
create table JYff2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	
	res_id				smallint						not null,			/*�ͻ����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	--add 201406
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*//*����д������*/
	--end
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���*/
	--20130108
	shutdown_val2	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ����ģ���� */	
	--20130108

	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/	
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*������2-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyf			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyp			decimal(12,2)						null,			/*������2-����ƽ���*/	
	jsbd1_zyg			decimal(12,2)						null,			/*������2-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*������3-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyf			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyp			decimal(12,2)						null,			/*������3-����ƽ���*/	
	jsbd2_zyg			decimal(12,2)						null,			/*������3-����ȱ��*/

	jsbd_ymd			int											null,			/*����ʱ��*/

	--20130108
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyf			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyp			decimal(12,2)		  			null,			/*���ʱƽ���*/
	calc_zyg			decimal(12,2)		  			null,			/*���ʱ�ȱ��*/

	calc1_zyz			decimal(12,2)		  			null,			/*��������1-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyf			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyp			decimal(12,2)		  			null,			/*��������1-���ʱƽ���*/
	calc1_zyg			decimal(12,2)		  			null,			/*��������1-���ʱ�ȱ��*/

	calc2_zyz			decimal(12,2)		  			null,			/*��������2-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyf			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyp			decimal(12,2)		  			null,			/*��������2-���ʱƽ���*/
	calc2_zyg			decimal(12,2)		  			null,			/*��������2-���ʱ�ȱ��*/

	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/
	now_remain2		decimal(12,2)						null,			/*��ǰʣ�� ����ģ����*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl	decimal(12,2)						null,			/*����׷���ۼ��õ���*/
	jt_total_dl		decimal(12,2)						null,			/*�����ۼ��õ���*/
	--20130108

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		
	alarm2				decimal(12,2)						null,			/*����ֵ2*/			

	buy_times			int											null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on JYff2008 to public
create clustered index JYff2008index1
	on JYff2008(rtu_id,mp_id,op_date,op_time,op_type)	
create index JYff2008index2 
	on JYff2008(rtu_id,res_id,op_date,op_time,op_type)  
end
go
-- ��ǽ���


--	'-------Create table ������Ԥ���Ѽ�¼����(sysjyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysjyfrcd2008')
begin
create table sysjyfrcd2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	
	res_id				smallint						not null,			/*�ͻ����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	--add 201406
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*//*����д������*/
	--end

	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���*/
	--20130108
	shutdown_val2	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ����ģ���� */	
	--20130108

	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/	
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/	
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*������2-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyf			decimal(12,2)						null,			/*������2-�������*/	
	jsbd1_zyp			decimal(12,2)						null,			/*������2-����ƽ���*/	
	jsbd1_zyg			decimal(12,2)						null,			/*������2-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*������3-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyf			decimal(12,2)						null,			/*������3-�������*/	
	jsbd2_zyp			decimal(12,2)						null,			/*������3-����ƽ���*/	
	jsbd2_zyg			decimal(12,2)						null,			/*������3-����ȱ��*/

	jsbd_ymd			int											null,			/*����ʱ��*/

	--20130108
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyf			decimal(12,2)		  			null,			/*���ʱ����*/
	calc_zyp			decimal(12,2)		  			null,			/*���ʱƽ���*/
	calc_zyg			decimal(12,2)		  			null,			/*���ʱ�ȱ��*/

	calc1_zyz			decimal(12,2)		  			null,			/*��������1-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyf			decimal(12,2)		  			null,			/*��������1-���ʱ����*/
	calc1_zyp			decimal(12,2)		  			null,			/*��������1-���ʱƽ���*/
	calc1_zyg			decimal(12,2)		  			null,			/*��������1-���ʱ�ȱ��*/

	calc2_zyz			decimal(12,2)		  			null,			/*��������2-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyf			decimal(12,2)		  			null,			/*��������2-���ʱ����*/
	calc2_zyp			decimal(12,2)		  			null,			/*��������2-���ʱƽ���*/
	calc2_zyg			decimal(12,2)		  			null,			/*��������2-���ʱ�ȱ��*/

	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/
	now_remain2		decimal(12,2)						null,			/*��ǰʣ�� ����ģ����*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl	decimal(12,2)						null,			/*����׷���ۼ��õ���*/
	jt_total_dl		decimal(12,2)						null,			/*�����ۼ��õ���*/
	--20130108

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		
	alarm2				decimal(12,2)						null,			/*����ֵ2*/			

	buy_times			int											null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on sysjyfrcd2008 to public
create clustered index sysjyfrcd2008index1
	on sysjyfrcd2008(rtu_id,mp_id,op_date,op_time,op_type)	
create index sysjyfrcd2008index2 
	on sysjyfrcd2008(rtu_id,res_id,op_date,op_time,op_type)  
end
go
-- ��ǽ���


--	'-------Create table ���ɿ��Ƽ�¼��(JFk2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFk2008')
begin
create table JFk2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,
	res_id				smallint						not null,			/*�ͻ����*/
		
	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null
)
grant select on JFk2008 to public
create unique clustered index JFk2008index1
	on JFk2008(rtu_id, mp_id, op_date, op_time)
create index JFk2008index2 
	on JFk2008(rtu_id,res_id,op_date,op_time)  
end
go
-- ��ǽ���



--	'-------Create table (sysjcontrol2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysjcontrol2008')
begin
create table sysjcontrol2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,
	res_id				smallint						not null,			/*�ͻ����*/
		
	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null
)
grant select on sysjcontrol2008 to public
create unique clustered index sysjcontrol2008index1
	on sysjcontrol2008(rtu_id,mp_id, op_date, op_time)
create index sysjcontrolindex2 
	on sysjcontrol2008(rtu_id,res_id,op_date,op_time)  	
end
go
-- ��ǽ���



--	'-------Create table ���ʸ��ļ�¼��(JFeeRateChg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFeeRateChg2008')
begin
create table JFeeRateChg2008
(
	rtu_id						int						  		not null,
	mp_id							smallint  					not null,
	res_id						smallint						not null,					/*�ͻ����*/

	op_date						int									not null,
	op_time						int									not null,
	
	op_man						char(64)								null,					/*����Ա*/	

	/*�ɷ���*/
	old_id						smallint        				null,					/*���*/
	old_describe			varchar(64)     				null,					/*����*/
	
	/*add*/
	old_fee_type			tinyint									null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/

	old_areafee_f			tinyint			default 0 	null,					/*ʱ����۱�־ 20141006*/
	old_rate_ext			decimal(12,6)	  				null,					/*���ӵ��*/
	
	/*������*/
	old_rated_z				decimal(12,6)			  		null,					/*�ܷ���*/
	old_rated2_z			decimal(12,6)			  		null,					/*�ܷ��� ��*/
	old_rated3_z			decimal(12,6)			  		null,					/*�ܷ��� ��*/

	/*������*/
	old_ratef_j				decimal(12,6)   				null,					/*�����*/
	old_ratef_f				decimal(12,6)			  		null,					/*�����*/
	old_ratef_p				decimal(12,6)  					null,					/*ƽ����*/
	old_ratef_g				decimal(12,6)   				null,					/*�ȷ���*/

	old_ratef2_j			decimal(12,6)   				null,					/*�����*/
	old_ratef2_f			decimal(12,6)			  		null,					/*�����*/
	old_ratef2_p			decimal(12,6)  					null,					/*ƽ����*/
	old_ratef2_g			decimal(12,6)   				null,					/*�ȷ���*/
	
	old_ratef3_j			decimal(12,6)   				null,					/*�����*/
	old_ratef3_f			decimal(12,6)			  		null,					/*�����*/
	old_ratef3_p			decimal(12,6)  					null,					/*ƽ����*/
	old_ratef3_g			decimal(12,6)   				null,					/*�ȷ���*/
	
	/*��Ϸ���*/
	old_rateh_1				decimal(12,6)   				null,					/*��Ϸ���1*/
	old_rateh_2				decimal(12,6)			  		null,					/*��Ϸ���2*/	
	old_rateh_3				decimal(12,6)  					null,					/*��Ϸ���3*/
	old_rateh_4				decimal(12,6)   				null,					/*��Ϸ���4*/	
	
	old_rateh_bl1			tinyint									null,					/*��ϱ���1*/	
	old_rateh_bl2			tinyint									null,					/*��ϱ���2*/		
	old_rateh_bl3			tinyint									null,					/*��ϱ���3*/		
	old_rateh_bl4			tinyint									null,					/*��ϱ���4*/		
	
	/*���ݵ��*/
	old_ratej_type 		tinyint									null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	old_ratej_num 		tinyint									null,					/*���ݵ����*/
	old_meterfee_type	tinyint									null,					/*����������  1������ 2������*/
	old_meterfee_r		decimal(12,6)   				null,					/*���ִ�е��*/
		
	old_ratej_r1			decimal(12,6)   				null,					/*���ݷ���1*/
	old_ratej_r2			decimal(12,6)			  		null,					/*���ݷ���2*/	
	old_ratej_r3			decimal(12,6)  					null,					/*���ݷ���3*/
	old_ratej_r4			decimal(12,6)   				null,					/*���ݷ���4*/
		
	old_ratej_td1			decimal(12,6)						null,					/*�����ݶ�ֵ1*/
	old_ratej_td2			decimal(12,6)						null,					/*�����ݶ�ֵ2*/
	old_ratej_td3			decimal(12,6)						null,					/*�����ݶ�ֵ3*/

	/*��Ͻ��ݵ��*/
	old_ratehj_type 		tinyint								null,					/*���ݵ������*/ 	/*0 ��ȷ���, 1�¶ȷ���*/
	old_ratehj_num			tinyint								null,					/*���ݵ����*/
	
	old_meterfeehj_type	tinyint								null,					/*����������  0������ 1������ 20120704*/
	old_meterfeehj_r		decimal(12,6)   			null,					/*���ִ�е��*/
	
	old_ratehj_hr1_r1		decimal(12,6)   			null,					/*��1�������-���ݷ���1*/
	old_ratehj_hr1_r2		decimal(12,6)					null,					/*��1�������-���ݷ���2*/
	old_ratehj_hr1_r3		decimal(12,6)  				null,					/*��1�������-���ݷ���3*/
	old_ratehj_hr1_r4		decimal(12,6)   			null,					/*��1�������-���ݷ���4*/
		
	old_ratehj_hr1_td1	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ1*/
	old_ratehj_hr1_td2	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ2*/
	old_ratehj_hr1_td3	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ3*/
	
	old_ratehj_hr2			decimal(12,6)   			null,					/*��2�������*/
	old_ratehj_hr3			decimal(12,6)   			null,					/*��3�������*/
	
	old_ratehj_bl1			tinyint								null,					/*��ϱ���1*/	
	old_ratehj_bl2			tinyint								null,					/*��ϱ���2*/	
	old_ratehj_bl3			tinyint								null,					/*��ϱ���3*/	

	/*�·���*/
	new_id							smallint        			null,					/*���*/
	new_describe				varchar(64)     			null,					/*����*/
	
	/*add*/
	new_fee_type				tinyint								null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/
	
	new_areafee_f				tinyint			default 0 null,					/*ʱ����۱�־ 20141006*/
	new_rate_ext				decimal(12,6)			  	null,					/*���ӵ��*/
	
	/*������*/
	new_rated_z					decimal(12,6)			  	null,					/*�ܷ���*/
	new_rated2_z				decimal(12,6)			  	null,					/*�ܷ���*/
	new_rated3_z				decimal(12,6)			  	null,					/*�ܷ���*/
	
	/*������*/
	new_ratef_j					decimal(12,6)   			null,					/*�����*/
	new_ratef_f					decimal(12,6)			  	null,					/*�����*/	
	new_ratef_p					decimal(12,6)  				null,					/*ƽ����*/
	new_ratef_g					decimal(12,6)   			null,					/*�ȷ���*/
	
	new_ratef2_j				decimal(12,6)   			null,					/*�����*/
	new_ratef2_f				decimal(12,6)			  	null,					/*�����*/	
	new_ratef2_p				decimal(12,6)  				null,					/*ƽ����*/
	new_ratef2_g				decimal(12,6)   			null,					/*�ȷ���*/
	
	new_ratef3_j				decimal(12,6)   			null,					/*�����*/
	new_ratef3_f				decimal(12,6)			  	null,					/*�����*/	
	new_ratef3_p				decimal(12,6)  				null,					/*ƽ����*/
	new_ratef3_g				decimal(12,6)   			null,					/*�ȷ���*/

	/*��Ϸ���*/
	new_rateh_1					decimal(12,6)   			null,					/*��Ϸ���1*/
	new_rateh_2					decimal(12,6)			  	null,					/*��Ϸ���2*/	
	new_rateh_3					decimal(12,6)  				null,					/*��Ϸ���3*/
	new_rateh_4					decimal(12,6)   			null,					/*��Ϸ���4*/	
	              			
	new_rateh_bl1				tinyint								null,					/*��ϱ���1*/	
	new_rateh_bl2				tinyint								null,					/*��ϱ���2*/		
	new_rateh_bl3				tinyint								null,					/*��ϱ���3*/		
	new_rateh_bl4				tinyint								null,					/*��ϱ���4*/		
	
	/*���ݵ��*/
	new_ratej_type 			tinyint								null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	new_ratej_num 			tinyint								null,					/*���ݵ����*/	
	new_meterfee_type		tinyint								null,					/*����������  1������ 2������*/
	new_meterfee_r			decimal(12,6)   			null,					/*���ִ�е��*/
	                                        	
	new_ratej_r1				decimal(12,6)   			null,					/*���ݷ���1*/
	new_ratej_r2				decimal(12,6)			  	null,					/*���ݷ���2*/	
	new_ratej_r3				decimal(12,6)  				null,					/*���ݷ���3*/
	new_ratej_r4				decimal(12,6)   			null,					/*���ݷ���4*/

	new_ratej_td1				decimal(12,6)					null,					/*�����ݶ�ֵ1*/
	new_ratej_td2				decimal(12,6)					null,					/*�����ݶ�ֵ2*/
	new_ratej_td3				decimal(12,6)					null,					/*�����ݶ�ֵ3*/

	/*��Ͻ��ݵ��*/
	new_ratehj_type 		tinyint								null,					/*���ݵ������*/ 	/*0 ��ȷ���, 1�¶ȷ���*/
	new_ratehj_num			tinyint								null,					/*���ݵ����*/
	
	new_meterfeehj_type	tinyint								null,					/*����������  0������ 1������ 20120704*/
	new_meterfeehj_r		decimal(12,6)   			null,					/*���ִ�е��*/
	
	new_ratehj_hr1_r1		decimal(12,6)   			null,					/*��1�������-���ݷ���1*/
	new_ratehj_hr1_r2		decimal(12,6)					null,					/*��1�������-���ݷ���2*/
	new_ratehj_hr1_r3		decimal(12,6)  				null,					/*��1�������-���ݷ���3*/
	new_ratehj_hr1_r4		decimal(12,6)   			null,					/*��1�������-���ݷ���4*/
		
	new_ratehj_hr1_td1	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ1*/
	new_ratehj_hr1_td2	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ2*/
	new_ratehj_hr1_td3	decimal(12,6)					null,					/*��1�������-�����ݶ�ֵ3*/
	
	new_ratehj_hr2			decimal(12,6)   			null,					/*��2�������*/
	new_ratehj_hr3			decimal(12,6)   			null,					/*��3�������*/
	
	new_ratehj_bl1			tinyint								null,					/*��ϱ���1*/	
	new_ratehj_bl2			tinyint								null,					/*��ϱ���2*/	
	new_ratehj_bl3			tinyint								null,					/*��ϱ���3*/
	reserve1		 				int										null,
	reserve2		 				int										null		
)
grant select on JFeeRateChg2008 to public
create unique clustered index JFeeRateChg2008index1
	on JFeeRateChg2008(rtu_id, mp_id, op_date, op_time)
end
go
-- ��ǽ���

----------------------Ԥ���ѽ���------------------------------------------------



----------------------�ۺ�Ӧ�ÿ�ʼ------------------------------------------------

--   '-------Create table ������־��¼(operlog2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'operlog2008')
begin
create table operlog2008
(
	oper_id				smallint   			not null,	/*����Ա���*/
	date					int							not null,	/*����*/	
	time					int							not null,	/*ʱ��*/
	log_index			int							not null, /*index flag*/	
	opertype			tinyint							null,	/*�������� 0 ��¼ 1 �˳�*/
--ipAddr				varchar(32)					null,	/*ip��ַ*/
	oper_info  		varchar(256)    		null,	/*��������*/
	reserve1			int								  null,
	reserve2			decimal(12,3)   		null,
	reserve3			varchar(40)      		null
)
grant select on  operlog2008 to public
create unique clustered index operlog2008index1
	on operlog2008(oper_id,date,time,log_index)
end
go
-- ��ǽ���


--   '-------Create table Ԥ���Ѳ�����־��¼(yffoperlog2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'yffoperlog2008')
begin
create table yffoperlog2008
(
	oper_id				smallint   			not null,	/*����Ա���*/
	date					int							not null,	/*����*/	
	time					int							not null,	/*ʱ��*/	
	log_index			int							not null, /*index flag*/	
	opertype			tinyint							null,	/*�������� 0 ��¼ 1 �˳�*/
--ipAddr				varchar(32)					null,	/*ip��ַ*/
	oper_info  		varchar(128)    		null,	/*��������*/
	reserve1			int								  null,
	reserve2			decimal(12,3)   		null,
	reserve3			varchar(40)      		null
)
grant select on  yffoperlog2008 to public
create unique clustered index yffoperlog2008index1
	on yffoperlog2008(oper_id,date,time,log_index)
end
go
-- ��ǽ���


--   '-------Create table ��������ִ�м�¼(accounttask2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'accounttask2008')
begin
create table accounttask2008
(
	account_id		smallint   			not null,	/*����������*/
	date					int							not null,	/*����*/	
	time					int							not null,	/*ʱ��*/	
	acctype				tinyint							null,	/*ִ������ 0 �Զ� 1 ���ݴ洢���� 2 �ֶ�*/
	start_time		int									null,	/*ִ����ʼʱ��*/	
	end_time			int									null,	/*ִ�н���ʱ��*/	
	exeresult			tinyint							null,	/*ִ�н�� 0 �ɹ� 1 ʧ��*/
)
grant select on  accounttask2008 to public
create unique clustered index accounttask2008index1
	on accounttask2008(account_id,date,time)
end
go
-- ��ǽ���






--   '-------Create table �������������ݱ�(dltotalday2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'dltotalday2008')
begin
create table dltotalday2008
(
	dltotal_id		smallint   			not null,
	date					int							not null,
	time					int							not null,
	
	dl_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й��ܵ���*/	
	dl_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹��ܵ���*/		
	dl_fw			decimal(14, 3) 	DEFAULT 0.0 	/*�����޹��ܵ���*/	
)
grant select on  dltotalday2008 to public
create unique clustered index dltotalday2008index1
	on dltotalday2008(dltotal_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ����վ��ƽ�������ݱ�(linebalanceday2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'linebalanceday2008')
begin
create table linebalanceday2008
(
	linebalance_id	smallint		 		not null,		/*���*/	
	type						tinyint	 	 					null,		/*����*/
	date						int							not null,
	time						int							not null,
	
	dl_zy_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ������й��ܵ���*/	
	dl_fy_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ����й��ܵ���*/	
	dl_zw_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ������޹��ܵ���*/		
	dl_fw_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ����޹��ܵ���*/	
	dl_zy_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ������й��ܵ���*/	
	dl_fy_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ����й��ܵ���*/	
	dl_zw_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ������޹��ܵ���*/		
	dl_fw_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ����޹��ܵ���*/	
	per_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й���ı���*/	
	per_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й���ı���*/	
	per_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹���ı���*/		
	per_fw			decimal(14, 3) 	DEFAULT 0.0 	/*�����޹���ı���*/		
)
grant select on  linebalanceday2008 to public
create unique clustered index linebalanceday2008index1
	on linebalanceday2008(linebalance_id,type,date,time)
end
go
-- ��ǽ���


--   '-------Create table �ն������������ݱ�(rtuonlineday2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'rtuonlineday2008')
begin
create table rtuonlineday2008
(
	obj_id				smallint   			not null,			/*������*/	
	obj_type			tinyint					not null,			/*��������*/	
	date					int							not null,
	time					int							not null,
	
	rtu_count			int							null,					/*�ն�����*/	
	online_count	int							null,					/*��������*/
	online_per		decimal(14, 3) 	DEFAULT 0.0   /*������*/	
)
grant select on  rtuonlineday2008 to public
create unique clustered index rtuonlineday2008index1
	on rtuonlineday2008(obj_id,obj_type,date,time)
end
go
-- ��ǽ���



--   '-------Create table ���ɼ��ɹ��������ݱ�(metercjday2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'metercjday2008')
begin
create table metercjday2008
(
	obj_id				smallint   			not null,			/*������*/	
	obj_type			tinyint					not null,			/*��������*/	
	date					int							not null,
	time					int							not null,
	
	meter_count		int							null,					/*�������*/	
	success_count	int							null,					/*�ɹ�����*/
	success_per		decimal(14, 3) 	DEFAULT 0.0   /*�ɹ���*/	
)
grant select on  metercjday2008 to public
create unique clustered index metercjday2008index1
	on metercjday2008(obj_id,obj_type,date,time)
end
go
-- ��ǽ���



--   '-------Create table ��·���������ݱ�(lineloadday2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'lineloadday2008')
begin
create table lineloadday2008
(
	linebalance_id		smallint   			not null,				/*������*/	
	date							int							not null,
	time							int							not null,
	
	load_z						decimal(14, 3) 	DEFAULT 0.0 ,		/*�ܱ���*/	
	load_f						decimal(14, 3) 	DEFAULT 0.0 ,		/*�ֱ���*/
	load_per					decimal(14, 3) 	DEFAULT 0.0   	/*������*/
)
grant select on  lineloadday2008 to public
create unique clustered index lineloadday2008index1
	on lineloadday2008(linebalance_id,date,time)
end
go
-- ��ǽ���





--   '-------Create table SG186���������¼(sg186exp2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sg186exp2008')
begin
create table sg186exp2008
(
	rtu_id				int   					not null,	/*�ն˱��*/
	mp_id					smallint				not null, /*�����*/
	exp_date			int							not	null,	/*����������� ������*/
	exp_time			int							not	null, /*�������ʱ�� ʱ����*/
	d_date				int							 		null, /*��������*/
	d_time				int							 		null, /*����ʱ��*/
	g_date				int									null, /*����SG186д����������*/
	g_time				int									null, /*����SG186д������ʱ��*/
	data_item			int							not null, /*���ݱ�ʶ �й���� �޹����*/
	datavalue			decimal(14, 3)			null,	/*����ֵ*/
	cons_no				varchar(16)					null, /*����*/
	mp_no					varchar(32)					null, /*�������*/
	made_no				varchar(32)					null, /*���������*/
	org_no				varchar(32)					null, /*���絥λ���*/
	coll_obj_id		decimal(16)					null, /*�ɼ������ʶ*/
	auto_flag			tinyint					 		null, /*�Զ������־ 0:�Զ�	1:�ֶ�*/
	exp_flag			tinyint					 		null, /*�����ɹ���־ 0:ʧ�� 1:�ɹ�*/
	opername			varchar(32)					null, /*����Ա����*/
	autotask_id		smallint						null, /*SG186������ݵ��������� ������ʱ����*/
	exp_id				smallint						null, /*�������������� ������ʱ����*/
	reserve1			int								  null,
	reserve2			decimal(12,3)   		null,
	reserve3			varchar(40)      		null
)
grant select on  sg186exp2008 to public
create unique clustered index sg186exp2008index1
	on sg186exp2008(rtu_id,mp_id,exp_date,exp_time,data_item)
end
go
-- ��ǽ���


--   '-------Create table ����ת����¼��(gsmzf200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'gsmzf200808')
begin
create table gsmzf200808
(
	d_date				int									not null,
	d_time				int									not null,
	d_uuid				int									not null,	
	
	send_date			int											null,			/*���������*/
	send_time			int											null,			/*�����ʱ��*/
	
  classno    		smallint      					null,
  typeno  			smallint      					null,	
	rtu_id				int											null,			/*�ն�ID*/
	
	procname			varchar(32)							null,			/*Դ��������*/
	srcaddr				varchar(16)							null,			/*�ѷ��Ͷ��ŵ�Դ��ַ*/
	destaddr			varchar(16)							null,			/*�ѷ��Ͷ��ŵ�Ŀ�ĵ�ַ*/
	content				varchar(255)						null,			/*�ѷ��Ͷ�������*/

	priority			tinyint									null,			/*���ȼ�*/
	need_conf			tinyint									null,			/*��Ҫȷ�ϱ�־*/

	retry_inter		smallint								null,			/*���Լ��*/
	retry_times		smallint								null,			/*���Դ���*/
	
	result				tinyint									null,			/*���ͽ�� 0:��ʼ 1:�ѷ��� 2:�ɹ� 3:ʧ��*/
	resp_stat			int                     null			/*���Ż�ִ���*/
)
grant select on  gsmzf200808 to public
create unique clustered index gsmzf200808index1	on gsmzf200808(d_uuid)
create index gsmzf200808index2 on gsmzf200808(d_date,d_time)
end
go
-- ��ǽ���


--SG186����ӿ�
--   '-------Create table �������ϵͳ�ɷ����ݱ�(JYffMisPay2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JYffMisPay2008')
begin
create table JYffMisPay2008
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,

	date				int							not null,
	time				int							not null,

	rever_flag	tinyint							null,				/*��������־*/
	check_flag	tinyint					  	null,				/*���˱�־*/
	error_no		int									null,				/*�����*/

	ccbh				varchar(40)  	  		null,				/*�������*/

	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	jylsh		  	varchar(40)			not null,				/*������ˮ��*/
	yhbh		  	varchar(20)			not null,				/*�û����*/
	jylb				tinyint					not null,				/*�������*/
	jffs		  	varchar(8)			not null,				/*�ɷѷ�ʽ*/
	jsfs		  	varchar(8)			not null,				/*���㷽ʽ*/
	jfje				decimal(14, 3)	not null,				/*�ɷѽ��*/
	yhzwrq			int							not null,				/*������������*/
	dyfp				tinyint					not null,				/*�Ƿ��ӡ��Ʊ*/
	jfbs				int							not null,				/*�ɷѱ���*/
	remark		  varchar(120)				null,				/*��ע*/
	
	ysbs1				varchar(20)					null,				/*Ӧ�ձ�ʶ1*/
	ysbs2				varchar(20)					null,				/*Ӧ�ձ�ʶ2*/
	ysbs3				varchar(20)					null,				/*Ӧ�ձ�ʶ3*/
	ysbs4				varchar(20)					null,				/*Ӧ�ձ�ʶ4*/
	ysbs5				varchar(20)					null,				/*Ӧ�ձ�ʶ5*/
	ysbs6				varchar(20)					null,				/*Ӧ�ձ�ʶ6*/
	ysbs7				varchar(20)					null,				/*Ӧ�ձ�ʶ7*/
	ysbs8				varchar(20)					null,				/*Ӧ�ձ�ʶ8*/
	ysbs9				varchar(20)					null,				/*Ӧ�ձ�ʶ9*/
	ysbs10			varchar(20)					null,				/*Ӧ�ձ�ʶ10*/
	
	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  JYffMisPay2008 to public
create unique clustered index JYffMisPay2008index1
	on JYffMisPay2008(rtu_id,mp_id,date,time)
create unique index JYffMisPay2008index2 
	on JYffMisPay2008(jylsh)
end
go
-- ��ǽ���

--   '-------Create table �������ϵͳ�������ݱ�(JYffMisRever2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JYffMisRever2008')
begin
create table JYffMisRever2008
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,

	date				int							not null,
	time				int							not null,
	
	error_no		int									null,				/*�����*/	
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	czjylsh  		varchar(40)			not null,				/*����������ˮ��*/
	yjylsh			varchar(40)			not null,				/*ԭ������ˮ��*/
	yhzwrq			int							not	null,				/*������������*/

	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  JYffMisRever2008 to public
create unique clustered index JYffMisRever2008index1
	on JYffMisRever2008(rtu_id,mp_id,date,time)
create unique index JYffMisRever2008index2 
	on JYffMisRever2008(czjylsh)
end
go
-- ��ǽ���

--   '-------Create table ר�����ϵͳ�ɷ����ݱ�(ZYffMisPay2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZYffMisPay2008')
begin
create table ZYffMisPay2008
(
	rtu_id			int			   			not null,
	zjg_id			smallint   			not null,

	date				int							not null,
	time				int							not null,

	rever_flag	tinyint							null,				/*��������־*/	
	check_flag	tinyint						  null,				/*���˱�־*/
	error_no		int									null,				/*�����*/	
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	jylsh		  	varchar(40)			not null,				/*������ˮ��*/
	yhbh		  	varchar(20)			not null,				/*�û����*/
	jylb				tinyint					not null,				/*�������*/
	jffs		  	varchar(8)			not null,				/*�ɷѷ�ʽ*/
	jsfs		  	varchar(8)			not null,				/*���㷽ʽ*/
	jfje				decimal(14, 3)	not null,				/*�ɷѽ��*/
	yhzwrq			int							not null,				/*������������*/
	dyfp				tinyint					not null,				/*�Ƿ��ӡ��Ʊ*/
	jfbs				int							not null,				/*�ɷѱ���*/
	remark		  varchar(120)				null,				/*��ע*/
	
	ysbs1				varchar(20)					null,				/*Ӧ�ձ�ʶ1*/
	ysbs2				varchar(20)					null,				/*Ӧ�ձ�ʶ2*/
	ysbs3				varchar(20)					null,				/*Ӧ�ձ�ʶ3*/
	ysbs4				varchar(20)					null,				/*Ӧ�ձ�ʶ4*/
	ysbs5				varchar(20)					null,				/*Ӧ�ձ�ʶ5*/
	ysbs6				varchar(20)					null,				/*Ӧ�ձ�ʶ6*/
	ysbs7				varchar(20)					null,				/*Ӧ�ձ�ʶ7*/
	ysbs8				varchar(20)					null,				/*Ӧ�ձ�ʶ8*/
	ysbs9				varchar(20)					null,				/*Ӧ�ձ�ʶ9*/
	ysbs10			varchar(20)					null,				/*Ӧ�ձ�ʶ10*/
	
	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  ZYffMisPay2008 to public
create unique clustered index ZYffMisPay2008index1
	on ZYffMisPay2008(rtu_id,zjg_id,date,time)
create unique index ZYffMisPay2008index2 
	on ZYffMisPay2008(jylsh)
end
go
-- ��ǽ���

--   '-------Create table ר�����ϵͳ�������ݱ�(ZYffMisRever2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZYffMisRever2008')
begin
create table ZYffMisRever2008
(
	rtu_id			int			   			not null,
	zjg_id			smallint   			not null,
		
	date				int							not null,
	time				int							not null,
	
	error_no		int									null,				/*�����*/	
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	czjylsh  		varchar(40)			not null,				/*����������ˮ��*/
	yjylsh			varchar(40)			not null,				/*ԭ������ˮ��*/
	yhzwrq			int							not	null,				/*������������*/

	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  ZYffMisRever2008 to public
create unique clustered index ZYffMisRever2008index1
	on ZYffMisRever2008(rtu_id,zjg_id,date,time)
create unique index ZYffMisRever2008index2 
	on ZYffMisRever2008(czjylsh)
end
go
-- ��ǽ���


--   '-------Create table �������ϵͳ�ɷ����ݱ�[��](JYffMisPayNew2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JYffMisPayNew2008')
begin
create table JYffMisPayNew2008
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,

	date				int							not null,
	time				int							not null,

	rever_flag	tinyint							null,				/*��������־*/
	check_flag	tinyint					  	null,				/*���˱�־*/
	
	error_no		int									null,				/*�����*/
	error_msg		varchar(60)  	  		null,				/*������Ϣ*/
	
	ccbh				varchar(40)  	  		null,				/*�������*/

	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	jylsh		  	varchar(40)			not null,				/*������ˮ��*/
	dzpc				varchar(20)			not null,				/*��������*/
	
	yhbh		  	varchar(20)			not null,				/*�û����*/
	jylb				tinyint					not null,				/*�������*/
	jffs		  	varchar(16)			not null,				/*�ɷѷ�ʽ*/
	jsfs		  	varchar(16)			not null,				/*���㷽ʽ*/

	bcsj_zje		decimal(14, 3)	not null,				/*����ʵ���ܽ��*/
	bcsj_qfje		decimal(14, 3)	not null,				/*����ʵ��Ƿ�ѽ��*/
	bcsj_ysje		decimal(14, 3)	not null,				/*����ʵ��Ԥ�ս��*/

	yhzwrq			int							not null,				/*������������*/
	dyfp				tinyint					not null,				/*�Ƿ��ӡ��Ʊ*/
	jfbs				int							not null,				/*�ɷѱ���*/
	
	reserve		  varchar(80)					null,				/*Ԥ���ֶ�*/
	remark		  varchar(120)				null,				/*��ע*/
	
	jfmx1				varchar(120)				null,				/*�ɷ���ϸ1*/
	jfmx2				varchar(120)				null,				/*�ɷ���ϸ2*/
	jfmx3				varchar(120)				null,				/*�ɷ���ϸ3*/
	jfmx4				varchar(120)				null,				/*�ɷ���ϸ4*/
	jfmx5				varchar(120)				null,				/*�ɷ���ϸ5*/
	jfmx6				varchar(120)				null,				/*�ɷ���ϸ6*/
	jfmx7				varchar(120)				null,				/*�ɷ���ϸ7*/
	jfmx8				varchar(120)				null,				/*�ɷ���ϸ8*/
	jfmx9				varchar(120)				null,				/*�ɷ���ϸ9*/
	jfmx10			varchar(120)				null,				/*�ɷ���ϸ10*/
	
	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  JYffMisPayNew2008 to public
create unique clustered index JYffMisPayNew2008index1
	on JYffMisPayNew2008(rtu_id,mp_id,date,time)
create unique index JYffMisPayNew2008index2 
	on JYffMisPayNew2008(jylsh)
end
go
-- ��ǽ���

--   '-------Create table �������ϵͳ�������ݱ�[��](JYffMisReverNew2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JYffMisReverNew2008')
begin
create table JYffMisReverNew2008
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,

	date				int							not null,
	time				int							not null,
	
	error_no		int									null,				/*�����*/	
	error_msg		varchar(60)  	  		null,				/*������Ϣ*/
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	czjylsh  		varchar(40)			not null,				/*����������ˮ��*/
	dzpc				varchar(20)			not null,				/*��������*/
	yjylsh			varchar(40)			not null,				/*ԭ������ˮ��*/
	yhzwrq			int							not	null,				/*������������*/

	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  JYffMisReverNew2008 to public
create unique clustered index JYffMisReverNew2008index1
	on JYffMisReverNew2008(rtu_id,mp_id,date,time)
create unique index JYffMisReverNew2008index2 
	on JYffMisReverNew2008(czjylsh)
end
go
-- ��ǽ���

--   '-------Create table ר�����ϵͳ�ɷ����ݱ�[��](ZYffMisPayNew2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZYffMisPayNew2008')
begin
create table ZYffMisPayNew2008
(
	rtu_id			int			   			not null,
	zjg_id			smallint   			not null,

	date				int							not null,
	time				int							not null,

	rever_flag	tinyint							null,				/*��������־*/	
	check_flag	tinyint						  null,				/*���˱�־*/
	
	error_no		int									null,				/*�����*/	
	error_msg		varchar(60)  	  		null,				/*������Ϣ*/
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	jylsh		  	varchar(40)			not null,				/*������ˮ��*/
	dzpc				varchar(20)			not null,				/*��������*/
	
	yhbh		  	varchar(20)			not null,				/*�û����*/
	jylb				tinyint					not null,				/*�������*/
	jffs		  	varchar(16)			not null,				/*�ɷѷ�ʽ*/
	jsfs		  	varchar(16)			not null,				/*���㷽ʽ*/
	
	bcsj_zje		decimal(14, 3)	not null,				/*����ʵ���ܽ��*/
	bcsj_qfje		decimal(14, 3)	not null,				/*����ʵ��Ƿ�ѽ��*/
	bcsj_ysje		decimal(14, 3)	not null,				/*����ʵ��Ԥ�ս��*/

	yhzwrq			int							not null,				/*������������*/
	dyfp				tinyint					not null,				/*�Ƿ��ӡ��Ʊ*/
	jfbs				int							not null,				/*�ɷѱ���*/
	
	reserve		  varchar(80)					null,				/*Ԥ���ֶ�*/
	remark		  varchar(120)				null,				/*��ע*/
	
	jfmx1				varchar(120)				null,				/*�ɷ���ϸ1*/
	jfmx2				varchar(120)				null,				/*�ɷ���ϸ2*/
	jfmx3				varchar(120)				null,				/*�ɷ���ϸ3*/
	jfmx4				varchar(120)				null,				/*�ɷ���ϸ4*/
	jfmx5				varchar(120)				null,				/*�ɷ���ϸ5*/
	jfmx6				varchar(120)				null,				/*�ɷ���ϸ6*/
	jfmx7				varchar(120)				null,				/*�ɷ���ϸ7*/
	jfmx8				varchar(120)				null,				/*�ɷ���ϸ8*/
	jfmx9				varchar(120)				null,				/*�ɷ���ϸ9*/
	jfmx10			varchar(120)				null,				/*�ɷ���ϸ10*/
	
	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  ZYffMisPayNew2008 to public
create unique clustered index ZYffMisPayNew2008index1
	on ZYffMisPayNew2008(rtu_id,zjg_id,date,time)
create unique index ZYffMisPayNew2008index2 
	on ZYffMisPayNew2008(jylsh)
end
go
-- ��ǽ���

--   '-------Create table ר�����ϵͳ�������ݱ�[��](ZYffMisReverNew2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZYffMisReverNew2008')
begin
create table ZYffMisReverNew2008
(
	rtu_id			int			   			not null,
	zjg_id			smallint   			not null,
		
	date				int							not null,
	time				int							not null,
	
	error_no		int									null,				/*�����*/	
	error_msg		varchar(60)  	  		null,				/*������Ϣ*/
	
	ccbh				varchar(40)  	  		null,				/*�������*/
	
	dsdwbh		  varchar(20)			not null,				/*���յ�λ���*/
	czybh		  	varchar(20)			not null,				/*����Ա���*/
	czjylsh  		varchar(40)			not null,				/*����������ˮ��*/
	dzpc				varchar(20)			not null,				/*��������*/
	yjylsh			varchar(40)			not null,				/*ԭ������ˮ��*/
	yhzwrq			int							not	null,				/*������������*/

	reserve1		varchar(20)					null,			
	reserve2		varchar(20)					null,				
	reserve3		varchar(20)					null				
)
grant select on  ZYffMisReverNew2008 to public
create unique clustered index ZYffMisReverNew2008index1
	on ZYffMisReverNew2008(rtu_id,zjg_id,date,time)
create unique index ZYffMisReverNew2008index2 
	on ZYffMisReverNew2008(czjylsh)
end
go
-- ��ǽ���

--   '-------Create table ��������������ݱ�(MpDayRemain200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'MpDayRemain200808')
begin
create table MpDayRemain200808
(
	rtu_id				int       					not null,			/*�ն˱��*/	
	mp_id					smallint 						not null,			/*��������*/
	ymd						int									not null,			/*��������*/
	
	cus_state			tinyint									null,			/*�û�״̬ 0 ��ʼ̬, 1 ����̬, 10 ����̬*/	
	op_type				tinyint									null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	shutdown_val2	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ����ģ���� */	
	
	jsbd_ymd			int											null,			/*����ʱ��*/
	buy_times			int											null,			/*�������*/

	calc_mdhmi		int											null,			/*���ʱ��-MMDDHHMI*/
	calc_bdymd		int											null,			/*��ѱ��ʱ��-YYYYMMDD*/	
	
	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/
	now_remain2		decimal(12,2)						null,			/*��ǰʣ�� ����ģ����*/
	
	cs_al1_state	tinyint									null,			/*����1״̬  0:����״̬ 1:����״̬*/
	cs_al2_state	tinyint									null,			/*����2״̬  0:����״̬ 1:����״̬*/
	cs_fhz_state	tinyint									null,			/*�ֺ�բ״̬ 0:��բ״̬ 1:��բ״̬*/

	al1_mdhmi			int											null,			/*����1״̬�ı�ʱ��-MMDDHHMI*/
	al2_mdhmi			int											null,			/*����2״̬�ı�ʱ��-MMDDHHMI*/	
	fhz_mdhmi			int											null,			/*�ֺ�բ״̬�ı�ʱ��-MMDDHHMI*/

	fz_zyz				decimal(12,2)						null,			/*��բʱ�ܱ��*/
	fz1_zyz				decimal(12,2)						null,			/*��������1-��բʱ�ܱ��*/
	fz2_zyz				decimal(12,2)						null,			/*��������2-��բʱ�ܱ��*/
	

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl		decimal(12,2)					null,			/*����׷���ۼ��õ���*/
	jt_total_dl			decimal(12,2)					null,			/*�����ۼ��õ���*/
	jt_reset_ymd		int										null,			/*�����ϴ��Զ��л�����*/
	jt_reset_mdhmi	int										null,			/*�����л�ִ��ʱ��*/

	fxdf_iall_money		decimal(12,2)				null, 		/*���е�ѵ��½ɷ��ܽ��*/
	fxdf_iall_money2	decimal(12,2)				null, 		/*���е�ѵ��½ɷ��ܽ��2*/
	fxdf_remain				decimal(12,2)				null,			/*���е�Ѻ�ʣ����  		fxdf_after_remain*/
	fxdf_remain2			decimal(12,2)				null,			/*���е�Ѻ�ʣ����  		fxdf_after_remain ����ģ����*/

	fxdf_ym					int										null,			/*���е����������YYYYMM*/
	fxdf_data_ymd		int										null,			/*���е����������-YYYYMMDD*/
	fxdf_calc_mdhmi	int										null,			/*���е�����ʱ��-MMDDHHMI*/

	js_bc_ymd			int											null, 	  	/*���㲹������YYYYMMDD*/
)
grant select on  MpDayRemain200808 to public
create unique clustered index MpDayRemain200808index1
	on MpDayRemain200808(rtu_id,mp_id,ymd)
end
go
-- ��ǽ���

--���е��

--   '-------Create table �����㷢�е��������ݱ�(MpFxMoney2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'MpFxMoney2008')
begin
create table MpFxMoney2008
(
	rtu_id						int							  not null,
	mp_id							smallint				  not null,					/*zjg_id mp_id*/
	fxdf_ym						int								not null, 				/*���е������*/
--data_type					tinyint						not null, 				/*�������� 0 ���е�� 1 �����л�*/
		
	cons_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  fxdf_mdhmi				int										null,					/*���е�����ʱ��-MMDDHHMI*/
  fxdf_lastym				int										null,					/*�ϴε������*/

	iall_money				decimal(12,2)		  		null,					/*���½ɷ��ܽ��*/
	iall_money2				decimal(12,2)		  		null,					/*���½ɷ��ܽ��2*/

	last_remain				decimal(12,2)		  		null,					/*�ϴ�ʣ��*/
	last_remain2			decimal(12,2)		  		null,					/*�ϴ�ʣ��2*/
	
	now_remain				decimal(12,2)		  		null,					/*��ǰʣ��*/
	now_remain2				decimal(12,2)		  		null,					/*��ǰʣ��2*/

	jt_total_zbdl			decimal(12,2)		  		null,					/*����׷���ۼ��õ���*/
	jt_total_dl				decimal(12,2)		  		null,					/*�����ۼ��õ���*/

	df_money					decimal(12,2)		  not null,					/*��ѽ��*/
	df_money2					decimal(12,2)		  not null,					/*��ѽ��2*/
  	                                    
	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	shutdown_val2			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���2*/	

 	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
	jsbd_zyz					decimal(12,2)		  		null,					/*�ϴν����ܱ��*/
	jsbd_zyj					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyf					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyp					decimal(12,2)		  		null,					/*�ϴν���ƽ���*/
	jsbd_zyg					decimal(12,2)		  		null,					/*�ϴν���ȱ��*/
                		                  
	jsbd1_zyz					decimal(12,2)		  		null,					/*��������1-�ϴν����ܱ��*/
	jsbd1_zyj					decimal(12,2)		  		null,					/*��������1-�ϴν������*/
	jsbd1_zyf					decimal(12,2)		  		null,					/*��������1-�ϴν������*/
	jsbd1_zyp					decimal(12,2)		  		null,					/*��������1-�ϴν���ƽ���*/
	jsbd1_zyg					decimal(12,2)		  		null,					/*��������1-�ϴν���ȱ��*/
                		                  
	jsbd2_zyz					decimal(12,2)		  		null,					/*��������2-�ϴν����ܱ��*/
	jsbd2_zyj					decimal(12,2)		  		null,					/*��������2-�ϴν������*/
	jsbd2_zyf					decimal(12,2)		  		null,					/*��������2-�ϴν������*/
	jsbd2_zyp					decimal(12,2)		  		null,					/*��������2-�ϴν���ƽ���*/
	jsbd2_zyg					decimal(12,2)		  		null,					/*��������2-�ϴν���ȱ��*/
  
  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz					decimal(12,2)		  		null,					/*���ʱ�ܱ��*/
	calc_zyj					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyf					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyp					decimal(12,2)		  		null,					/*���ʱƽ���*/
	calc_zyg					decimal(12,2)		  		null,					/*���ʱ�ȱ��*/
	              		                  
	calc1_zyz					decimal(12,2)		  		null,					/*��������1-���ʱ�ܱ��*/
	calc1_zyj					decimal(12,2)		  		null,					/*��������1-���ʱ����*/
	calc1_zyf					decimal(12,2)		  		null,					/*��������1-���ʱ����*/
	calc1_zyp					decimal(12,2)		  		null,					/*��������1-���ʱƽ���*/
	calc1_zyg					decimal(12,2)		  		null,					/*��������1-���ʱ�ȱ��*/
	
	calc2_zyz					decimal(12,2)		  		null,					/*��������2-���ʱ�ܱ��*/
	calc2_zyj					decimal(12,2)		  		null,					/*��������2-���ʱ����*/
	calc2_zyf					decimal(12,2)		  		null,					/*��������2-���ʱ����*/
	calc2_zyp					decimal(12,2)		  		null,					/*��������2-���ʱƽ���*/
	calc2_zyg					decimal(12,2)		  		null,					/*��������2-���ʱ�ȱ��*/		

	update_count			int										null,					/*���´���*/

  all_monthf				tinyint								null,					/*���±�־*/
	bc_flag						tinyint					  		null, 				/*���㲹����*/
	bc_date						int							  		null,					/*���㲹������*/
	bc_time						int							  		null,					/*���㲹��ʱ��*/
	op_man						varchar(64)			  		null,					/*����Ա*/	
)
grant select on  MpFxMoney2008 to public
create unique clustered index MpFxMoney2008index1
	on MpFxMoney2008(rtu_id,mp_id,fxdf_ym)
end
go
-- ��ǽ���


--   '-------Create table �����������������¼(MpJtReset2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'MpJtReset2008')
begin
create table MpJtReset2008
(
	rtu_id						int							  not null,
	mp_id							smallint				  not null,					/*zjg_id mp_id*/
	date							int								not null, 				/*���е������*/
		
	cons_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  jtreset_mdhmi			int										null,					/*����ִ��ʱ��-MMDDHHMI*/
  jtreset_lastymd		int										null,					/*�ϴ���������*/

	jt_total_zbdl			decimal(12,2)		  		null,					/*����׷���ۼ��õ���*/
	jt_total_dl				decimal(12,2)		  		null,					/*�����ۼ��õ���*/
			                                    
	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	shutdown_val2			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���2*/	

 	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
	jsbd_zyz					decimal(12,2)		  		null,					/*�ϴν����ܱ��*/
	jsbd_zyj					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyf					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyp					decimal(12,2)		  		null,					/*�ϴν���ƽ���*/
	jsbd_zyg					decimal(12,2)		  		null,					/*�ϴν���ȱ��*/
                		                  
	jsbd1_zyz					decimal(12,2)		  		null,					/*��������1-�ϴν����ܱ��*/
	jsbd1_zyj					decimal(12,2)		  		null,					/*��������1-�ϴν������*/
	jsbd1_zyf					decimal(12,2)		  		null,					/*��������1-�ϴν������*/
	jsbd1_zyp					decimal(12,2)		  		null,					/*��������1-�ϴν���ƽ���*/
	jsbd1_zyg					decimal(12,2)		  		null,					/*��������1-�ϴν���ȱ��*/
                		                  
	jsbd2_zyz					decimal(12,2)		  		null,					/*��������2-�ϴν����ܱ��*/
	jsbd2_zyj					decimal(12,2)		  		null,					/*��������2-�ϴν������*/
	jsbd2_zyf					decimal(12,2)		  		null,					/*��������2-�ϴν������*/
	jsbd2_zyp					decimal(12,2)		  		null,					/*��������2-�ϴν���ƽ���*/
	jsbd2_zyg					decimal(12,2)		  		null,					/*��������2-�ϴν���ȱ��*/
  
  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz					decimal(12,2)		  		null,					/*���ʱ�ܱ��*/
	calc_zyj					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyf					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyp					decimal(12,2)		  		null,					/*���ʱƽ���*/
	calc_zyg					decimal(12,2)		  		null,					/*���ʱ�ȱ��*/
	              		                  
	calc1_zyz					decimal(12,2)		  		null,					/*��������1-���ʱ�ܱ��*/
	calc1_zyj					decimal(12,2)		  		null,					/*��������1-���ʱ����*/
	calc1_zyf					decimal(12,2)		  		null,					/*��������1-���ʱ����*/
	calc1_zyp					decimal(12,2)		  		null,					/*��������1-���ʱƽ���*/
	calc1_zyg					decimal(12,2)		  		null,					/*��������1-���ʱ�ȱ��*/
	
	calc2_zyz					decimal(12,2)		  		null,					/*��������2-���ʱ�ܱ��*/
	calc2_zyj					decimal(12,2)		  		null,					/*��������2-���ʱ����*/
	calc2_zyf					decimal(12,2)		  		null,					/*��������2-���ʱ����*/
	calc2_zyp					decimal(12,2)		  		null,					/*��������2-���ʱƽ���*/
	calc2_zyg					decimal(12,2)		  		null,					/*��������2-���ʱ�ȱ��*/		

	op_man						varchar(64)			  		null,					/*����Ա*/	
)                                     
grant select on  MpJtReset2008 to public
create unique clustered index MpJtReset2008index1
	on MpJtReset2008(rtu_id,mp_id,date)
end
go
-- ��ǽ���

--   '-------Create table �ܼ��鷢�е��������ݱ�(ZjgFxMoney2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZjgFxMoney2008')
begin
create table ZjgFxMoney2008
(
	rtu_id						int							  not null,
	zjg_id						smallint				  not null,					/*zjg_id mp_id*/
	fxdf_ym						int								not null, 				/*���е������*/
--data_type					tinyint						not null, 				/*�������� 0 ���е�� 1 �����л�*/

	bus_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  fxdf_mdhmi				int										null,					/*���е�����ʱ��-MMDDHHMI*/
  fxdf_lastym				int										null,					/*�ϴε������*/

	iall_money				decimal(12,2)		  		null,					/*���½ɷ��ܽ��*/

	last_remain				decimal(12,2)		  		null,					/*�ϴ�ʣ��*/
	now_remain				decimal(12,2)		  		null,					/*��ǰʣ��*/

	df_money					decimal(12,2)		  not null,					/*��ѽ��*/

	real_powrate			decimal(12,2)		  		null,					/*ʵ�ʹ�������*/
	ele_money					decimal(12,2)		  		null,					/*��ȵ��*/
	jbf_money					decimal(12,2)		  		null,					/*�����ѵ��*/
	powrate_money			decimal(12,2)		  		null,					/*�������*/
	other_money				decimal(12,2)					null,					/*�������*/

	total_yzbdl				decimal(12,2)		  		null,					/*�й�׷���ۼ��õ���*/
	total_wzbdl				decimal(12,2)		  		null,					/*�޹�׷���ۼ��õ���*/
	total_ydl					decimal(12,2)		  		null,					/*�й��ۼ��õ���*/
	total_wdl					decimal(12,2)		  		null,					/*�޹��ۼ��õ���*/

 	zbele_money	  		decimal(12,2)					null,					/*׷����ȵ��*/
	zbjbf_money	  		decimal(12,2)					null,					/*׷�������ѵ��*/
	zbother_money			decimal(12,2)					null,					/*׷���������*/

	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	

 	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
	jsbd_zyz					decimal(12,2)		  		null,					/*�ϴν����ܱ��*/
	jsbd_zyj					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyf					decimal(12,2)		  		null,					/*�ϴν������*/
	jsbd_zyp					decimal(12,2)		  		null,					/*�ϴν���ƽ���*/
	jsbd_zyg					decimal(12,2)		  		null,					/*�ϴν���ȱ��*/
                		                  
	jsbd1_zyz					decimal(12,2)		  		null,					/*-�ϴν����ܱ��*/
	jsbd1_zyj					decimal(12,2)		  		null,					/*-�ϴν������*/
	jsbd1_zyf					decimal(12,2)		  		null,					/*-�ϴν������*/
	jsbd1_zyp					decimal(12,2)		  		null,					/*-�ϴν���ƽ���*/
	jsbd1_zyg					decimal(12,2)		  		null,					/*-�ϴν���ȱ��*/
                		                  
	jsbd2_zyz					decimal(12,2)		  		null,					/*-�ϴν����ܱ��*/
	jsbd2_zyj					decimal(12,2)		  		null,					/*-�ϴν������*/
	jsbd2_zyf					decimal(12,2)		  		null,					/*-�ϴν������*/
	jsbd2_zyp					decimal(12,2)		  		null,					/*-�ϴν���ƽ���*/
	jsbd2_zyg					decimal(12,2)		  		null,					/*-�ϴν���ȱ��*/

	jsbd_zwz					decimal(12,2)		  		null,					/*�ϴν����޹��ܱ��*/
	jsbd1_zwz					decimal(12,2)		  		null,					/*�ϴν����޹��ܱ��*/
	jsbd2_zwz					decimal(12,2)		  		null,					/*�ϴν����޹��ܱ��*/
  
  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz					decimal(12,2)		  		null,					/*���ʱ�ܱ��*/
	calc_zyj					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyf					decimal(12,2)		  		null,					/*���ʱ����*/
	calc_zyp					decimal(12,2)		  		null,					/*���ʱƽ���*/
	calc_zyg					decimal(12,2)		  		null,					/*���ʱ�ȱ��*/
	              		                  
	calc1_zyz					decimal(12,2)		  		null,					/*-���ʱ�ܱ��*/
	calc1_zyj					decimal(12,2)		  		null,					/*-���ʱ����*/
	calc1_zyf					decimal(12,2)		  		null,					/*-���ʱ����*/
	calc1_zyp					decimal(12,2)		  		null,					/*-���ʱƽ���*/
	calc1_zyg					decimal(12,2)		  		null,					/*-���ʱ�ȱ��*/
	
	calc2_zyz					decimal(12,2)		  		null,					/*-���ʱ�ܱ��*/
	calc2_zyj					decimal(12,2)		  		null,					/*-���ʱ����*/
	calc2_zyf					decimal(12,2)		  		null,					/*-���ʱ����*/
	calc2_zyp					decimal(12,2)		  		null,					/*-���ʱƽ���*/
	calc2_zyg					decimal(12,2)		  		null,					/*-���ʱ�ȱ��*/		

	calc_zwz					decimal(12,2)		  		null,					/*����޹��ܱ��*/
	calc1_zwz					decimal(12,2)		  		null,					/*����޹��ܱ��*/
	calc2_zwz					decimal(12,2)		  		null,					/*����޹��ܱ��*/
	
	update_count			int										null,					/*���´���*/

  all_monthf				tinyint								null,					/*���±�־*/
	bc_flag						tinyint					  		null, 				/*���㲹����*/
	bc_date						int							  		null,					/*���㲹������*/
	bc_time						int							  		null,					/*���㲹��ʱ��*/
	op_man						varchar(64)			  		null,					/*����Ա*/	
)
grant select on  ZjgFxMoney2008 to public
create unique clustered index ZjgFxMoney2008index1
	on ZjgFxMoney2008(rtu_id,zjg_id,fxdf_ym)
end
go
-- ��ǽ���

-- �����¼��

--	'-------Create table ��������¼��(ZJsRecord2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JJsRecord2008')
begin
create table JJsRecord2008
(
	rtu_id				int						  		not null,
	mp_id				  smallint  					not null,
	fxdf_ym				int									not null, 		/*���е������*/
  js_times			int									not	null, 		/*�������*/

	op_date				int									not null,			/*���β�������*/
	op_time				int									not null,			/*���β���ʱ��*/
		
	res_id				smallint						not null,			/*�ͻ����*/
	res_desc			varchar(64)							null,			/*�ͻ�����*/
	
	op_man				varchar(64)					not null,			/*����Ա*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/
	othjs_money		decimal(12,2)						null,			/*ʵ�ʽ�����(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	buy_times			int											null,			/*�������*/

--����Ϊ�ɷѼ�¼ ������������ڽ��㲹��
	misjs_money	  decimal(12,2)						null,			/*misӦ������*/
	totjs_money   decimal(12,2)						null,			/*�ۼƽ�����*/

	lastala_val1  decimal(12,2)						null,			/*�ϴα���ֵ1*/
	lastala_val2  decimal(12,2)						null,			/*�ϴα���ֵ2*/
	lastshut_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	
	newala_val1   decimal(12,2)						null,			/*����ֵ1*/
	newala_val2   decimal(12,2)						null,			/*����ֵ2*/
	newshut_val   decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */

	reserve1   		decimal(12,2)						null,		  /*��չ�ֶ�1*/
	reserve2   		decimal(12,2)  					null,		  /*��չ�ֶ�2*/
	reserve3   		varchar(32)  						null,		  /*��չ�ֶ�3*/
	reserve4   		varchar(32)  						null,		  /*��չ�ֶ�4*/

)
grant select on JJsRecord2008 to public
create unique clustered index JJsRecord2008index1
	on JJsRecord2008(rtu_id,mp_id,fxdf_ym,js_times)	
end
go
-- ��ǽ���

--	'-------Create table �ܼ�������¼��(ZJsRecord2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZJsRecord2008')
begin
create table ZJsRecord2008
(
	rtu_id				int						  		not null,
	zjg_id				smallint  					not null,
	fxdf_ym				int									not null, 		/*���е������*/
  js_times			int									not	null, 		/*�������*/

	op_date				int									not null,			/*���β�������*/
	op_time				int									not null,			/*���β���ʱ��*/
		
	cons_id				smallint						not null,			/*�ͻ����*/
	cons_desc			varchar(64)							null,			/*�ͻ�����*/
	
	op_man				varchar(64)					not null,			/*����Ա*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/
	othjs_money		decimal(12,2)						null,			/*ʵ�ʽ�����(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*/

	buy_times			int											null,			/*�������*/

--����Ϊ�ɷѼ�¼ ������������ڽ��㲹��
	misjs_money	  decimal(12,2)						null,			/*misӦ������*/
	totjs_money   decimal(12,2)						null,			/*�ۼƽ�����*/

	misjs_bmc			decimal(12,2)						null,			/*misӦ��������*/
	totjs_bmc			decimal(12,2)						null,			/*�ۼƽ�������*/


  cur_bd				decimal(12,2)						null,			/*��ǰ���*/

	lastala_val1  decimal(12,2)						null,			/*�ϴα���ֵ1*/
	lastala_val2  decimal(12,2)						null,			/*�ϴα���ֵ2*/
	lastshut_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	
	newala_val1   decimal(12,2)						null,			/*����ֵ1*/
	newala_val2   decimal(12,2)						null,			/*����ֵ2*/
	newshut_val   decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */

	reserve1   		decimal(12,2)						null,		  /*��չ�ֶ�1*/
	reserve2   		decimal(12,2)  					null,		  /*��չ�ֶ�2*/
	reserve3   		varchar(32)  						null,		  /*��չ�ֶ�3*/
	reserve4   		varchar(32)  						null,		  /*��չ�ֶ�4*/

)
grant select on ZJsRecord2008 to public
create unique clustered index ZJsRecord2008index1
	on ZJsRecord2008(rtu_id,zjg_id,fxdf_ym,js_times)	
end
go
-- ��ǽ���


--	'-------Create table ũ��Ԥ���Ѽ�¼��(NYff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'NYff2008')
begin
create table NYff2008
(
	area_id				int									not	null,			/*����Ƭ��*/
	farmer_id			smallint	    			not null,			/*ũ���û�id*/
	
	farmer_desc		varchar(64)							null,			/*�ͻ�����*/  				/*����洢*/
	farmer_no			varchar(64)							null,			/*ũ�Ż���sg186���*/ /*����洢*/
	card_no				varchar(32)							null,			/*����*/							/*����洢*/
	area_code			varchar(32)							null,			/*�����*/						/*����洢*/

	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, ����, �ɷ�, ����, ��д��, ����, ���� ������ԭ��һ�� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	ls_remain			decimal(12,2)						null,			/*�ϴ�ʣ���� last remain*/	
	cur_remain		decimal(12,2)						null,			/*��ǰʣ���� current remain*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ�����*/
	buy_times			int											null,			/*�������*/
	totbuy_times	int											null,			/*�ۼƹ������*/

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		/*����*/
	alarm2				decimal(12,2)						null,			/*����ֵ2*/		/*����*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/
	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on NYff2008 to public
create clustered index NYff2008index1
	on NYff2008(area_id,farmer_id,op_date,op_time,op_type)
		
create index NYff2008index2 
	on NYff2008(area_id,farmer_no,op_date,op_time,op_type)  
end
go
-- ��ǽ���


--	'-------Create table ũ��Ԥ���Ѽ�¼����(sysnyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysnyfrcd2008')
begin
create table sysnyfrcd2008
(
	area_id				int									not	null,			/*����Ƭ��*/
	farmer_id			smallint	    			not null,			/*ũ���û�id*/
	
	farmer_desc		varchar(64)							null,			/*�ͻ�����*/  				 /*����洢*/
	farmer_no			varchar(64)							null,			/*ũ�Ż���sg186���*/  /*����洢*/
	card_no				varchar(32)							null,			/*����*/							 /*����洢*/
	area_code			varchar(32)							null,			/*�����*/						 /*����洢*/

	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, ����, �ɷ�, ����, ��д��, ����, ���� ������ԭ��һ�� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	ls_remain			decimal(12,2)						null,			/*�ϴ�ʣ���� last remain*/	
	cur_remain		decimal(12,2)						null,			/*��ǰʣ���� current remain*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ�����*/
	buy_times			int											null,			/*�������*/
	totbuy_times	int											null,			/*�ۼƹ������*/

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		/*����*/
	alarm2				decimal(12,2)						null,			/*����ֵ2*/		/*����*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/
	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on sysnyfrcd2008 to public
create clustered index sysnyfrcd2008index1
	on sysnyfrcd2008(area_id,farmer_id,op_date,op_time,op_type)	
create index sysnyfrcd2008index2 
	on sysnyfrcd2008(area_id,farmer_no,op_date,op_time,op_type)
end
go
-- ��ǽ���


--a.       SB-2100A��D���ۻ�������˲ʱ�������ۻ�������˲ʱ��������ѹ��Ƶ�ʣ����ܶȡ�ѹ�����¶ȡ����ʡ���ǰʱ�估��ͣ���¼��
--b.       SB-2100H���ۻ�������˲ʱ�������ۻ��ȣ������˲ʱ�ȣ��������ѹ��Ƶ�ʡ��ܶȡ�ѹ��������¶ȡ������¶ȡ���ǰʱ�䡣
----------------------����Ӧ�ÿ�ʼ--------------------------------------------

--   '-------Create table ����ʵʱ˲ʱ�����ݱ�(SRealllrl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'SRealllrl200808')
begin
create table SRealllrl200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	ll_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	ll_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/	
	rl_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	rl_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/
	dif_gauge 	decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/
	hz					decimal(14, 3) 	DEFAULT 0 	,	/*Ƶ��*/	
	
	density			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/	
	pressure		decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��*/	
	temper 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�*/	
	enthalpy		decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	noele_times	int 						DEFAULT 0 	,	/*ͣ�����*/	
	noele_time	int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  SRealllrl200808 to public
create unique clustered index SRealllrl200808index1
	on SRealllrl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table �������ӱ�׵������ݱ�(SMinllrl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'SMinllrl200808')
begin
create table SMinllrl200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	ll_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	ll_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/	
	rl_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	rl_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/
	dif_gauge 	decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/	
	hz					decimal(14, 3) 	DEFAULT 0 	,	/*Ƶ��*/	
	
	density			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/	
	pressure		decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��*/	
	temper 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�*/	
	enthalpy		decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	noele_times	int 						DEFAULT 0 	,	/*ͣ�����*/	
	noele_time	int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	ll					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	rl					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  SMinllrl200808 to public
create unique clustered index SMinllrl200808index1
	on SMinllrl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���




--   '-------Create table �����ձ�׵������ݱ�(SDayllrl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'SDayllrl200808')
begin
create table SDayllrl200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	ll_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	ll_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/	
	rl_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	rl_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/
	dif_gauge 	decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/	
	hz					decimal(14, 3) 	DEFAULT 0 	,	/*Ƶ��*/	
	
	density			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/	
	pressure		decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��*/	
	temper 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�*/	
	enthalpy		decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	noele_times	int 						DEFAULT 0 	,	/*ͣ�����*/	
	noele_time	int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	ll					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	rl					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  SDayllrl200808 to public
create unique clustered index SDayllrl200808index1
	on SDayllrl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



--   '-------Create table �����±�׵������ݱ�(SMonllrl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'SMonllrl2008')
begin
create table SMonllrl2008
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	ll_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	ll_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/	
	rl_total		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ۻ�����*/	
	rl_ss				decimal(14, 3) 	DEFAULT 0.0 ,	/*˲ʱ����*/
	dif_gauge 	decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/	
	hz					decimal(14, 3) 	DEFAULT 0 	,	/*Ƶ��*/	
	
	density			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/	
	pressure		decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��*/	
	temper 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�*/	
	enthalpy		decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	noele_times	int 						DEFAULT 0 	,	/*ͣ�����*/	
	noele_time	int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	ll					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	rl					decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  SMonllrl2008 to public
create unique clustered index SMonllrl2008index1
	on SMonllrl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



----------------------����Ӧ�ý���--------------------------------------------



--   '-------Create table �����������ݱ�(ZDayCap200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayCap200808')
begin
create table ZDayCap200808
(
	rtu_id			int			   		not null,
	mp_id				smallint   		not null,
	date				int						not null,
	time				int						not null,
	
	day_wgdl		decimal(14, 3) 	DEFAULT 0.0 ,	/*�ղ����޹�������*/	
	mon_wgdl		decimal(14, 3) 	DEFAULT 0.0 ,	/*�²����޹�������*/	
	
	total_tm1		int 						DEFAULT 0 	,	/*��1��������ۼ�Ͷ��ʱ��*/	
	total_tm2		int 						DEFAULT 0 	,	/*��2��������ۼ�Ͷ��ʱ��*/	
	total_tm3		int 						DEFAULT 0 	,	/*��3��������ۼ�Ͷ��ʱ��*/	
	total_tm4		int 						DEFAULT 0 	,	/*��4��������ۼ�Ͷ��ʱ��*/	
	total_tm5		int 						DEFAULT 0 	,	/*��5��������ۼ�Ͷ��ʱ��*/	
	total_tm6		int 						DEFAULT 0 	,	/*��6��������ۼ�Ͷ��ʱ��*/	
	total_tm7		int 						DEFAULT 0 	,	/*��7��������ۼ�Ͷ��ʱ��*/	
	total_tm8		int 						DEFAULT 0 	,	/*��8��������ۼ�Ͷ��ʱ��*/	
	total_tm9		int 						DEFAULT 0 	,	/*��9��������ۼ�Ͷ��ʱ��*/	
	total_tm10	int 						DEFAULT 0 	,	/*��10��������ۼ�Ͷ��ʱ��*/	
	total_tm11	int 						DEFAULT 0 	,	/*��11��������ۼ�Ͷ��ʱ��*/	
	total_tm12	int 						DEFAULT 0 	,	/*��12��������ۼ�Ͷ��ʱ��*/	
	total_tm13	int 						DEFAULT 0 	,	/*��13��������ۼ�Ͷ��ʱ��*/	
	total_tm14	int 						DEFAULT 0 	,	/*��14��������ۼ�Ͷ��ʱ��*/	
	total_tm15	int 						DEFAULT 0 	,	/*��15��������ۼ�Ͷ��ʱ��*/	
	total_tm16	int 						DEFAULT 0 	,	/*��16��������ۼ�Ͷ��ʱ��*/	
	total_tm17	int 						DEFAULT 0 	,	/*��17��������ۼ�Ͷ��ʱ��*/	
	total_tm18	int 						DEFAULT 0 	,	/*��18��������ۼ�Ͷ��ʱ��*/	
	total_tm19	int 						DEFAULT 0 	,	/*��19��������ۼ�Ͷ��ʱ��*/	
	total_tm20	int 						DEFAULT 0 	,	/*��20��������ۼ�Ͷ��ʱ��*/	
	total_tm21	int 						DEFAULT 0 	,	/*��21��������ۼ�Ͷ��ʱ��*/	
	total_tm22	int 						DEFAULT 0 	,	/*��22��������ۼ�Ͷ��ʱ��*/	
	total_tm23	int 						DEFAULT 0 	,	/*��23��������ۼ�Ͷ��ʱ��*/	
	total_tm24	int 						DEFAULT 0 	,	/*��24��������ۼ�Ͷ��ʱ��*/	
	total_tm25	int 						DEFAULT 0 	,	/*��25��������ۼ�Ͷ��ʱ��*/	
	total_tm26	int 						DEFAULT 0 	,	/*��26��������ۼ�Ͷ��ʱ��*/	
	total_tm27	int 						DEFAULT 0 	,	/*��27��������ۼ�Ͷ��ʱ��*/	
	total_tm28	int 						DEFAULT 0 	,	/*��28��������ۼ�Ͷ��ʱ��*/	
	total_cnt1	int 						DEFAULT 0 	,	/*��1��������ۼ�Ͷ�����*/	
	total_cnt2	int 						DEFAULT 0 	,	/*��2��������ۼ�Ͷ�����*/	
	total_cnt3	int 						DEFAULT 0 	,	/*��3��������ۼ�Ͷ�����*/	
	total_cnt4	int 						DEFAULT 0 	,	/*��4��������ۼ�Ͷ�����*/	
	total_cnt5	int 						DEFAULT 0 	,	/*��5��������ۼ�Ͷ�����*/	
	total_cnt6	int 						DEFAULT 0 	,	/*��6��������ۼ�Ͷ�����*/	
	total_cnt7	int 						DEFAULT 0 	,	/*��7��������ۼ�Ͷ�����*/	
	total_cnt8	int 						DEFAULT 0 	,	/*��8��������ۼ�Ͷ�����*/	
	total_cnt9	int 						DEFAULT 0 	,	/*��9��������ۼ�Ͷ�����*/	
	total_cnt10	int 						DEFAULT 0 	,	/*��10��������ۼ�Ͷ�����*/	
	total_cnt11	int 						DEFAULT 0 	,	/*��11��������ۼ�Ͷ�����*/	
	total_cnt12	int 						DEFAULT 0 	,	/*��12��������ۼ�Ͷ�����*/	
	total_cnt13	int 						DEFAULT 0 	,	/*��13��������ۼ�Ͷ�����*/	
	total_cnt14	int 						DEFAULT 0 	,	/*��14��������ۼ�Ͷ�����*/	
	total_cnt15	int 						DEFAULT 0 	,	/*��15��������ۼ�Ͷ�����*/	
	total_cnt16	int 						DEFAULT 0 	,	/*��16��������ۼ�Ͷ�����*/	
	total_cnt17	int 						DEFAULT 0 	,	/*��17��������ۼ�Ͷ�����*/	
	total_cnt18	int 						DEFAULT 0 	,	/*��18��������ۼ�Ͷ�����*/	
	total_cnt19	int 						DEFAULT 0 	,	/*��19��������ۼ�Ͷ�����*/	
	total_cnt20	int 						DEFAULT 0 	,	/*��20��������ۼ�Ͷ�����*/	
	total_cnt21	int 						DEFAULT 0 	,	/*��21��������ۼ�Ͷ�����*/	
	total_cnt22	int 						DEFAULT 0 	,	/*��22��������ۼ�Ͷ�����*/	
	total_cnt23	int 						DEFAULT 0 	,	/*��23��������ۼ�Ͷ�����*/	
	total_cnt24	int 						DEFAULT 0 	,	/*��24��������ۼ�Ͷ�����*/	
	total_cnt25	int 						DEFAULT 0 	,	/*��25��������ۼ�Ͷ�����*/	
	total_cnt26	int 						DEFAULT 0 	,	/*��26��������ۼ�Ͷ�����*/	
	total_cnt27	int 						DEFAULT 0 	,	/*��27��������ۼ�Ͷ�����*/	
	total_cnt28	int 						DEFAULT 0 	,	/*��28��������ۼ�Ͷ�����*/	
)
grant select on  ZDayCap200808 to public
create unique clustered index ZDayCap200808index1
	on ZDayCap200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--zxp 20130808
--   '-------Create table �������õ����ݱ�(JDayGYD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JDayGYD200808')
begin
create table JDayGYD200808
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	gdcs			int									null,							/*�������*/
	syje			decimal(14, 3)	DEFAULT 0.0 ,					/*ʣ����*/
	ljgdje		decimal(14, 3)  DEFAULT 0.0 ,					/*�ۼƹ�����*/
	sydl			decimal(14, 3)	DEFAULT 0.0 ,					/*ʣ�����*/
	tzdl			decimal(14, 3)	DEFAULT 0.0 ,					/*͸֧����*/
	ljgdl			decimal(14, 3)	DEFAULT 0.0 ,					/*�ۼƹ�����*/
	sqmxdl		decimal(14, 3)	DEFAULT 0.0 ,					/*��Ƿ���޵���*/
	bjdl			decimal(14, 3)	DEFAULT 0.0 ,					/*��������*/
	gzdl			decimal(14, 3)	DEFAULT 0.0 					/*���ϵ���*/
)
grant select on  JDayGYD200808 to public
create unique clustered index JDayGYD200808index1
	on JDayGYD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ����������״̬�����ݱ�(JMeterState) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMeterState')
begin
create table JMeterState
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,
	
	run_bw1		int									null,							/*�������״̬�ֱ�λ1*/
	run_bw2		int									null,							/*�������״̬�ֱ�λ2*/
	run_bw3		int									null,							/*�������״̬�ֱ�λ3*/
	run_bw4		int									null,							/*�������״̬�ֱ�λ4*/
	run_bw5		int									null,							/*�������״̬�ֱ�λ5*/
	run_bw6		int									null,							/*�������״̬�ֱ�λ6*/
	run_bw7		int									null,							/*�������״̬�ֱ�λ7*/
	run_st1		int									null,							/*�������״̬��1*/
	run_st2		int									null,							/*�������״̬��2*/
	run_st3		int									null,							/*�������״̬��3*/
	run_st4		int									null,							/*�������״̬��4*/
	run_st5		int									null,							/*�������״̬��5*/
	run_st6		int									null,							/*�������״̬��6*/
	run_st7		int									null,							/*�������״̬��7*/
	
	rpt_bw1		int									null,							/*�����ϱ�״̬�ֱ�λ1*/
	rpt_bw2		int									null,							/*�����ϱ�״̬�ֱ�λ2*/
	rpt_bw3		int									null,							/*�����ϱ�״̬�ֱ�λ3*/
	rpt_bw4		int									null,							/*�����ϱ�״̬�ֱ�λ4*/
	rpt_bw5		int									null,							/*�����ϱ�״̬�ֱ�λ5*/
	rpt_st1		int									null,							/*�����ϱ�״̬��1*/
	rpt_st2		int									null,							/*�����ϱ�״̬��2*/
	rpt_st3		int									null,							/*�����ϱ�״̬��3*/
	rpt_st4		int									null,							/*�����ϱ�״̬��4*/
	rpt_st5		int									null,							/*�����ϱ�״̬��5*/
	
	card_bw		int									null,							/*�忨״̬�ֱ�λ*/
	card_st		int									null,							/*�忨״̬��*/
		
	reserve1_bw		int							null,							/*����״̬��1��λ*/
	reserve1_st		int							null,							/*����״̬��1*/

	reserve2_bw		int							null,							/*����״̬��2��λ*/
	reserve2_st		int							null,							/*����״̬��2*/	
)
grant select on  JMeterState to public
create unique clustered index JMeterStateindex1
	on JMeterState(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--	'-------Create table ���������¼��(JRM2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JRM2008')
begin
create table JRM2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	op_date				int									not null,			/*���β�������*/

	res_id				smallint						not null,			/*�ͻ����*/
	res_desc			char(64)						null,				  /*�ͻ�����*/
	cons_no				varchar(64)					null,					/*���񻧺�*/
	op_man				char(64)						not null,			/*����Ա*/	
	
	writecard_no	varchar(32)							null,			/*��Ϣ���*/	-- 20130604	
	cacl_type			tinyint				default 0 null,			/*������� 0:�� 1:���Ʒ� 2:��׼Ʒ� */

	pay_val				decimal(12,2)						null,			/*������/���	*/	
	buy_times			int											null,			/*�������*/		
	limit_val			decimal(12,4)   				null,			/*�ڻ���ֵ*/	
	alarm_val			decimal(12,4)   				null,			/*����ֵ*/	
	ztlimit_val		decimal(12,4)   				null,			/*͸֧��ֵ*/	
	pt						decimal(12,4)   				null,			/*pt*/	
	ct						decimal(12,4)   				null,			/*ct*/
	meter_id     	varchar(16)     				null,   	/*ESAM���*/
	rm_date				int										  null,			/*����ʱ��*/
	cur_fei				decimal(12,4)   				null,			/*��ǰ���ʵ��*/
	cur_jtfei			decimal(12,4)   				null,			/*��ǰ���ݵ��*/
	errin_num			int										  null,			/*�Ƿ��忨����*/
	break_num			int										  null,			/*��բ����*/

	dbstate1			int										  null,			/*״̬��1*/
	dbstate2			int										  null,			/*״̬��2*/
	
	bd_zzyz			decimal(12,2)						null,				/*��������й��ܱ��*/
	bd_zyz			decimal(12,2)						null,				/*�����й��ܱ��*/
	bd_zyj			decimal(12,2)						null,				/*�����й�����*/	
	bd_zyf			decimal(12,2)						null,				/*�����й�����*/	
	bd_zyp			decimal(12,2)						null,				/*�����й�ƽ���*/	
	bd_zyg			decimal(12,2)						null,				/*�����й��ȱ��*/
	
	bd_fyz			decimal(12,2)						null,				/*�����й��ܱ��*/
	bd_fyj			decimal(12,2)						null,				/*�����й�����*/	
	bd_fyf			decimal(12,2)						null,				/*�����й�����*/	
	bd_fyp			decimal(12,2)						null,				/*�����й�ƽ���*/	
	bd_fyg			decimal(12,2)						null,				/*�����й��ȱ��*/
	
	remain_val	decimal(12,2)						null,				/*ʣ�����/���*/	
	tz_val			decimal(12,2)						null,				/*͸֧����/���*/	
	totbuy_val	decimal(12,2)						null,				/*�ۼƹ������/���*/	
	lsmonzyz		decimal(12,2)						null,				/*���������й��ܵ���*/
	lssmonzyz		decimal(12,2)						null,				/*�����������й��ܵ���*/

)
grant select on JRM2008 to public
	
create unique clustered index JRM2008index1
	on JRM2008(rtu_id,mp_id,op_date)	
create index JRM2008index2 
	on JRM2008(rtu_id,res_id,op_date)  
end
go
-- ��ǽ���


--   '-------Create table ����վ��ƽ��������ݱ�(linebalancemin2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'linebalancemin2008')
begin
create table linebalancemin2008
(
	linebalance_id	smallint		 		not null,		/*���*/	
	type						tinyint	 	 					null,		/*����*/
	date						int							not null,
	time						int							not null,
	
	dl_zy_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ������й��ܵ���*/	
	dl_fy_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ����й��ܵ���*/	
	dl_zw_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ������޹��ܵ���*/		
	dl_fw_z			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܱ����޹��ܵ���*/	
	dl_zy_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ������й��ܵ���*/	
	dl_fy_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ����й��ܵ���*/	
	dl_zw_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ������޹��ܵ���*/		
	dl_fw_f			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ֱ����޹��ܵ���*/	
	per_zy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й���ı���*/	
	per_fy			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й���ı���*/	
	per_zw			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹���ı���*/		
	per_fw			decimal(14, 3) 	DEFAULT 0.0 	/*�����޹���ı���*/		
)
grant select on  linebalancemin2008 to public
create unique clustered index linebalancemin2008index1
	on linebalancemin2008(linebalance_id,type,date,time)
end
go
-- ��ǽ���


--����������2015.08
--   '-------Create table ���վ�����������ݱ�(BMinXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinXl200808')
begin
create table BMinXl200808
(
	rtu_id				int			   			not null,
	mp_id					smallint   			not null,
	date					int							not null,
	time					int							not null,

	xl_zy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
			
	xl_fy					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����й�������*/	
		
	xl_zw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw					decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 4) 	DEFAULT 0.0 ,	/*�����޹�������*/	
)
grant select on  BMinXl200808 to public
create unique clustered index BMinXl200808index1
	on BMinXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ���������ݱ�(BMonCalcXl2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonCalcXl2008')
begin
create table BMonCalcXl2008
(
	rtu_id		int			   			not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
)
grant select on  BMonCalcXl2008 to public
create unique clustered index BMonCalcXl2008index1
	on BMonCalcXl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



--̫��г�� 20151215
--   '-------Create table ר�����г�����ݱ�(ZMinXb200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinXb200808')
begin
create table ZMinXb200808
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г����ѹ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ*/
		xb_va_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ*/
		xb_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ*/
		xb_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ*/
				
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г����ѹ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ*/
		xb_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ*/
		xb_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ*/
		xb_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ*/
		xb_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ*/
	
		
		xb_ia_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г������*/
		xb_ia_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г������*/
		xb_ia_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г������*/
		xb_ia_05			  decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г������*/
		xb_ia_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г������*/
		xb_ia_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г������*/
		xb_ia_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г������*/
		xb_ia_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г������*/
		xb_ia_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г������*/
		xb_ia_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г������*/
		xb_ia_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г������*/
		xb_ia_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г������*/
		xb_ia_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г������*/
		xb_ia_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г������*/
		xb_ia_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г������*/
		xb_ia_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г������*/
		xb_ia_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г������*/
		xb_ia_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г������*/
		xb_ia_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г������*/
		xb_ia_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г������*/
		
		
		xb_ib_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г������*/
		xb_ib_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г������*/
		xb_ib_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г������*/
		xb_ib_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г������*/
		xb_ib_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г������*/
		xb_ib_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г������*/
		xb_ib_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г������*/
		xb_ib_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г������*/
		xb_ib_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г������*/
		xb_ib_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г������*/
		xb_ib_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г������*/
		xb_ib_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г������*/
		xb_ib_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г������*/
		xb_ib_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г������*/
		xb_ib_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г������*/
		xb_ib_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г������*/
		xb_ib_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г������*/
		xb_ib_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г������*/
		xb_ib_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г������*/
		xb_ib_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г������*/
				
		xb_ic_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г������*/
		xb_ic_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г������*/
		xb_ic_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г������*/
		xb_ic_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г������*/
		xb_ic_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г������*/
		xb_ic_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г������*/
		xb_ic_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г������*/
		xb_ic_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г������*/
		xb_ic_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г������*/
		xb_ic_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г������*/
		xb_ic_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г������*/
		xb_ic_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г������*/
		xb_ic_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г������*/
		xb_ic_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г������*/
		xb_ic_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г������*/
		xb_ic_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г������*/
		xb_ic_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г������*/
		xb_ic_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г������*/
		xb_ic_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г������*/
		xb_ic_21				decimal(14, 3) 	DEFAULT 0.0 	/*C��21��г������*/
		
)
grant select on  ZMinXb200808 to public
create unique clustered index ZMinXb200808index1
	on ZMinXb200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���
--   '-------Create table ר�����г�����������ݱ�(ZMinXRate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinXRate200808')
begin
create table ZMinXRate200808
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xbr_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A����г����ѹ������*/
		xbr_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B����г����ѹ������*/
		xbr_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C����г����ѹ������*/
		
		xbr_va_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г����ѹ������*/
		xbr_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ������*/
		xbr_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ������*/
		xbr_va_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ������*/
		xbr_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ������*/
		xbr_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ������*/
		xbr_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ������*/
		xbr_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ������*/
		xbr_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ������*/
		xbr_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ������*/
		xbr_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ������*/
		xbr_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ������*/
		xbr_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ������*/
		xbr_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ������*/
		xbr_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ������*/
		xbr_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ������*/
		xbr_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ������*/
		xbr_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ������*/
		xbr_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ������*/
		xbr_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ������*/
		
		xbr_vb_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г����ѹ������*/
		xbr_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ������*/
		xbr_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ������*/
		xbr_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ������*/
		xbr_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ������*/
		xbr_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ������*/
		xbr_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ������*/
		xbr_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ������*/
		xbr_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ������*/
		xbr_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ������*/
		xbr_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ������*/
		xbr_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ������*/
		xbr_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ������*/
		xbr_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ������*/
		xbr_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ������*/
		xbr_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ������*/
		xbr_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ������*/
		xbr_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ������*/
		xbr_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ������*/
		xbr_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ������*/
	
		xbr_vc_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г����ѹ������*/
		xbr_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ������*/
		xbr_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ������*/
		xbr_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ������*/
		xbr_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ������*/
		xbr_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ������*/
		xbr_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ������*/
		xbr_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ������*/
		xbr_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ������*/
		xbr_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ������*/
		xbr_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ������*/
		xbr_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ������*/
		xbr_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ������*/
		xbr_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ������*/
		xbr_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ������*/
		xbr_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ������*/
		xbr_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ������*/
		xbr_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ������*/
		xbr_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ������*/
		xbr_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ������*/
			
		xbr_ia_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г������������*/
		xbr_ia_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г������������*/
		xbr_ia_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г������������*/
		xbr_ia_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г������������*/
		xbr_ia_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г������������*/
		xbr_ia_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г������������*/
		xbr_ia_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г������������*/
		xbr_ia_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г������������*/
		xbr_ia_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г������������*/
		xbr_ia_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г������������*/
		xbr_ia_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г������������*/
		xbr_ia_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г������������*/
		xbr_ia_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г������������*/
		xbr_ia_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г������������*/
		xbr_ia_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г������������*/
		xbr_ia_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г������������*/
		xbr_ia_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г������������*/
		xbr_ia_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г������������*/
		xbr_ia_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г������������*/
		xbr_ia_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г������������*/
				
		
		xbr_ib_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г������������*/
		xbr_ib_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г������������*/
		xbr_ib_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г������������*/
		xbr_ib_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г������������*/
		xbr_ib_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г������������*/
		xbr_ib_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г������������*/
		xbr_ib_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г������������*/
		xbr_ib_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г������������*/
		xbr_ib_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г������������*/
		xbr_ib_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г������������*/
		xbr_ib_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г������������*/
		xbr_ib_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г������������*/
		xbr_ib_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г������������*/
		xbr_ib_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г������������*/
		xbr_ib_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г������������*/
		xbr_ib_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г������������*/
		xbr_ib_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г������������*/
		xbr_ib_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г������������*/
		xbr_ib_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г������������*/
		xbr_ib_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г������������*/
		
		
		xbr_ic_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г������������*/
		xbr_ic_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г������������*/
		xbr_ic_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г������������*/
		xbr_ic_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г������������*/
		xbr_ic_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г������������*/
		xbr_ic_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г������������*/
		xbr_ic_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г������������*/
		xbr_ic_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г������������*/
		xbr_ic_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г������������*/
		xbr_ic_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г������������*/
		xbr_ic_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г������������*/
		xbr_ic_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г������������*/
		xbr_ic_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г������������*/
		xbr_ic_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г������������*/
		xbr_ic_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г������������*/
		xbr_ic_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г������������*/
		xbr_ic_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г������������*/
		xbr_ic_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г������������*/
		xbr_ic_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г������������*/
		xbr_ic_21				decimal(14, 3) 	DEFAULT 0.0 	/*C��21��г������������*/
)
grant select on  ZMinXRate200808 to public
create unique clustered index ZMinXRate200808index1
	on ZMinXRate200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר����������չ���ݱ�(ZMinExt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinExt200808')
begin
create table ZMinExt200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	freq		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����Ƶ��*/
	
	vab			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUab*/
	vbc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUbc*/
	vca			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUca*/
		
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�����ڹ���*/
	sa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA�����ڹ���*/
	sb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB�����ڹ���*/
	sc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC�����ڹ���*/
			
	cs1			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��������*/
	cs2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�ͺ�������*/
	
	jva			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����A���ѹ*/
	jvb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����B���ѹ*/
	jvc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����C���ѹ*/
	jia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����A�����*/
	jib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����B�����*/
	jic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����C�����*/	
	jp			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ܻ����й�����*/
	jpa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA������й�����*/
	jpb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB������й�����*/
	jpc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC������й�����*/
	
	
	xva			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��A���ѹռ����*/
	xvb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��B���ѹռ����*/
	xvc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��C���ѹռ����*/
	xia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��A�����ռ����*/
	xib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��B�����ռ����*/
	xic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��C�����ռ����*/	
	xp			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г���й�����*/
	xpa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA��г���й�����*/
	xpb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB��г���й�����*/
	xpc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC��г���й�����*/
	
	xvar		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��A���ѹ�ܻ�����*/
	xvbr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��B���ѹ�ܻ�����*/
	xvcr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��C���ѹ�ܻ�����*/
	xiar		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��A������ܻ�����*/
	xibr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��B������ܻ�����*/
	xicr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��C������ܻ�����*/
	
	q1			decimal(14, 3) 	DEFAULT 0.0 ,	/*	һ�����޹�����*/
	q2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
	q3			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
	q4			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
		
	i2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������*/
)
grant select on  ZMinExt200808 to public
create unique clustered index ZMinExt200808index1
	on ZMinExt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר�������ӵ�ѹ�����������ݱ�(ZMinUIWeight200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinUIWeight200808')
begin
create table ZMinUIWeight200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	zxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������ѹ����*/
	fxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�ฺ���ѹ����*/
	lxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������ѹ����*/
	zxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������ѹ����*/
	fxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�ฺ���ѹ����*/
	lxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������ѹ����*/
	zxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������ѹ����*/
	fxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�ฺ���ѹ����*/
	lxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������ѹ����*/
	
	zxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������������*/
	fxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�ฺ���������*/
	lxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������������*/
	zxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������������*/
	fxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�ฺ���������*/
	lxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������������*/
	zxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������������*/
	fxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�ฺ���������*/
	lxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������������*/
)
grant select on  ZMinUIWeight200808 to public
create unique clustered index ZMinUIWeight200808index1
	on ZMinUIWeight200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ר�������ӵ�ѹ������ƽ������ݱ�(ZMinUIImbalance200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinUIImbalance200808')
begin
create table ZMinUIImbalance200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	v				decimal(14, 3) 	DEFAULT 0.0 ,	/*	�����ѹ��ƽ���*/
	v0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���������ѹ��ƽ���*/	
	v2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���ฺ���ѹ��ƽ���*/
	
	i				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���������ƽ���*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������������ƽ���*/	
	i2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���ฺ�������ƽ���*/

	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ѹ*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ѹ*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ѹ*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�����*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�����*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*C�����*/

	vab			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUab*/
	vbc			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUbc*/
	vca			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUca*/


	v_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ��ƽ�����ֵ*/
	v_max_tm	int							DEFAULT 0 ,		  /*��ѹ��ƽ�����ֵ����ʱ��*/
	i_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*������ƽ�����ֵ*/
	i_max_tm	int							DEFAULT 0 ,		  /*������ƽ�����ֵ����ʱ��*/		
			
	v0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ�����ֵ*/
	v0_max_tm	int							DEFAULT 0 ,			/*�����ѹ��ƽ�����ֵ����ʱ��*/
	i0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ�����ֵ*/
	i0_max_tm	int							DEFAULT 0 ,			/*���������ƽ�����ֵ����ʱ��*/		
	
	v2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ�����ֵ*/
	v2_max_tm	int							DEFAULT 0 ,			/*�����ѹ��ƽ�����ֵ����ʱ��*/
	i2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ�����ֵ*/
	i2_max_tm	int							DEFAULT 0 ,			/*���������ƽ�����ֵ����ʱ��*/
)
grant select on  ZMinUIImbalance200808 to public
create unique clustered index ZMinUIImbalance200808index1
	on ZMinUIImbalance200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ר�������ӵ�ѹƫ��ϸ������ݱ�(ZMinVPC200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinVPC200808')
begin
create table ZMinVPC200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	vapc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹƫ��*/
	vbpc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹƫ��*/
	vcpc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹƫ��*/
	
	vahg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹƫ��ϸ���*/
	vbhg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹƫ��ϸ���*/
	vchg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹƫ��ϸ���*/
)
grant select on  ZMinVPC200808 to public
create unique clustered index ZMinVPC200808index1
	on ZMinVPC200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	




--   '-------Create table ר�����ߴ�г�����ݱ�(ZMinHXb200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinHXb200808')
begin
create table ZMinHXb200808
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_va_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г����ѹ*/
		xb_va_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г����ѹ*/
		xb_va_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г����ѹ*/
		xb_va_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г����ѹ*/
		xb_va_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г����ѹ*/
		xb_va_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г����ѹ*/
		xb_va_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г����ѹ*/
		xb_va_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г����ѹ*/
		xb_va_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г����ѹ*/
		xb_va_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г����ѹ*/
		xb_va_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г����ѹ*/
		xb_va_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г����ѹ*/
		xb_va_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г����ѹ*/
		xb_va_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г����ѹ*/
		xb_va_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г����ѹ*/
		xb_va_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г����ѹ*/
		xb_va_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г����ѹ*/
		xb_va_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г����ѹ*/
		xb_va_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г����ѹ*/
		xb_va_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г����ѹ*/
		xb_va_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г����ѹ*/
		xb_va_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г����ѹ*/
		xb_va_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г����ѹ*/
		xb_va_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г����ѹ*/
		xb_va_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г����ѹ*/
		xb_va_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г����ѹ*/
		xb_va_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г����ѹ*/
		xb_va_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г����ѹ*/
		xb_va_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г����ѹ*/
				
		
		xb_vb_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г����ѹ*/
		xb_vb_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г����ѹ*/
		xb_vb_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г����ѹ*/
		xb_vb_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г����ѹ*/
		xb_vb_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г����ѹ*/
		xb_vb_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г����ѹ*/
		xb_vb_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г����ѹ*/
		xb_vb_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г����ѹ*/
		xb_vb_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г����ѹ*/
		xb_vb_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г����ѹ*/
		xb_vb_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г����ѹ*/
		xb_vb_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г����ѹ*/
		xb_vb_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г����ѹ*/
		xb_vb_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г����ѹ*/
		xb_vb_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г����ѹ*/
		xb_vb_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г����ѹ*/
		xb_vb_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г����ѹ*/
		xb_vb_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г����ѹ*/
		xb_vb_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г����ѹ*/
		xb_vb_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г����ѹ*/
		xb_vb_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г����ѹ*/
		xb_vb_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г����ѹ*/
		xb_vb_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г����ѹ*/
		xb_vb_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г����ѹ*/
		xb_vb_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г����ѹ*/
		xb_vb_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г����ѹ*/
		xb_vb_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г����ѹ*/
		xb_vb_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г����ѹ*/
		xb_vb_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г����ѹ*/
		
		
		xb_vc_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г����ѹ*/
		xb_vc_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г����ѹ*/
		xb_vc_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г����ѹ*/
		xb_vc_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г����ѹ*/
		xb_vc_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г����ѹ*/
		xb_vc_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г����ѹ*/
		xb_vc_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г����ѹ*/
		xb_vc_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г����ѹ*/
		xb_vc_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г����ѹ*/
		xb_vc_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г����ѹ*/
		xb_vc_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г����ѹ*/
		xb_vc_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г����ѹ*/
		xb_vc_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г����ѹ*/
		xb_vc_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г����ѹ*/
		xb_vc_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г����ѹ*/
		xb_vc_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г����ѹ*/
		xb_vc_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г����ѹ*/
		xb_vc_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г����ѹ*/
		xb_vc_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г����ѹ*/
		xb_vc_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г����ѹ*/
		xb_vc_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г����ѹ*/
		xb_vc_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г����ѹ*/
		xb_vc_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г����ѹ*/
		xb_vc_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г����ѹ*/
		xb_vc_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г����ѹ*/
		xb_vc_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г����ѹ*/
		xb_vc_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г����ѹ*/
		xb_vc_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г����ѹ*/
		xb_vc_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г����ѹ*/
	
		
		xb_ia_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г������*/
		xb_ia_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г������*/
		xb_ia_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г������*/
		xb_ia_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г������*/
		xb_ia_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г������*/
		xb_ia_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г������*/
		xb_ia_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г������*/
		xb_ia_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г������*/
		xb_ia_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г������*/
		xb_ia_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г������*/
		xb_ia_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г������*/
		xb_ia_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г������*/
		xb_ia_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г������*/
		xb_ia_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г������*/
		xb_ia_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г������*/
		xb_ia_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г������*/
		xb_ia_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г������*/
		xb_ia_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г������*/
		xb_ia_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г������*/
		xb_ia_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г������*/
		xb_ia_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г������*/
		xb_ia_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г������*/
		xb_ia_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г������*/
		xb_ia_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г������*/
		xb_ia_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г������*/
		xb_ia_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г������*/
		xb_ia_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г������*/
		xb_ia_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г������*/
		xb_ia_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г������*/
				
		
		xb_ib_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г������*/
		xb_ib_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г������*/
		xb_ib_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г������*/
		xb_ib_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г������*/
		xb_ib_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г������*/
		xb_ib_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г������*/
		xb_ib_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г������*/
		xb_ib_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г������*/
		xb_ib_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г������*/
		xb_ib_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г������*/
		xb_ib_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г������*/
		xb_ib_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г������*/
		xb_ib_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г������*/
		xb_ib_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г������*/
		xb_ib_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г������*/
		xb_ib_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г������*/
		xb_ib_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г������*/
		xb_ib_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г������*/
		xb_ib_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г������*/
		xb_ib_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г������*/
		xb_ib_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г������*/
		xb_ib_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г������*/
		xb_ib_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г������*/
		xb_ib_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г������*/
		xb_ib_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г������*/
		xb_ib_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г������*/
		xb_ib_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г������*/
		xb_ib_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г������*/
		xb_ib_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г������*/
		
		
		xb_ic_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г������*/
		xb_ic_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г������*/
		xb_ic_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г������*/
		xb_ic_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г������*/
		xb_ic_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г������*/
		xb_ic_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г������*/
		xb_ic_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г������*/
		xb_ic_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г������*/
		xb_ic_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г������*/
		xb_ic_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г������*/
		xb_ic_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г������*/
		xb_ic_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г������*/
		xb_ic_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г������*/
		xb_ic_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г������*/
		xb_ic_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г������*/
		xb_ic_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г������*/
		xb_ic_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г������*/
		xb_ic_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г������*/
		xb_ic_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г������*/
		xb_ic_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г������*/
		xb_ic_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г������*/
		xb_ic_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г������*/
		xb_ic_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г������*/
		xb_ic_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г������*/
		xb_ic_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г������*/
		xb_ic_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г������*/
		xb_ic_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г������*/
		xb_ic_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г������*/
		xb_ic_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г������*/
		
)
grant select on  ZMinHXb200808 to public
create unique clustered index ZMinHXb200808index1
	on ZMinHXb200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���
--   '-------Create table ר�����ߴ�г�����������ݱ�(ZMinHXRate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinHXRate200808')
begin
create table ZMinHXRate200808
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
				
		xbr_va_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г����ѹ������*/
		xbr_va_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г����ѹ������*/
		xbr_va_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г����ѹ������*/
		xbr_va_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г����ѹ������*/
		xbr_va_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г����ѹ������*/
		xbr_va_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г����ѹ������*/
		xbr_va_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г����ѹ������*/
		xbr_va_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г����ѹ������*/
		xbr_va_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г����ѹ������*/
		xbr_va_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г����ѹ������*/
		xbr_va_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г����ѹ������*/
		xbr_va_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г����ѹ������*/
		xbr_va_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г����ѹ������*/
		xbr_va_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г����ѹ������*/
		xbr_va_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г����ѹ������*/
		xbr_va_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г����ѹ������*/
		xbr_va_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г����ѹ������*/
		xbr_va_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г����ѹ������*/
		xbr_va_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г����ѹ������*/
		xbr_va_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г����ѹ������*/
		xbr_va_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г����ѹ������*/
		xbr_va_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г����ѹ������*/
		xbr_va_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г����ѹ������*/
		xbr_va_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г����ѹ������*/
		xbr_va_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г����ѹ������*/
		xbr_va_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г����ѹ������*/
		xbr_va_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г����ѹ������*/
		xbr_va_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г����ѹ������*/
		xbr_va_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г����ѹ������*/
		
		xbr_vb_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г����ѹ������*/
		xbr_vb_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г����ѹ������*/
		xbr_vb_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г����ѹ������*/
		xbr_vb_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г����ѹ������*/
		xbr_vb_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г����ѹ������*/
		xbr_vb_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г����ѹ������*/
		xbr_vb_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г����ѹ������*/
		xbr_vb_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г����ѹ������*/
		xbr_vb_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г����ѹ������*/
		xbr_vb_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г����ѹ������*/
		xbr_vb_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г����ѹ������*/
		xbr_vb_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г����ѹ������*/
		xbr_vb_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г����ѹ������*/
		xbr_vb_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г����ѹ������*/
		xbr_vb_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г����ѹ������*/
		xbr_vb_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г����ѹ������*/
		xbr_vb_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г����ѹ������*/
		xbr_vb_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г����ѹ������*/
		xbr_vb_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г����ѹ������*/
		xbr_vb_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г����ѹ������*/
		xbr_vb_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г����ѹ������*/
		xbr_vb_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г����ѹ������*/
		xbr_vb_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г����ѹ������*/
		xbr_vb_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г����ѹ������*/
		xbr_vb_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г����ѹ������*/
		xbr_vb_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г����ѹ������*/
		xbr_vb_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г����ѹ������*/
		xbr_vb_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г����ѹ������*/
		xbr_vb_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г����ѹ������*/
	
		xbr_vc_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г����ѹ������*/
		xbr_vc_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г����ѹ������*/
		xbr_vc_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г����ѹ������*/
		xbr_vc_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г����ѹ������*/
		xbr_vc_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г����ѹ������*/
		xbr_vc_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г����ѹ������*/
		xbr_vc_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г����ѹ������*/
		xbr_vc_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г����ѹ������*/
		xbr_vc_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г����ѹ������*/
		xbr_vc_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г����ѹ������*/
		xbr_vc_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г����ѹ������*/
		xbr_vc_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г����ѹ������*/
		xbr_vc_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г����ѹ������*/
		xbr_vc_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г����ѹ������*/
		xbr_vc_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г����ѹ������*/
		xbr_vc_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г����ѹ������*/
		xbr_vc_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г����ѹ������*/
		xbr_vc_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г����ѹ������*/
		xbr_vc_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г����ѹ������*/
		xbr_vc_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г����ѹ������*/
		xbr_vc_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г����ѹ������*/
		xbr_vc_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г����ѹ������*/
		xbr_vc_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г����ѹ������*/
		xbr_vc_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г����ѹ������*/
		xbr_vc_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г����ѹ������*/
		xbr_vc_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г����ѹ������*/
		xbr_vc_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г����ѹ������*/
		xbr_vc_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г����ѹ������*/
		xbr_vc_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г����ѹ������*/
			
		xbr_ia_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г������������*/
		xbr_ia_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г������������*/
		xbr_ia_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г������������*/
		xbr_ia_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г������������*/
		xbr_ia_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г������������*/
		xbr_ia_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г������������*/
		xbr_ia_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г������������*/
		xbr_ia_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г������������*/
		xbr_ia_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г������������*/
		xbr_ia_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г������������*/
		xbr_ia_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г������������*/
		xbr_ia_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г������������*/
		xbr_ia_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г������������*/
		xbr_ia_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г������������*/
		xbr_ia_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г������������*/
		xbr_ia_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г������������*/
		xbr_ia_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г������������*/
		xbr_ia_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г������������*/
		xbr_ia_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г������������*/
		xbr_ia_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г������������*/
		xbr_ia_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г������������*/
		xbr_ia_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г������������*/
		xbr_ia_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г������������*/
		xbr_ia_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г������������*/
		xbr_ia_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г������������*/
		xbr_ia_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г������������*/
		xbr_ia_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г������������*/
		xbr_ia_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г������������*/
		xbr_ia_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г������������*/
				
		
		xbr_ib_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г������������*/
		xbr_ib_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г������������*/
		xbr_ib_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г������������*/
		xbr_ib_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г������������*/
		xbr_ib_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г������������*/
		xbr_ib_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г������������*/
		xbr_ib_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г������������*/
		xbr_ib_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г������������*/
		xbr_ib_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г������������*/
		xbr_ib_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г������������*/
		xbr_ib_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г������������*/
		xbr_ib_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г������������*/
		xbr_ib_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г������������*/
		xbr_ib_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г������������*/
		xbr_ib_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г������������*/
		xbr_ib_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г������������*/
		xbr_ib_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г������������*/
		xbr_ib_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г������������*/
		xbr_ib_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г������������*/
		xbr_ib_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г������������*/
		xbr_ib_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г������������*/
		xbr_ib_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г������������*/
		xbr_ib_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г������������*/
		xbr_ib_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г������������*/
		xbr_ib_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г������������*/
		xbr_ib_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г������������*/
		xbr_ib_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г������������*/
		xbr_ib_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г������������*/
		xbr_ib_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г������������*/
		
		
		xbr_ic_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г������������*/
		xbr_ic_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г������������*/
		xbr_ic_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г������������*/
		xbr_ic_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г������������*/
		xbr_ic_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г������������*/
		xbr_ic_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г������������*/
		xbr_ic_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г������������*/
		xbr_ic_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г������������*/
		xbr_ic_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г������������*/
		xbr_ic_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г������������*/
		xbr_ic_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г������������*/
		xbr_ic_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г������������*/
		xbr_ic_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г������������*/
		xbr_ic_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г������������*/
		xbr_ic_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г������������*/
		xbr_ic_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г������������*/
		xbr_ic_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г������������*/
		xbr_ic_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г������������*/
		xbr_ic_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г������������*/
		xbr_ic_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г������������*/
		xbr_ic_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г������������*/
		xbr_ic_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г������������*/
		xbr_ic_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г������������*/
		xbr_ic_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г������������*/
		xbr_ic_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г������������*/
		xbr_ic_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г������������*/
		xbr_ic_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г������������*/
		xbr_ic_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г������������*/
		xbr_ic_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г������������*/
)
grant select on  ZMinHXRate200808 to public
create unique clustered index ZMinHXRate200808index1
	on ZMinHXRate200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ר������յ�ѹ������������ƽ�����ݱ�(ZDayUIFLBal200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayUIFLBal200808')
begin
create table ZDayUIFLBal200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,

		v_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ��ƽ������ֵ*/
		v_max_tm		int							DEFAULT 0 ,		/*��ѹ��ƽ������ֵ����ʱ��*/
		v_tm				int							DEFAULT 0 ,		/*��ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*������ƽ������ֵ*/
		i_max_tm		int							DEFAULT 0 ,		/*������ƽ������ֵ����ʱ��*/		
		i_tm				int							DEFAULT 0 ,		/*������ƽ��ȳ������ۼ�ʱ��*/
				

		v0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ������ֵ*/
		v0_max_tm		int							DEFAULT 0 ,		/*�����ѹ��ƽ������ֵ����ʱ��*/
		v0_tm				int							DEFAULT 0 ,		/*�����ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ������ֵ*/
		i0_max_tm		int							DEFAULT 0 ,		/*���������ƽ������ֵ����ʱ��*/		
		i0_tm				int							DEFAULT 0 ,		/*���������ƽ��ȳ������ۼ�ʱ��*/
		
		v2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ������ֵ*/
		v2_max_tm		int							DEFAULT 0 ,		/*�����ѹ��ƽ������ֵ����ʱ��*/
		v2_tm				int							DEFAULT 0 ,		/*�����ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ������ֵ*/
		i2_max_tm		int							DEFAULT 0 ,		/*���������ƽ������ֵ����ʱ��*/		
		i2_tm				int							DEFAULT 0 ,		/*���������ƽ��ȳ������ۼ�ʱ��*/
)
grant select on  ZDayUIFLBal200808 to public
create unique clustered index ZDayUIFLBal200808index1
	on ZDayUIFLBal200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר������յ�ѹƫ��ϸ������ݱ�(ZDayVPC200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayVPC200808')
begin
create table ZDayVPC200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	

	vapc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ�����ֵ*/
	vapc_max_tm		int							DEFAULT 0 ,			/*A���ѹƫ�����ֵ����ʱ��*/
	vahg_tm				int							DEFAULT 0 ,			/*A���ѹƫ��ϸ�ʱ��*/	
	vahgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ��ϸ���*/

	vbpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ�����ֵ*/
	vbpc_max_tm		int							DEFAULT 0 ,			/*B���ѹƫ�����ֵ����ʱ��*/
	vbhg_tm				int							DEFAULT 0 ,			/*B���ѹƫ��ϸ�ʱ��*/	
	vbhgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ��ϸ���*/

	vcpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ�����ֵ*/
	vcpc_max_tm		int							DEFAULT 0 ,			/*C���ѹƫ�����ֵ����ʱ��*/
	vchg_tm				int							DEFAULT 0 ,			/*C���ѹƫ��ϸ�ʱ��*/	
	vchgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ��ϸ���*/
)
grant select on  ZDayVPC200808 to public
create unique clustered index ZDayVPC200808index1
	on ZDayVPC200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר������µ�ѹƫ��ϸ������ݱ�(ZMonVPC2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonVPC2008')
begin
create table ZMonVPC2008
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	

	vapc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ�����ֵ*/
	vapc_max_tm		int							DEFAULT 0 ,			/*A���ѹƫ�����ֵ����ʱ��*/
	vahg_tm				int							DEFAULT 0 ,			/*A���ѹƫ��ϸ�ʱ��*/	
	vahgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ��ϸ���*/

	vbpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ�����ֵ*/
	vbpc_max_tm		int							DEFAULT 0 ,			/*B���ѹƫ�����ֵ����ʱ��*/
	vbhg_tm				int							DEFAULT 0 ,			/*B���ѹƫ��ϸ�ʱ��*/	
	vbhgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ��ϸ���*/

	vcpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ�����ֵ*/
	vcpc_max_tm		int							DEFAULT 0 ,			/*C���ѹƫ�����ֵ����ʱ��*/
	vchg_tm				int							DEFAULT 0 ,			/*C���ѹƫ��ϸ�ʱ��*/	
	vchgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ��ϸ���*/
)
grant select on  ZMonVPC2008 to public
create unique clustered index ZMonVPC2008index1
	on ZMonVPC2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר���������������ݱ�(ZMinMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinMaxXl200808')
begin
create table ZMinMaxXl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
)
grant select on  ZMinMaxXl200808 to public
create unique clustered index ZMinMaxXl200808index1
	on ZMinMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר�������ӵ�ѹ���������ݱ�(ZMinVFLUT200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinVFLUT200808')
begin
create table ZMinVFLUT200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	vaflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹ����*/
	vbflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹ����*/
	vcflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹ����*/
	
	vaflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹͻ��/����*/
	vbflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹͻ��/����*/
	vcflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹͻ��/����*/
)
grant select on  ZMinVFLUT200808 to public
create unique clustered index ZMinVFLUT200808index1
	on ZMinVFLUT200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	



--   '-------Create table ר�����г���������ݱ�(ZMonXbI2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbI2008')
begin
create table ZMonXbI2008
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_ia_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г���������ֵ*/
		xb_ia_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г���������ֵ*/
		xb_ia_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г���������ֵ*/
		xb_ia_05			    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г���������ֵ*/
		xb_ia_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г���������ֵ*/
		xb_ia_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г���������ֵ*/
		xb_ia_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г���������ֵ*/
		xb_ia_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г���������ֵ*/
		xb_ia_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г���������ֵ*/
		xb_ia_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г���������ֵ*/
		xb_ia_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г���������ֵ*/
		xb_ia_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г���������ֵ*/
		xb_ia_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г���������ֵ*/
		xb_ia_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г���������ֵ*/
		xb_ia_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г���������ֵ*/
		xb_ia_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г���������ֵ*/
		xb_ia_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г���������ֵ*/
		xb_ia_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г���������ֵ*/
		xb_ia_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г���������ֵ*/
		xb_ia_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г���������ֵ*/
		xb_ia							decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
		
		xb_ia_02_tm				int		DEFAULT 0 ,							/*A��2��г���������ֵ����ʱ��*/
		xb_ia_03_tm				int		DEFAULT 0 ,							/*A��3��г���������ֵ����ʱ��*/
		xb_ia_04_tm				int		DEFAULT 0 ,							/*A��4��г���������ֵ����ʱ��*/
		xb_ia_05_tm				int		DEFAULT 0 ,							/*A��5��г���������ֵ����ʱ��*/
		xb_ia_06_tm				int		DEFAULT 0 ,							/*A��6��г���������ֵ����ʱ��*/
		xb_ia_07_tm				int		DEFAULT 0 ,							/*A��7��г���������ֵ����ʱ��*/
		xb_ia_08_tm				int		DEFAULT 0 ,							/*A��8��г���������ֵ����ʱ��*/
		xb_ia_09_tm				int		DEFAULT 0 ,							/*A��9��г���������ֵ����ʱ��*/
		xb_ia_10_tm				int		DEFAULT 0 ,							/*A��10��г���������ֵ����ʱ��*/
		xb_ia_11_tm				int		DEFAULT 0 ,							/*A��11��г���������ֵ����ʱ��*/
		xb_ia_12_tm				int		DEFAULT 0 ,							/*A��12��г���������ֵ����ʱ��*/
		xb_ia_13_tm				int		DEFAULT 0 ,							/*A��13��г���������ֵ����ʱ��*/
		xb_ia_14_tm				int		DEFAULT 0 ,							/*A��14��г���������ֵ����ʱ��*/
		xb_ia_15_tm				int		DEFAULT 0 ,							/*A��15��г���������ֵ����ʱ��*/
		xb_ia_16_tm				int		DEFAULT 0 ,							/*A��16��г���������ֵ����ʱ��*/
		xb_ia_17_tm				int		DEFAULT 0 ,							/*A��17��г���������ֵ����ʱ��*/
		xb_ia_18_tm				int		DEFAULT 0 ,							/*A��18��г���������ֵ����ʱ��*/
		xb_ia_19_tm				int		DEFAULT 0 ,							/*A��19��г���������ֵ����ʱ��*/
		xb_ia_20_tm				int		DEFAULT 0 ,							/*A��20��г���������ֵ����ʱ��*/
		xb_ia_21_tm				int		DEFAULT 0 ,							/*A��21��г���������ֵ����ʱ��*/
		xb_ia_tm					int		DEFAULT 0 ,					 	  /*A���ܻ���������ֵ����ʱ��*/
		
		
		xb_ib_02					decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г���������ֵ*/
		xb_ib_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г���������ֵ*/
		xb_ib_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г���������ֵ*/
		xb_ib_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г���������ֵ*/
		xb_ib_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г���������ֵ*/
		xb_ib_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г���������ֵ*/
		xb_ib_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г���������ֵ*/
		xb_ib_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г���������ֵ*/
		xb_ib_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г���������ֵ*/
		xb_ib_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г���������ֵ*/
		xb_ib_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г���������ֵ*/
		xb_ib_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г���������ֵ*/
		xb_ib_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г���������ֵ*/
		xb_ib_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г���������ֵ*/
		xb_ib_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г���������ֵ*/
		xb_ib_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г���������ֵ*/
		xb_ib_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г���������ֵ*/
		xb_ib_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г���������ֵ*/
		xb_ib_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г���������ֵ*/
		xb_ib_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г���������ֵ*/
		xb_ib							decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_ib_02_tm				int		DEFAULT 0 ,							/*B��2��г���������ֵ����ʱ��*/
		xb_ib_03_tm				int		DEFAULT 0 ,							/*B��3��г���������ֵ����ʱ��*/
		xb_ib_04_tm				int		DEFAULT 0 ,							/*B��4��г���������ֵ����ʱ��*/
		xb_ib_05_tm				int		DEFAULT 0 ,							/*B��5��г���������ֵ����ʱ��*/
		xb_ib_06_tm				int		DEFAULT 0 ,							/*B��6��г���������ֵ����ʱ��*/
		xb_ib_07_tm				int		DEFAULT 0 ,							/*B��7��г���������ֵ����ʱ��*/
		xb_ib_08_tm				int		DEFAULT 0 ,							/*B��8��г���������ֵ����ʱ��*/
		xb_ib_09_tm				int		DEFAULT 0 ,							/*B��9��г���������ֵ����ʱ��*/
		xb_ib_10_tm				int		DEFAULT 0 ,							/*B��10��г���������ֵ����ʱ��*/
		xb_ib_11_tm				int		DEFAULT 0 ,							/*B��11��г���������ֵ����ʱ��*/
		xb_ib_12_tm				int		DEFAULT 0 ,							/*B��12��г���������ֵ����ʱ��*/
		xb_ib_13_tm				int		DEFAULT 0 ,							/*B��13��г���������ֵ����ʱ��*/
		xb_ib_14_tm				int		DEFAULT 0 ,							/*B��14��г���������ֵ����ʱ��*/
		xb_ib_15_tm				int		DEFAULT 0 ,							/*B��15��г���������ֵ����ʱ��*/
		xb_ib_16_tm				int		DEFAULT 0 ,							/*B��16��г���������ֵ����ʱ��*/
		xb_ib_17_tm				int		DEFAULT 0 ,							/*B��17��г���������ֵ����ʱ��*/
		xb_ib_18_tm				int		DEFAULT 0 ,							/*B��18��г���������ֵ����ʱ��*/
		xb_ib_19_tm				int		DEFAULT 0 ,							/*B��19��г���������ֵ����ʱ��*/
		xb_ib_20_tm				int		DEFAULT 0 ,							/*B��20��г���������ֵ����ʱ��*/
		xb_ib_21_tm				int		DEFAULT 0 ,							/*B��21��г���������ֵ����ʱ��*/
		xb_ib_tm					int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_ic_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г���������ֵ*/
		xb_ic_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г���������ֵ*/
		xb_ic_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г���������ֵ*/
		xb_ic_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г���������ֵ*/
		xb_ic_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г���������ֵ*/
		xb_ic_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г���������ֵ*/
		xb_ic_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г���������ֵ*/
		xb_ic_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г���������ֵ*/
		xb_ic_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г���������ֵ*/
		xb_ic_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г���������ֵ*/
		xb_ic_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г���������ֵ*/
		xb_ic_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г���������ֵ*/
		xb_ic_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г���������ֵ*/
		xb_ic_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г���������ֵ*/
		xb_ic_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г���������ֵ*/
		xb_ic_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г���������ֵ*/
		xb_ic_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г���������ֵ*/
		xb_ic_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г���������ֵ*/
		xb_ic_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г���������ֵ*/
		xb_ic_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г���������ֵ*/
		xb_ic							decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_ic_02_tm				int		DEFAULT 0 ,							/*C��2��г���������ֵ����ʱ��*/
		xb_ic_03_tm				int		DEFAULT 0 ,							/*C��3��г���������ֵ����ʱ��*/
		xb_ic_04_tm				int		DEFAULT 0 ,							/*C��4��г���������ֵ����ʱ��*/
		xb_ic_05_tm				int		DEFAULT 0 ,							/*C��5��г���������ֵ����ʱ��*/
		xb_ic_06_tm				int		DEFAULT 0 ,							/*C��6��г���������ֵ����ʱ��*/
		xb_ic_07_tm				int		DEFAULT 0 ,							/*C��7��г���������ֵ����ʱ��*/
		xb_ic_08_tm				int		DEFAULT 0 ,							/*C��8��г���������ֵ����ʱ��*/
		xb_ic_09_tm				int		DEFAULT 0 ,							/*C��9��г���������ֵ����ʱ��*/
		xb_ic_10_tm				int		DEFAULT 0 ,							/*C��10��г���������ֵ����ʱ��*/
		xb_ic_11_tm				int		DEFAULT 0 ,							/*C��11��г���������ֵ����ʱ��*/
		xb_ic_12_tm				int		DEFAULT 0 ,							/*C��12��г���������ֵ����ʱ��*/
		xb_ic_13_tm				int		DEFAULT 0 ,							/*C��13��г���������ֵ����ʱ��*/
		xb_ic_14_tm				int		DEFAULT 0 ,							/*C��14��г���������ֵ����ʱ��*/
		xb_ic_15_tm				int		DEFAULT 0 ,							/*C��15��г���������ֵ����ʱ��*/
		xb_ic_16_tm				int		DEFAULT 0 ,							/*C��16��г���������ֵ����ʱ��*/
		xb_ic_17_tm				int		DEFAULT 0 ,							/*C��17��г���������ֵ����ʱ��*/
		xb_ic_18_tm				int		DEFAULT 0 ,							/*C��18��г���������ֵ����ʱ��*/
		xb_ic_19_tm				int		DEFAULT 0 ,							/*C��19��г���������ֵ����ʱ��*/
		xb_ic_20_tm				int		DEFAULT 0 ,							/*C��20��г���������ֵ����ʱ��*/
		xb_ic_21_tm				int		DEFAULT 0 ,							/*C��21��г���������ֵ����ʱ��*/
		xb_ic_tm					int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/

)
grant select on  ZMonXbI2008 to public
create unique clustered index ZMonXbI2008index1
	on ZMonXbI2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����г����ѹ���ݱ�(ZMonXbU2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbU2008')
begin
create table ZMonXbU2008
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0,	/*A��2��г����ѹ���������ֵ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ���������ֵ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ���������ֵ*/
		xb_va_05		    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ���������ֵ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ���������ֵ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ���������ֵ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ���������ֵ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ���������ֵ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ���������ֵ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ���������ֵ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ���������ֵ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ���������ֵ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ���������ֵ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ���������ֵ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ���������ֵ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ���������ֵ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ���������ֵ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ���������ֵ*/
		xb_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ���������ֵ*/
		xb_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ���������ֵ*/
		xb_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
				
		xb_va_02_tm			int		DEFAULT 0 ,							/*A��2��г����ѹ���������ֵ����ʱ��*/
		xb_va_03_tm			int		DEFAULT 0 ,							/*A��3��г����ѹ���������ֵ����ʱ��*/
		xb_va_04_tm			int		DEFAULT 0 ,							/*A��4��г����ѹ���������ֵ����ʱ��*/
		xb_va_05_tm			int		DEFAULT 0 ,							/*A��5��г����ѹ���������ֵ����ʱ��*/
		xb_va_06_tm			int		DEFAULT 0 ,							/*A��6��г����ѹ���������ֵ����ʱ��*/
		xb_va_07_tm			int		DEFAULT 0 ,							/*A��7��г����ѹ���������ֵ����ʱ��*/
		xb_va_08_tm			int		DEFAULT 0 ,							/*A��8��г����ѹ���������ֵ����ʱ��*/
		xb_va_09_tm			int		DEFAULT 0 ,							/*A��9��г����ѹ���������ֵ����ʱ��*/
		xb_va_10_tm			int		DEFAULT 0 ,							/*A��10��г����ѹ���������ֵ����ʱ��*/
		xb_va_11_tm			int		DEFAULT 0 ,							/*A��11��г����ѹ���������ֵ����ʱ��*/
		xb_va_12_tm			int		DEFAULT 0 ,							/*A��12��г����ѹ���������ֵ����ʱ��*/
		xb_va_13_tm			int		DEFAULT 0 ,							/*A��13��г����ѹ���������ֵ����ʱ��*/
		xb_va_14_tm			int		DEFAULT 0 ,							/*A��14��г����ѹ���������ֵ����ʱ��*/
		xb_va_15_tm			int		DEFAULT 0 ,							/*A��15��г����ѹ���������ֵ����ʱ��*/
		xb_va_16_tm			int		DEFAULT 0 ,							/*A��16��г����ѹ���������ֵ����ʱ��*/
		xb_va_17_tm			int		DEFAULT 0 ,							/*A��17��г����ѹ���������ֵ����ʱ��*/
		xb_va_18_tm			int		DEFAULT 0 ,							/*A��18��г����ѹ���������ֵ����ʱ��*/
		xb_va_19_tm			int		DEFAULT 0 ,							/*A��19��г����ѹ���������ֵ����ʱ��*/
		xb_va_20_tm			int		DEFAULT 0 ,							/*A��20��г����ѹ���������ֵ����ʱ��*/
		xb_va_21tm			int		DEFAULT 0 ,							/*A��21��г����ѹ���������ֵ����ʱ��*/
		xb_va_tm				int		DEFAULT 0 ,					 		/*A���ܻ���������ֵ����ʱ��*/
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г����ѹ���������ֵ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ���������ֵ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ���������ֵ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ���������ֵ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ���������ֵ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ���������ֵ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ���������ֵ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ���������ֵ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ���������ֵ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ���������ֵ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ���������ֵ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ���������ֵ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ���������ֵ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ���������ֵ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ���������ֵ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ���������ֵ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ���������ֵ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ���������ֵ*/
		xb_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ���������ֵ*/
		xb_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ���������ֵ*/
		xb_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_vb_02_tm			int		DEFAULT 0 ,							/*B��2��г����ѹ���������ֵ����ʱ��*/
		xb_vb_03_tm			int		DEFAULT 0 ,							/*B��3��г����ѹ���������ֵ����ʱ��*/
		xb_vb_04_tm			int		DEFAULT 0 ,							/*B��4��г����ѹ���������ֵ����ʱ��*/
		xb_vb_05_tm			int		DEFAULT 0 ,							/*B��5��г����ѹ���������ֵ����ʱ��*/
		xb_vb_06_tm			int		DEFAULT 0 ,							/*B��6��г����ѹ���������ֵ����ʱ��*/
		xb_vb_07_tm			int		DEFAULT 0 ,							/*B��7��г����ѹ���������ֵ����ʱ��*/
		xb_vb_08_tm			int		DEFAULT 0 ,							/*B��8��г����ѹ���������ֵ����ʱ��*/
		xb_vb_09_tm			int		DEFAULT 0 ,							/*B��9��г����ѹ���������ֵ����ʱ��*/
		xb_vb_10_tm			int		DEFAULT 0 ,							/*B��10��г����ѹ���������ֵ����ʱ��*/
		xb_vb_11_tm			int		DEFAULT 0 ,							/*B��11��г����ѹ���������ֵ����ʱ��*/
		xb_vb_12_tm			int		DEFAULT 0 ,							/*B��12��г����ѹ���������ֵ����ʱ��*/
		xb_vb_13_tm			int		DEFAULT 0 ,							/*B��13��г����ѹ���������ֵ����ʱ��*/
		xb_vb_14_tm			int		DEFAULT 0 ,							/*B��14��г����ѹ���������ֵ����ʱ��*/
		xb_vb_15_tm			int		DEFAULT 0 ,							/*B��15��г����ѹ���������ֵ����ʱ��*/
		xb_vb_16_tm			int		DEFAULT 0 ,							/*B��16��г����ѹ���������ֵ����ʱ��*/
		xb_vb_17_tm			int		DEFAULT 0 ,							/*B��17��г����ѹ���������ֵ����ʱ��*/
		xb_vb_18_tm			int		DEFAULT 0 ,							/*B��18��г����ѹ���������ֵ����ʱ��*/
		xb_vb_19_tm			int		DEFAULT 0 ,							/*B��19��г����ѹ���������ֵ����ʱ��*/
		xb_vb_20_tm			int		DEFAULT 0 ,							/*B��20��г����ѹ���������ֵ����ʱ��*/
		xb_vb_21_tm			int		DEFAULT 0 ,							/*B��21��г����ѹ���������ֵ����ʱ��*/
		xb_vb_tm				int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ���������ֵ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ���������ֵ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ���������ֵ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ���������ֵ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ���������ֵ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ���������ֵ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ���������ֵ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ���������ֵ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ���������ֵ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ���������ֵ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ���������ֵ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ���������ֵ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ���������ֵ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ���������ֵ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ���������ֵ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ���������ֵ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ���������ֵ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ���������ֵ*/
		xb_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ���������ֵ*/
		xb_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ���������ֵ*/
		xb_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_vc_02_tm			int		DEFAULT 0 ,							/*C��2��г����ѹ���������ֵ����ʱ��*/
		xb_vc_03_tm			int		DEFAULT 0 ,							/*C��3��г����ѹ���������ֵ����ʱ��*/
		xb_vc_04_tm			int		DEFAULT 0 ,							/*C��4��г����ѹ���������ֵ����ʱ��*/
		xb_vc_05_tm			int		DEFAULT 0 ,							/*C��5��г����ѹ���������ֵ����ʱ��*/
		xb_vc_06_tm			int		DEFAULT 0 ,							/*C��6��г����ѹ���������ֵ����ʱ��*/
		xb_vc_07_tm			int		DEFAULT 0 ,							/*C��7��г����ѹ���������ֵ����ʱ��*/
		xb_vc_08_tm			int		DEFAULT 0 ,							/*C��8��г����ѹ���������ֵ����ʱ��*/
		xb_vc_09_tm			int		DEFAULT 0 ,							/*C��9��г����ѹ���������ֵ����ʱ��*/
		xb_vc_10_tm			int		DEFAULT 0 ,							/*C��10��г����ѹ���������ֵ����ʱ��*/
		xb_vc_11_tm			int		DEFAULT 0 ,							/*C��11��г����ѹ���������ֵ����ʱ��*/
		xb_vc_12_tm			int		DEFAULT 0 ,							/*C��12��г����ѹ���������ֵ����ʱ��*/
		xb_vc_13_tm			int		DEFAULT 0 ,							/*C��13��г����ѹ���������ֵ����ʱ��*/
		xb_vc_14_tm			int		DEFAULT 0 ,							/*C��14��г����ѹ���������ֵ����ʱ��*/
		xb_vc_15_tm			int		DEFAULT 0 ,							/*C��15��г����ѹ���������ֵ����ʱ��*/
		xb_vc_16_tm			int		DEFAULT 0 ,							/*C��16��г����ѹ���������ֵ����ʱ��*/
		xb_vc_17_tm			int		DEFAULT 0 ,							/*C��17��г����ѹ���������ֵ����ʱ��*/
		xb_vc_18_tm			int		DEFAULT 0 ,							/*C��18��г����ѹ���������ֵ����ʱ��*/
		xb_vc_19_tm			int		DEFAULT 0 ,							/*C��19��г����ѹ���������ֵ����ʱ��*/
		xb_vc_20_tm			int		DEFAULT 0 ,							/*C��20��г����ѹ���������ֵ����ʱ��*/
		xb_vc_21_tm			int		DEFAULT 0 ,							/*C��21��г����ѹ���������ֵ����ʱ��*/
		xb_vc_tm				int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/
)
grant select on  ZMonXbU2008 to public
create unique clustered index ZMonXbU2008index1
	on ZMonXbU2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ר�����г��Խ�����ݱ�(ZMonXbLmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonXbLmt2008')
begin
create table ZMonXbLmt2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		xblmt_va			int		DEFAULT 0 ,			/*A���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_02		int		DEFAULT 0 ,			/*A��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_03		int		DEFAULT 0 ,			/*A��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_04		int		DEFAULT 0 ,			/*A��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_05		int		DEFAULT 0 ,			/*A��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_06		int		DEFAULT 0 ,			/*A��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_07		int		DEFAULT 0 ,			/*A��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_08		int		DEFAULT 0 ,			/*A��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_09		int		DEFAULT 0 ,			/*A��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_10		int		DEFAULT 0 ,			/*A��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_11		int		DEFAULT 0 ,			/*A��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_12		int		DEFAULT 0 ,			/*A��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_13		int		DEFAULT 0 ,			/*A��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_14		int		DEFAULT 0 ,			/*A��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_15		int		DEFAULT 0 ,			/*A��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_16		int		DEFAULT 0 ,			/*A��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_17		int		DEFAULT 0 ,			/*A��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_18		int		DEFAULT 0 ,			/*A��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_19		int		DEFAULT 0 ,			/*A��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_20		int		DEFAULT 0 ,			/*A��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_21		int		DEFAULT 0 ,			/*A��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ia			int		DEFAULT 0 ,			/*A���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ia_02		int		DEFAULT 0 ,			/*A��2��г������Խ���ۼ�ʱ��*/
		xblmt_ia_03		int		DEFAULT 0 ,			/*A��3��г������Խ���ۼ�ʱ��*/
		xblmt_ia_04		int		DEFAULT 0 ,			/*A��4��г������Խ���ۼ�ʱ��*/
		xblmt_ia_05		int		DEFAULT 0 ,			/*A��5��г������Խ���ۼ�ʱ��*/
		xblmt_ia_06		int		DEFAULT 0 ,			/*A��6��г������Խ���ۼ�ʱ��*/
		xblmt_ia_07		int		DEFAULT 0 ,			/*A��7��г������Խ���ۼ�ʱ��*/
		xblmt_ia_08		int		DEFAULT 0 ,			/*A��8��г������Խ���ۼ�ʱ��*/
		xblmt_ia_09		int		DEFAULT 0 ,			/*A��9��г������Խ���ۼ�ʱ��*/
		xblmt_ia_10		int		DEFAULT 0 ,			/*A��10��г������Խ���ۼ�ʱ��*/
		xblmt_ia_11		int		DEFAULT 0 ,			/*A��11��г������Խ���ۼ�ʱ��*/
		xblmt_ia_12		int		DEFAULT 0 ,			/*A��12��г������Խ���ۼ�ʱ��*/
		xblmt_ia_13		int		DEFAULT 0 ,			/*A��13��г������Խ���ۼ�ʱ��*/
		xblmt_ia_14		int		DEFAULT 0 ,			/*A��14��г������Խ���ۼ�ʱ��*/
		xblmt_ia_15		int		DEFAULT 0 ,			/*A��15��г������Խ���ۼ�ʱ��*/
		xblmt_ia_16		int		DEFAULT 0 ,			/*A��16��г������Խ���ۼ�ʱ��*/
		xblmt_ia_17		int		DEFAULT 0 ,			/*A��17��г������Խ���ۼ�ʱ��*/
		xblmt_ia_18		int		DEFAULT 0 ,			/*A��18��г������Խ���ۼ�ʱ��*/
		xblmt_ia_19		int		DEFAULT 0 ,			/*A��19��г������Խ���ۼ�ʱ��*/
		xblmt_ia_20		int		DEFAULT 0 ,			/*A��20��г������Խ���ۼ�ʱ��*/
		xblmt_ia_21		int		DEFAULT 0 ,			/*A��21��г������Խ���ۼ�ʱ��*/
		xblmt_vb			int		DEFAULT 0 ,			/*B���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_02		int		DEFAULT 0 ,			/*B��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_03		int		DEFAULT 0 ,			/*B��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_04		int		DEFAULT 0 ,			/*B��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_05		int		DEFAULT 0 ,			/*B��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_06		int		DEFAULT 0 ,			/*B��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_07		int		DEFAULT 0 ,			/*B��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_08		int		DEFAULT 0 ,			/*B��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_09		int		DEFAULT 0 ,			/*B��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_10		int		DEFAULT 0 ,			/*B��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_11		int		DEFAULT 0 ,			/*B��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_12		int		DEFAULT 0 ,			/*B��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_13		int		DEFAULT 0 ,			/*B��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_14		int		DEFAULT 0 ,			/*B��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_15		int		DEFAULT 0 ,			/*B��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_16		int		DEFAULT 0 ,			/*B��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_17		int		DEFAULT 0 ,			/*B��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_18		int		DEFAULT 0 ,			/*B��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_19		int		DEFAULT 0 ,			/*B��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_20		int		DEFAULT 0 ,			/*B��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_21		int		DEFAULT 0 ,			/*B��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ib			int		DEFAULT 0 ,			/*B���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ib_02		int		DEFAULT 0 ,			/*B��2��г������Խ���ۼ�ʱ��*/
		xblmt_ib_03		int		DEFAULT 0 ,			/*B��3��г������Խ���ۼ�ʱ��*/
		xblmt_ib_04		int		DEFAULT 0 ,			/*B��4��г������Խ���ۼ�ʱ��*/
		xblmt_ib_05		int		DEFAULT 0 ,			/*B��5��г������Խ���ۼ�ʱ��*/
		xblmt_ib_06		int		DEFAULT 0 ,			/*B��6��г������Խ���ۼ�ʱ��*/
		xblmt_ib_07		int		DEFAULT 0 ,			/*B��7��г������Խ���ۼ�ʱ��*/
		xblmt_ib_08		int		DEFAULT 0 ,			/*B��8��г������Խ���ۼ�ʱ��*/
		xblmt_ib_09		int		DEFAULT 0 ,			/*B��9��г������Խ���ۼ�ʱ��*/
		xblmt_ib_10		int		DEFAULT 0 ,			/*B��10��г������Խ���ۼ�ʱ��*/
		xblmt_ib_11		int		DEFAULT 0 ,			/*B��11��г������Խ���ۼ�ʱ��*/
		xblmt_ib_12		int		DEFAULT 0 ,			/*B��12��г������Խ���ۼ�ʱ��*/
		xblmt_ib_13		int		DEFAULT 0 ,			/*B��13��г������Խ���ۼ�ʱ��*/
		xblmt_ib_14		int		DEFAULT 0 ,			/*B��14��г������Խ���ۼ�ʱ��*/
		xblmt_ib_15		int		DEFAULT 0 ,			/*B��15��г������Խ���ۼ�ʱ��*/
		xblmt_ib_16		int		DEFAULT 0 ,			/*B��16��г������Խ���ۼ�ʱ��*/
		xblmt_ib_17		int		DEFAULT 0 ,			/*B��17��г������Խ���ۼ�ʱ��*/
		xblmt_ib_18		int		DEFAULT 0 ,			/*B��18��г������Խ���ۼ�ʱ��*/
		xblmt_ib_19		int		DEFAULT 0 ,			/*B��19��г������Խ���ۼ�ʱ��*/
		xblmt_ib_20		int		DEFAULT 0 ,			/*B��20��г������Խ���ۼ�ʱ��*/
		xblmt_ib_21		int		DEFAULT 0 ,			/*B��21��г������Խ���ۼ�ʱ��*/
		xblmt_vc			int		DEFAULT 0 ,			/*C���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_02		int		DEFAULT 0 ,			/*C��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_03		int		DEFAULT 0 ,			/*C��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_04		int		DEFAULT 0 ,			/*C��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_05		int		DEFAULT 0 ,			/*C��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_06		int		DEFAULT 0 ,			/*C��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_07		int		DEFAULT 0 ,			/*C��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_08		int		DEFAULT 0 ,			/*C��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_09		int		DEFAULT 0 ,			/*C��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_10		int		DEFAULT 0 ,			/*C��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_11		int		DEFAULT 0 ,			/*C��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_12		int		DEFAULT 0 ,			/*C��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_13		int		DEFAULT 0 ,			/*C��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_14		int		DEFAULT 0 ,			/*C��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_15		int		DEFAULT 0 ,			/*C��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_16		int		DEFAULT 0 ,			/*C��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_17		int		DEFAULT 0 ,			/*C��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_18		int		DEFAULT 0 ,			/*C��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_19		int		DEFAULT 0 ,			/*C��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_20		int		DEFAULT 0 ,			/*C��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_21		int		DEFAULT 0 ,			/*C��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ic			int		DEFAULT 0 ,			/*C���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ic_02		int		DEFAULT 0 ,			/*C��2��г������Խ���ۼ�ʱ��*/
		xblmt_ic_03		int		DEFAULT 0 ,			/*C��3��г������Խ���ۼ�ʱ��*/
		xblmt_ic_04		int		DEFAULT 0 ,			/*C��4��г������Խ���ۼ�ʱ��*/
		xblmt_ic_05		int		DEFAULT 0 ,			/*C��5��г������Խ���ۼ�ʱ��*/
		xblmt_ic_06		int		DEFAULT 0 ,			/*C��6��г������Խ���ۼ�ʱ��*/
		xblmt_ic_07		int		DEFAULT 0 ,			/*C��7��г������Խ���ۼ�ʱ��*/
		xblmt_ic_08		int		DEFAULT 0 ,			/*C��8��г������Խ���ۼ�ʱ��*/
		xblmt_ic_09		int		DEFAULT 0 ,			/*C��9��г������Խ���ۼ�ʱ��*/
		xblmt_ic_10		int		DEFAULT 0 ,			/*C��10��г������Խ���ۼ�ʱ��*/
		xblmt_ic_11		int		DEFAULT 0 ,			/*C��11��г������Խ���ۼ�ʱ��*/
		xblmt_ic_12		int		DEFAULT 0 ,			/*C��12��г������Խ���ۼ�ʱ��*/
		xblmt_ic_13		int		DEFAULT 0 ,			/*C��13��г������Խ���ۼ�ʱ��*/
		xblmt_ic_14		int		DEFAULT 0 ,			/*C��14��г������Խ���ۼ�ʱ��*/
		xblmt_ic_15		int		DEFAULT 0 ,			/*C��15��г������Խ���ۼ�ʱ��*/
		xblmt_ic_16		int		DEFAULT 0 ,			/*C��16��г������Խ���ۼ�ʱ��*/
		xblmt_ic_17		int		DEFAULT 0 ,			/*C��17��г������Խ���ۼ�ʱ��*/
		xblmt_ic_18		int		DEFAULT 0 ,			/*C��18��г������Խ���ۼ�ʱ��*/
		xblmt_ic_19		int		DEFAULT 0 ,			/*C��19��г������Խ���ۼ�ʱ��*/
		xblmt_ic_20		int		DEFAULT 0 ,			/*C��20��г������Խ���ۼ�ʱ��*/
		xblmt_ic_21		int		DEFAULT 0 			/*C��21��г������Խ���ۼ�ʱ��*/
)
grant select on  ZMonXbLmt2008 to public
create unique clustered index ZMonXbLmt2008index1
	on ZMonXbLmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--̫��г�� 20151215
--   '-------Create table ���վг�����ݱ�(BMinXb200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinXb200808')
begin
create table BMinXb200808
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г����ѹ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ*/
		xb_va_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ*/
		xb_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ*/
		xb_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ*/
				
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г����ѹ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ*/
		xb_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ*/
		xb_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ*/
		xb_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ*/
		xb_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ*/
	
		
		xb_ia_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г������*/
		xb_ia_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г������*/
		xb_ia_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г������*/
		xb_ia_05			  decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г������*/
		xb_ia_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г������*/
		xb_ia_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г������*/
		xb_ia_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г������*/
		xb_ia_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г������*/
		xb_ia_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г������*/
		xb_ia_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г������*/
		xb_ia_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г������*/
		xb_ia_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г������*/
		xb_ia_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г������*/
		xb_ia_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г������*/
		xb_ia_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г������*/
		xb_ia_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г������*/
		xb_ia_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г������*/
		xb_ia_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г������*/
		xb_ia_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г������*/
		xb_ia_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г������*/
		
		
		xb_ib_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г������*/
		xb_ib_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г������*/
		xb_ib_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г������*/
		xb_ib_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г������*/
		xb_ib_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г������*/
		xb_ib_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г������*/
		xb_ib_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г������*/
		xb_ib_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г������*/
		xb_ib_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г������*/
		xb_ib_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г������*/
		xb_ib_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г������*/
		xb_ib_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г������*/
		xb_ib_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г������*/
		xb_ib_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г������*/
		xb_ib_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г������*/
		xb_ib_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г������*/
		xb_ib_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г������*/
		xb_ib_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г������*/
		xb_ib_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г������*/
		xb_ib_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г������*/
				
		xb_ic_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г������*/
		xb_ic_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г������*/
		xb_ic_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г������*/
		xb_ic_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г������*/
		xb_ic_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г������*/
		xb_ic_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г������*/
		xb_ic_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г������*/
		xb_ic_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г������*/
		xb_ic_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г������*/
		xb_ic_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г������*/
		xb_ic_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г������*/
		xb_ic_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г������*/
		xb_ic_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г������*/
		xb_ic_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г������*/
		xb_ic_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г������*/
		xb_ic_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г������*/
		xb_ic_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г������*/
		xb_ic_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г������*/
		xb_ic_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г������*/
		xb_ic_21				decimal(14, 3) 	DEFAULT 0.0 	/*C��21��г������*/
		
)
grant select on  BMinXb200808 to public
create unique clustered index BMinXb200808index1
	on BMinXb200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���
--   '-------Create table ���վг�����������ݱ�(BMinXRate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinXRate200808')
begin
create table BMinXRate200808
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xbr_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A����г����ѹ������*/
		xbr_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B����г����ѹ������*/
		xbr_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C����г����ѹ������*/
		
		xbr_va_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г����ѹ������*/
		xbr_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ������*/
		xbr_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ������*/
		xbr_va_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ������*/
		xbr_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ������*/
		xbr_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ������*/
		xbr_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ������*/
		xbr_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ������*/
		xbr_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ������*/
		xbr_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ������*/
		xbr_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ������*/
		xbr_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ������*/
		xbr_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ������*/
		xbr_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ������*/
		xbr_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ������*/
		xbr_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ������*/
		xbr_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ������*/
		xbr_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ������*/
		xbr_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ������*/
		xbr_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ������*/
		
		xbr_vb_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г����ѹ������*/
		xbr_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ������*/
		xbr_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ������*/
		xbr_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ������*/
		xbr_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ������*/
		xbr_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ������*/
		xbr_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ������*/
		xbr_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ������*/
		xbr_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ������*/
		xbr_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ������*/
		xbr_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ������*/
		xbr_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ������*/
		xbr_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ������*/
		xbr_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ������*/
		xbr_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ������*/
		xbr_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ������*/
		xbr_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ������*/
		xbr_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ������*/
		xbr_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ������*/
		xbr_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ������*/
	
		xbr_vc_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г����ѹ������*/
		xbr_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ������*/
		xbr_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ������*/
		xbr_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ������*/
		xbr_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ������*/
		xbr_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ������*/
		xbr_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ������*/
		xbr_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ������*/
		xbr_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ������*/
		xbr_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ������*/
		xbr_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ������*/
		xbr_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ������*/
		xbr_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ������*/
		xbr_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ������*/
		xbr_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ������*/
		xbr_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ������*/
		xbr_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ������*/
		xbr_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ������*/
		xbr_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ������*/
		xbr_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ������*/
			
		xbr_ia_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г������������*/
		xbr_ia_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г������������*/
		xbr_ia_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г������������*/
		xbr_ia_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г������������*/
		xbr_ia_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г������������*/
		xbr_ia_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г������������*/
		xbr_ia_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г������������*/
		xbr_ia_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г������������*/
		xbr_ia_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г������������*/
		xbr_ia_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г������������*/
		xbr_ia_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г������������*/
		xbr_ia_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г������������*/
		xbr_ia_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г������������*/
		xbr_ia_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г������������*/
		xbr_ia_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г������������*/
		xbr_ia_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г������������*/
		xbr_ia_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г������������*/
		xbr_ia_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г������������*/
		xbr_ia_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г������������*/
		xbr_ia_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г������������*/
				
		
		xbr_ib_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��2��г������������*/
		xbr_ib_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г������������*/
		xbr_ib_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г������������*/
		xbr_ib_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г������������*/
		xbr_ib_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г������������*/
		xbr_ib_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г������������*/
		xbr_ib_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г������������*/
		xbr_ib_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г������������*/
		xbr_ib_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г������������*/
		xbr_ib_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г������������*/
		xbr_ib_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г������������*/
		xbr_ib_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г������������*/
		xbr_ib_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г������������*/
		xbr_ib_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г������������*/
		xbr_ib_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г������������*/
		xbr_ib_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г������������*/
		xbr_ib_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г������������*/
		xbr_ib_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г������������*/
		xbr_ib_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г������������*/
		xbr_ib_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г������������*/
		
		
		xbr_ic_02				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г������������*/
		xbr_ic_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г������������*/
		xbr_ic_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г������������*/
		xbr_ic_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г������������*/
		xbr_ic_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г������������*/
		xbr_ic_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г������������*/
		xbr_ic_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г������������*/
		xbr_ic_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г������������*/
		xbr_ic_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г������������*/
		xbr_ic_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г������������*/
		xbr_ic_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г������������*/
		xbr_ic_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г������������*/
		xbr_ic_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г������������*/
		xbr_ic_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г������������*/
		xbr_ic_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г������������*/
		xbr_ic_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г������������*/
		xbr_ic_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г������������*/
		xbr_ic_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г������������*/
		xbr_ic_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г������������*/
		xbr_ic_21				decimal(14, 3) 	DEFAULT 0.0 	/*C��21��г������������*/
)
grant select on  BMinXRate200808 to public
create unique clustered index BMinXRate200808index1
	on BMinXRate200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ������չ���ݱ�(BMinExt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinExt200808')
begin
create table BMinExt200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	freq		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����Ƶ��*/
	
	vab			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUab*/
	vbc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUbc*/
	vca			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ߵ�ѹUca*/
		
	s				decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�����ڹ���*/
	sa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA�����ڹ���*/
	sb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB�����ڹ���*/
	sc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC�����ڹ���*/
			
	cs1			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��������*/
	cs2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�ͺ�������*/
	
	jva			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����A���ѹ*/
	jvb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����B���ѹ*/
	jvc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����C���ѹ*/
	jia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����A�����*/
	jib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����B�����*/
	jic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ����C�����*/	
	jp			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ�ܻ����й�����*/
	jpa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA������й�����*/
	jpb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB������й�����*/
	jpc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC������й�����*/
	
	
	xva			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��A���ѹռ����*/
	xvb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��B���ѹռ����*/
	xvc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��C���ѹռ����*/
	xia			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��A�����ռ����*/
	xib			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��B�����ռ����*/
	xic			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г��C�����ռ����*/	
	xp			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰ��г���й�����*/
	xpa			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰA��г���й�����*/
	xpb			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰB��г���й�����*/
	xpc			decimal(14, 3) 	DEFAULT 0.0 ,	/*	��ǰC��г���й�����*/
	
	xvar		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��A���ѹ�ܻ�����*/
	xvbr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��B���ѹ�ܻ�����*/
	xvcr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��C���ѹ�ܻ�����*/
	xiar		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��A������ܻ�����*/
	xibr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��B������ܻ�����*/
	xicr		decimal(14, 3) 	DEFAULT 0.0 ,	/*	г��C������ܻ�����*/
	
	q1			decimal(14, 3) 	DEFAULT 0.0 ,	/*	һ�����޹�����*/
	q2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
	q3			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
	q4			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������޹�����*/
	
	i2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������*/
)
grant select on  BMinExt200808 to public
create unique clustered index BMinExt200808index1
	on BMinExt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ���ӵ�ѹ�����������ݱ�(BMinUIWeight200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinUIWeight200808')
begin
create table BMinUIWeight200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	zxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������ѹ����*/
	fxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�ฺ���ѹ����*/
	lxva		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������ѹ����*/
	zxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������ѹ����*/
	fxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�ฺ���ѹ����*/
	lxvb		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������ѹ����*/
	zxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������ѹ����*/
	fxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�ฺ���ѹ����*/
	lxvc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������ѹ����*/
	
	zxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������������*/
	fxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�ฺ���������*/
	lxia		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A�������������*/
	zxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������������*/
	fxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�ฺ���������*/
	lxib		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B�������������*/
	zxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������������*/
	fxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�ฺ���������*/
	lxic		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C�������������*/
)
grant select on  BMinUIWeight200808 to public
create unique clustered index BMinUIWeight200808index1
	on BMinUIWeight200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ���վ���ӵ�ѹ������ƽ������ݱ�(BMinUIImbalance200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinUIImbalance200808')
begin
create table BMinUIImbalance200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	v				decimal(14, 3) 	DEFAULT 0.0 ,	/*	�����ѹ��ƽ���*/
	v0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���������ѹ��ƽ���*/	
	v2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���ฺ���ѹ��ƽ���*/
	
	i				decimal(14, 3) 	DEFAULT 0.0 ,	/*	���������ƽ���*/
	i0			decimal(14, 3) 	DEFAULT 0.0 ,	/*	�������������ƽ���*/	
	i2			decimal(14, 3) 	DEFAULT 0.0 ,	/*	���ฺ�������ƽ���*/

	va			decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ѹ*/
	vb			decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ѹ*/
	vc			decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ѹ*/
	ia			decimal(14, 3) 	DEFAULT 0.0 ,	/*A�����*/
	ib			decimal(14, 3) 	DEFAULT 0.0 ,	/*B�����*/
	ic			decimal(14, 3) 	DEFAULT 0.0 ,	/*C�����*/

	vab			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUab*/
	vbc			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUbc*/
	vca			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ߵ�ѹUca*/


	v_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ��ƽ�����ֵ*/
	v_max_tm	int							DEFAULT 0 ,		  /*��ѹ��ƽ�����ֵ����ʱ��*/
	i_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*������ƽ�����ֵ*/
	i_max_tm	int							DEFAULT 0 ,		  /*������ƽ�����ֵ����ʱ��*/		
			
	v0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ�����ֵ*/
	v0_max_tm	int							DEFAULT 0 ,			/*�����ѹ��ƽ�����ֵ����ʱ��*/
	i0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ�����ֵ*/
	i0_max_tm	int							DEFAULT 0 ,			/*���������ƽ�����ֵ����ʱ��*/		
	
	v2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ�����ֵ*/
	v2_max_tm	int							DEFAULT 0 ,			/*�����ѹ��ƽ�����ֵ����ʱ��*/
	i2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ�����ֵ*/
	i2_max_tm	int							DEFAULT 0 ,			/*���������ƽ�����ֵ����ʱ��*/
)
grant select on  BMinUIImbalance200808 to public
create unique clustered index BMinUIImbalance200808index1
	on BMinUIImbalance200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	


--   '-------Create table ���վ���ӵ�ѹƫ��ϸ������ݱ�(BMinVPC200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinVPC200808')
begin
create table BMinVPC200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	vapc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹƫ��*/
	vbpc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹƫ��*/
	vcpc		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹƫ��*/
	
	vahg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹƫ��ϸ���*/
	vbhg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹƫ��ϸ���*/
	vchg		decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹƫ��ϸ���*/
)
grant select on  BMinVPC200808 to public
create unique clustered index BMinVPC200808index1
	on BMinVPC200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	




--   '-------Create table ���վ�ߴ�г�����ݱ�(BMinHXb200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinHXb200808')
begin
create table BMinHXb200808
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_va_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г����ѹ*/
		xb_va_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г����ѹ*/
		xb_va_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г����ѹ*/
		xb_va_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г����ѹ*/
		xb_va_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г����ѹ*/
		xb_va_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г����ѹ*/
		xb_va_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г����ѹ*/
		xb_va_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г����ѹ*/
		xb_va_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г����ѹ*/
		xb_va_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г����ѹ*/
		xb_va_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г����ѹ*/
		xb_va_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г����ѹ*/
		xb_va_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г����ѹ*/
		xb_va_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г����ѹ*/
		xb_va_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г����ѹ*/
		xb_va_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г����ѹ*/
		xb_va_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г����ѹ*/
		xb_va_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г����ѹ*/
		xb_va_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г����ѹ*/
		xb_va_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г����ѹ*/
		xb_va_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г����ѹ*/
		xb_va_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г����ѹ*/
		xb_va_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г����ѹ*/
		xb_va_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г����ѹ*/
		xb_va_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г����ѹ*/
		xb_va_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г����ѹ*/
		xb_va_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г����ѹ*/
		xb_va_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г����ѹ*/
		xb_va_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г����ѹ*/
				
		
		xb_vb_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г����ѹ*/
		xb_vb_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г����ѹ*/
		xb_vb_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г����ѹ*/
		xb_vb_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г����ѹ*/
		xb_vb_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г����ѹ*/
		xb_vb_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г����ѹ*/
		xb_vb_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г����ѹ*/
		xb_vb_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г����ѹ*/
		xb_vb_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г����ѹ*/
		xb_vb_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г����ѹ*/
		xb_vb_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г����ѹ*/
		xb_vb_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г����ѹ*/
		xb_vb_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г����ѹ*/
		xb_vb_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г����ѹ*/
		xb_vb_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г����ѹ*/
		xb_vb_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г����ѹ*/
		xb_vb_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г����ѹ*/
		xb_vb_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г����ѹ*/
		xb_vb_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г����ѹ*/
		xb_vb_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г����ѹ*/
		xb_vb_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г����ѹ*/
		xb_vb_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г����ѹ*/
		xb_vb_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г����ѹ*/
		xb_vb_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г����ѹ*/
		xb_vb_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г����ѹ*/
		xb_vb_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г����ѹ*/
		xb_vb_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г����ѹ*/
		xb_vb_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г����ѹ*/
		xb_vb_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г����ѹ*/
		
		
		xb_vc_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г����ѹ*/
		xb_vc_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г����ѹ*/
		xb_vc_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г����ѹ*/
		xb_vc_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г����ѹ*/
		xb_vc_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г����ѹ*/
		xb_vc_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г����ѹ*/
		xb_vc_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г����ѹ*/
		xb_vc_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г����ѹ*/
		xb_vc_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г����ѹ*/
		xb_vc_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г����ѹ*/
		xb_vc_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г����ѹ*/
		xb_vc_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г����ѹ*/
		xb_vc_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г����ѹ*/
		xb_vc_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г����ѹ*/
		xb_vc_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г����ѹ*/
		xb_vc_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г����ѹ*/
		xb_vc_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г����ѹ*/
		xb_vc_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г����ѹ*/
		xb_vc_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г����ѹ*/
		xb_vc_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г����ѹ*/
		xb_vc_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г����ѹ*/
		xb_vc_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г����ѹ*/
		xb_vc_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г����ѹ*/
		xb_vc_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г����ѹ*/
		xb_vc_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г����ѹ*/
		xb_vc_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г����ѹ*/
		xb_vc_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г����ѹ*/
		xb_vc_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г����ѹ*/
		xb_vc_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г����ѹ*/
	
		
		xb_ia_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г������*/
		xb_ia_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г������*/
		xb_ia_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г������*/
		xb_ia_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г������*/
		xb_ia_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г������*/
		xb_ia_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г������*/
		xb_ia_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г������*/
		xb_ia_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г������*/
		xb_ia_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г������*/
		xb_ia_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г������*/
		xb_ia_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г������*/
		xb_ia_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г������*/
		xb_ia_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г������*/
		xb_ia_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г������*/
		xb_ia_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г������*/
		xb_ia_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г������*/
		xb_ia_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г������*/
		xb_ia_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г������*/
		xb_ia_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г������*/
		xb_ia_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г������*/
		xb_ia_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г������*/
		xb_ia_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г������*/
		xb_ia_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г������*/
		xb_ia_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г������*/
		xb_ia_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г������*/
		xb_ia_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г������*/
		xb_ia_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г������*/
		xb_ia_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г������*/
		xb_ia_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г������*/
				
		
		xb_ib_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г������*/
		xb_ib_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г������*/
		xb_ib_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г������*/
		xb_ib_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г������*/
		xb_ib_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г������*/
		xb_ib_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г������*/
		xb_ib_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г������*/
		xb_ib_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г������*/
		xb_ib_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г������*/
		xb_ib_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г������*/
		xb_ib_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г������*/
		xb_ib_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г������*/
		xb_ib_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г������*/
		xb_ib_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г������*/
		xb_ib_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г������*/
		xb_ib_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г������*/
		xb_ib_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г������*/
		xb_ib_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г������*/
		xb_ib_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г������*/
		xb_ib_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г������*/
		xb_ib_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г������*/
		xb_ib_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г������*/
		xb_ib_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г������*/
		xb_ib_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г������*/
		xb_ib_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г������*/
		xb_ib_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г������*/
		xb_ib_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г������*/
		xb_ib_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г������*/
		xb_ib_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г������*/
		
		
		xb_ic_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г������*/
		xb_ic_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г������*/
		xb_ic_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г������*/
		xb_ic_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г������*/
		xb_ic_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г������*/
		xb_ic_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г������*/
		xb_ic_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г������*/
		xb_ic_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г������*/
		xb_ic_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г������*/
		xb_ic_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г������*/
		xb_ic_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г������*/
		xb_ic_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г������*/
		xb_ic_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г������*/
		xb_ic_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г������*/
		xb_ic_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г������*/
		xb_ic_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г������*/
		xb_ic_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г������*/
		xb_ic_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г������*/
		xb_ic_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г������*/
		xb_ic_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г������*/
		xb_ic_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г������*/
		xb_ic_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г������*/
		xb_ic_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г������*/
		xb_ic_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г������*/
		xb_ic_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г������*/
		xb_ic_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г������*/
		xb_ic_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г������*/
		xb_ic_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г������*/
		xb_ic_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г������*/
		
)
grant select on  BMinHXb200808 to public
create unique clustered index BMinHXb200808index1
	on BMinHXb200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���
--   '-------Create table ���վ�ߴ�г�����������ݱ�(BMinHXRate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinHXRate200808')
begin
create table BMinHXRate200808
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
				
		xbr_va_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г����ѹ������*/
		xbr_va_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г����ѹ������*/
		xbr_va_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г����ѹ������*/
		xbr_va_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г����ѹ������*/
		xbr_va_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г����ѹ������*/
		xbr_va_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г����ѹ������*/
		xbr_va_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г����ѹ������*/
		xbr_va_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г����ѹ������*/
		xbr_va_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г����ѹ������*/
		xbr_va_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г����ѹ������*/
		xbr_va_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г����ѹ������*/
		xbr_va_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г����ѹ������*/
		xbr_va_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г����ѹ������*/
		xbr_va_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г����ѹ������*/
		xbr_va_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г����ѹ������*/
		xbr_va_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г����ѹ������*/
		xbr_va_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г����ѹ������*/
		xbr_va_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г����ѹ������*/
		xbr_va_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г����ѹ������*/
		xbr_va_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г����ѹ������*/
		xbr_va_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г����ѹ������*/
		xbr_va_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г����ѹ������*/
		xbr_va_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г����ѹ������*/
		xbr_va_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г����ѹ������*/
		xbr_va_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г����ѹ������*/
		xbr_va_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г����ѹ������*/
		xbr_va_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г����ѹ������*/
		xbr_va_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г����ѹ������*/
		xbr_va_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г����ѹ������*/
		
		xbr_vb_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г����ѹ������*/
		xbr_vb_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г����ѹ������*/
		xbr_vb_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г����ѹ������*/
		xbr_vb_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г����ѹ������*/
		xbr_vb_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г����ѹ������*/
		xbr_vb_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г����ѹ������*/
		xbr_vb_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г����ѹ������*/
		xbr_vb_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г����ѹ������*/
		xbr_vb_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г����ѹ������*/
		xbr_vb_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г����ѹ������*/
		xbr_vb_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г����ѹ������*/
		xbr_vb_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г����ѹ������*/
		xbr_vb_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г����ѹ������*/
		xbr_vb_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г����ѹ������*/
		xbr_vb_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г����ѹ������*/
		xbr_vb_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г����ѹ������*/
		xbr_vb_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г����ѹ������*/
		xbr_vb_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г����ѹ������*/
		xbr_vb_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г����ѹ������*/
		xbr_vb_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г����ѹ������*/
		xbr_vb_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г����ѹ������*/
		xbr_vb_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г����ѹ������*/
		xbr_vb_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г����ѹ������*/
		xbr_vb_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г����ѹ������*/
		xbr_vb_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г����ѹ������*/
		xbr_vb_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г����ѹ������*/
		xbr_vb_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г����ѹ������*/
		xbr_vb_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г����ѹ������*/
		xbr_vb_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г����ѹ������*/
	
		xbr_vc_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г����ѹ������*/
		xbr_vc_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г����ѹ������*/
		xbr_vc_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г����ѹ������*/
		xbr_vc_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г����ѹ������*/
		xbr_vc_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г����ѹ������*/
		xbr_vc_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г����ѹ������*/
		xbr_vc_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г����ѹ������*/
		xbr_vc_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г����ѹ������*/
		xbr_vc_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г����ѹ������*/
		xbr_vc_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г����ѹ������*/
		xbr_vc_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г����ѹ������*/
		xbr_vc_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г����ѹ������*/
		xbr_vc_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г����ѹ������*/
		xbr_vc_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г����ѹ������*/
		xbr_vc_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г����ѹ������*/
		xbr_vc_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г����ѹ������*/
		xbr_vc_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г����ѹ������*/
		xbr_vc_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г����ѹ������*/
		xbr_vc_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г����ѹ������*/
		xbr_vc_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г����ѹ������*/
		xbr_vc_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г����ѹ������*/
		xbr_vc_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г����ѹ������*/
		xbr_vc_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г����ѹ������*/
		xbr_vc_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г����ѹ������*/
		xbr_vc_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г����ѹ������*/
		xbr_vc_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г����ѹ������*/
		xbr_vc_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г����ѹ������*/
		xbr_vc_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г����ѹ������*/
		xbr_vc_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г����ѹ������*/
			
		xbr_ia_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��22��г������������*/
		xbr_ia_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��23��г������������*/
		xbr_ia_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��24��г������������*/
		xbr_ia_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��25��г������������*/
		xbr_ia_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��26��г������������*/
		xbr_ia_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��27��г������������*/
		xbr_ia_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��28��г������������*/
		xbr_ia_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��29��г������������*/
		xbr_ia_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��30��г������������*/
		xbr_ia_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��31��г������������*/
		xbr_ia_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��32��г������������*/
		xbr_ia_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��33��г������������*/
		xbr_ia_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��34��г������������*/
		xbr_ia_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��35��г������������*/
		xbr_ia_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��36��г������������*/
		xbr_ia_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��37��г������������*/
		xbr_ia_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��38��г������������*/
		xbr_ia_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��39��г������������*/
		xbr_ia_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��40��г������������*/
		xbr_ia_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��41��г������������*/
		xbr_ia_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��42��г������������*/
		xbr_ia_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��43��г������������*/
		xbr_ia_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��44��г������������*/
		xbr_ia_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��45��г������������*/
		xbr_ia_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��46��г������������*/
		xbr_ia_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��47��г������������*/
		xbr_ia_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��48��г������������*/
		xbr_ia_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��49��г������������*/
		xbr_ia_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��50��г������������*/
				
		
		xbr_ib_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��22��г������������*/
		xbr_ib_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��23��г������������*/
		xbr_ib_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��24��г������������*/
		xbr_ib_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��25��г������������*/
		xbr_ib_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��26��г������������*/
		xbr_ib_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��27��г������������*/
		xbr_ib_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��28��г������������*/
		xbr_ib_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��29��г������������*/
		xbr_ib_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��30��г������������*/
		xbr_ib_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��31��г������������*/
		xbr_ib_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��32��г������������*/
		xbr_ib_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��33��г������������*/
		xbr_ib_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��34��г������������*/
		xbr_ib_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��35��г������������*/
		xbr_ib_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��36��г������������*/
		xbr_ib_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��37��г������������*/
		xbr_ib_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��38��г������������*/
		xbr_ib_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��39��г������������*/
		xbr_ib_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��40��г������������*/
		xbr_ib_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��41��г������������*/
		xbr_ib_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��42��г������������*/
		xbr_ib_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��43��г������������*/
		xbr_ib_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��44��г������������*/
		xbr_ib_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��45��г������������*/
		xbr_ib_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��46��г������������*/
		xbr_ib_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��47��г������������*/
		xbr_ib_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��48��г������������*/
		xbr_ib_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��49��г������������*/
		xbr_ib_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��50��г������������*/
		
		
		xbr_ic_22				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��22��г������������*/
		xbr_ic_23				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��23��г������������*/
		xbr_ic_24				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��24��г������������*/
		xbr_ic_25				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��25��г������������*/
		xbr_ic_26				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��26��г������������*/
		xbr_ic_27				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��27��г������������*/
		xbr_ic_28				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��28��г������������*/
		xbr_ic_29				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��29��г������������*/
		xbr_ic_30				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��30��г������������*/
		xbr_ic_31				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��31��г������������*/
		xbr_ic_32				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��32��г������������*/
		xbr_ic_33				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��33��г������������*/
		xbr_ic_34				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��34��г������������*/
		xbr_ic_35				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��35��г������������*/
		xbr_ic_36				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��36��г������������*/
		xbr_ic_37				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��37��г������������*/
		xbr_ic_38				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��38��г������������*/
		xbr_ic_39				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��39��г������������*/
		xbr_ic_40				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��40��г������������*/
		xbr_ic_41				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��41��г������������*/
		xbr_ic_42				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��42��г������������*/
		xbr_ic_43				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��43��г������������*/
		xbr_ic_44				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��44��г������������*/
		xbr_ic_45				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��45��г������������*/
		xbr_ic_46				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��46��г������������*/
		xbr_ic_47				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��47��г������������*/
		xbr_ic_48				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��48��г������������*/
		xbr_ic_49				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��49��г������������*/
		xbr_ic_50				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��50��г������������*/
)
grant select on  BMinHXRate200808 to public
create unique clustered index BMinHXRate200808index1
	on BMinHXRate200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ�յ�ѹ������������ƽ�����ݱ�(BDayUIFLBal200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayUIFLBal200808')
begin
create table BDayUIFLBal200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,

		v_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ��ƽ������ֵ*/
		v_max_tm		int							DEFAULT 0 ,		/*��ѹ��ƽ������ֵ����ʱ��*/
		v_tm				int							DEFAULT 0 ,		/*��ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i_max				decimal(14, 3) 	DEFAULT 0.0 ,	/*������ƽ������ֵ*/
		i_max_tm		int							DEFAULT 0 ,		/*������ƽ������ֵ����ʱ��*/		
		i_tm				int							DEFAULT 0 ,		/*������ƽ��ȳ������ۼ�ʱ��*/
				

		v0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ������ֵ*/
		v0_max_tm		int							DEFAULT 0 ,		/*�����ѹ��ƽ������ֵ����ʱ��*/
		v0_tm				int							DEFAULT 0 ,		/*�����ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i0_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ������ֵ*/
		i0_max_tm		int							DEFAULT 0 ,		/*���������ƽ������ֵ����ʱ��*/		
		i0_tm				int							DEFAULT 0 ,		/*���������ƽ��ȳ������ۼ�ʱ��*/
		
		v2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����ѹ��ƽ������ֵ*/
		v2_max_tm		int							DEFAULT 0 ,		/*�����ѹ��ƽ������ֵ����ʱ��*/
		v2_tm				int							DEFAULT 0 ,		/*�����ѹ��ƽ��ȳ������ۼ�ʱ��*/		
		i2_max			decimal(14, 3) 	DEFAULT 0.0 ,	/*���������ƽ������ֵ*/
		i2_max_tm		int							DEFAULT 0 ,		/*���������ƽ������ֵ����ʱ��*/		
		i2_tm				int							DEFAULT 0 ,		/*���������ƽ��ȳ������ۼ�ʱ��*/
)
grant select on  BDayUIFLBal200808 to public
create unique clustered index BDayUIFLBal200808index1
	on BDayUIFLBal200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վ�յ�ѹƫ��ϸ������ݱ�(BDayVPC200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayVPC200808')
begin
create table BDayVPC200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	

	vapc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ�����ֵ*/
	vapc_max_tm		int							DEFAULT 0 ,			/*A���ѹƫ�����ֵ����ʱ��*/
	vahg_tm				int							DEFAULT 0 ,			/*A���ѹƫ��ϸ�ʱ��*/	
	vahgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ��ϸ���*/

	vbpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ�����ֵ*/
	vbpc_max_tm		int							DEFAULT 0 ,			/*B���ѹƫ�����ֵ����ʱ��*/
	vbhg_tm				int							DEFAULT 0 ,			/*B���ѹƫ��ϸ�ʱ��*/	
	vbhgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ��ϸ���*/

	vcpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ�����ֵ*/
	vcpc_max_tm		int							DEFAULT 0 ,			/*C���ѹƫ�����ֵ����ʱ��*/
	vchg_tm				int							DEFAULT 0 ,			/*C���ѹƫ��ϸ�ʱ��*/	
	vchgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ��ϸ���*/
)
grant select on  BDayVPC200808 to public
create unique clustered index BDayVPC200808index1
	on BDayVPC200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ�µ�ѹƫ��ϸ������ݱ�(BMonVPC2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonVPC2008')
begin
create table BMonVPC2008
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	

	vapc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ�����ֵ*/
	vapc_max_tm		int							DEFAULT 0 ,			/*A���ѹƫ�����ֵ����ʱ��*/
	vahg_tm				int							DEFAULT 0 ,			/*A���ѹƫ��ϸ�ʱ��*/	
	vahgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*A���ѹƫ��ϸ���*/

	vbpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ�����ֵ*/
	vbpc_max_tm		int							DEFAULT 0 ,			/*B���ѹƫ�����ֵ����ʱ��*/
	vbhg_tm				int							DEFAULT 0 ,			/*B���ѹƫ��ϸ�ʱ��*/	
	vbhgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*B���ѹƫ��ϸ���*/

	vcpc_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ�����ֵ*/
	vcpc_max_tm		int							DEFAULT 0 ,			/*C���ѹƫ�����ֵ����ʱ��*/
	vchg_tm				int							DEFAULT 0 ,			/*C���ѹƫ��ϸ�ʱ��*/	
	vchgr					decimal(14, 3) 	DEFAULT 0.0 ,		/*C���ѹƫ��ϸ���*/
)
grant select on  BMonVPC2008 to public
create unique clustered index BMonVPC2008index1
	on BMonVPC2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ�����������ݱ�(BMinMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinMaxXl200808')
begin
create table BMinMaxXl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
)
grant select on  BMinMaxXl200808 to public
create unique clustered index BMinMaxXl200808index1
	on BMinMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ���ӵ�ѹ���������ݱ�(BMinVFLUT200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinVFLUT200808')
begin
create table BMinVFLUT200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	vaflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹ����*/
	vbflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹ����*/
	vcflut	decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹ����*/
	
	vaflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	A���ѹͻ��/����*/
	vbflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	B���ѹͻ��/����*/
	vcflic	decimal(14, 3) 	DEFAULT 0.0 ,	/*	C���ѹͻ��/����*/
)
grant select on  BMinVFLUT200808 to public
create unique clustered index BMinVFLUT200808index1
	on BMinVFLUT200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	



--   '-------Create table ���վг���������ݱ�(BMonXbI2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonXbI2008')
begin
create table BMonXbI2008
(
		rtu_id						int   					not null,
		mp_id							smallint   			not null,
		date							int							not null,
		time							int							not null,
		
		xb_ia_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��2��г���������ֵ*/
		xb_ia_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г���������ֵ*/
		xb_ia_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г���������ֵ*/
		xb_ia_05			    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г���������ֵ*/
		xb_ia_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г���������ֵ*/
		xb_ia_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г���������ֵ*/
		xb_ia_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г���������ֵ*/
		xb_ia_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г���������ֵ*/
		xb_ia_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г���������ֵ*/
		xb_ia_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г���������ֵ*/
		xb_ia_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г���������ֵ*/
		xb_ia_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г���������ֵ*/
		xb_ia_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г���������ֵ*/
		xb_ia_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г���������ֵ*/
		xb_ia_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г���������ֵ*/
		xb_ia_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г���������ֵ*/
		xb_ia_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г���������ֵ*/
		xb_ia_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г���������ֵ*/
		xb_ia_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г���������ֵ*/
		xb_ia_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г���������ֵ*/
		xb_ia							decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
		
		xb_ia_02_tm				int		DEFAULT 0 ,							/*A��2��г���������ֵ����ʱ��*/
		xb_ia_03_tm				int		DEFAULT 0 ,							/*A��3��г���������ֵ����ʱ��*/
		xb_ia_04_tm				int		DEFAULT 0 ,							/*A��4��г���������ֵ����ʱ��*/
		xb_ia_05_tm				int		DEFAULT 0 ,							/*A��5��г���������ֵ����ʱ��*/
		xb_ia_06_tm				int		DEFAULT 0 ,							/*A��6��г���������ֵ����ʱ��*/
		xb_ia_07_tm				int		DEFAULT 0 ,							/*A��7��г���������ֵ����ʱ��*/
		xb_ia_08_tm				int		DEFAULT 0 ,							/*A��8��г���������ֵ����ʱ��*/
		xb_ia_09_tm				int		DEFAULT 0 ,							/*A��9��г���������ֵ����ʱ��*/
		xb_ia_10_tm				int		DEFAULT 0 ,							/*A��10��г���������ֵ����ʱ��*/
		xb_ia_11_tm				int		DEFAULT 0 ,							/*A��11��г���������ֵ����ʱ��*/
		xb_ia_12_tm				int		DEFAULT 0 ,							/*A��12��г���������ֵ����ʱ��*/
		xb_ia_13_tm				int		DEFAULT 0 ,							/*A��13��г���������ֵ����ʱ��*/
		xb_ia_14_tm				int		DEFAULT 0 ,							/*A��14��г���������ֵ����ʱ��*/
		xb_ia_15_tm				int		DEFAULT 0 ,							/*A��15��г���������ֵ����ʱ��*/
		xb_ia_16_tm				int		DEFAULT 0 ,							/*A��16��г���������ֵ����ʱ��*/
		xb_ia_17_tm				int		DEFAULT 0 ,							/*A��17��г���������ֵ����ʱ��*/
		xb_ia_18_tm				int		DEFAULT 0 ,							/*A��18��г���������ֵ����ʱ��*/
		xb_ia_19_tm				int		DEFAULT 0 ,							/*A��19��г���������ֵ����ʱ��*/
		xb_ia_20_tm				int		DEFAULT 0 ,							/*A��20��г���������ֵ����ʱ��*/
		xb_ia_21_tm				int		DEFAULT 0 ,							/*A��21��г���������ֵ����ʱ��*/
		xb_ia_tm					int		DEFAULT 0 ,					 	  /*A���ܻ���������ֵ����ʱ��*/
		
		
		xb_ib_02					decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г���������ֵ*/
		xb_ib_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г���������ֵ*/
		xb_ib_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г���������ֵ*/
		xb_ib_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г���������ֵ*/
		xb_ib_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г���������ֵ*/
		xb_ib_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г���������ֵ*/
		xb_ib_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г���������ֵ*/
		xb_ib_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г���������ֵ*/
		xb_ib_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г���������ֵ*/
		xb_ib_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г���������ֵ*/
		xb_ib_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г���������ֵ*/
		xb_ib_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г���������ֵ*/
		xb_ib_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г���������ֵ*/
		xb_ib_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г���������ֵ*/
		xb_ib_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г���������ֵ*/
		xb_ib_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г���������ֵ*/
		xb_ib_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г���������ֵ*/
		xb_ib_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г���������ֵ*/
		xb_ib_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г���������ֵ*/
		xb_ib_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г���������ֵ*/
		xb_ib							decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_ib_02_tm				int		DEFAULT 0 ,							/*B��2��г���������ֵ����ʱ��*/
		xb_ib_03_tm				int		DEFAULT 0 ,							/*B��3��г���������ֵ����ʱ��*/
		xb_ib_04_tm				int		DEFAULT 0 ,							/*B��4��г���������ֵ����ʱ��*/
		xb_ib_05_tm				int		DEFAULT 0 ,							/*B��5��г���������ֵ����ʱ��*/
		xb_ib_06_tm				int		DEFAULT 0 ,							/*B��6��г���������ֵ����ʱ��*/
		xb_ib_07_tm				int		DEFAULT 0 ,							/*B��7��г���������ֵ����ʱ��*/
		xb_ib_08_tm				int		DEFAULT 0 ,							/*B��8��г���������ֵ����ʱ��*/
		xb_ib_09_tm				int		DEFAULT 0 ,							/*B��9��г���������ֵ����ʱ��*/
		xb_ib_10_tm				int		DEFAULT 0 ,							/*B��10��г���������ֵ����ʱ��*/
		xb_ib_11_tm				int		DEFAULT 0 ,							/*B��11��г���������ֵ����ʱ��*/
		xb_ib_12_tm				int		DEFAULT 0 ,							/*B��12��г���������ֵ����ʱ��*/
		xb_ib_13_tm				int		DEFAULT 0 ,							/*B��13��г���������ֵ����ʱ��*/
		xb_ib_14_tm				int		DEFAULT 0 ,							/*B��14��г���������ֵ����ʱ��*/
		xb_ib_15_tm				int		DEFAULT 0 ,							/*B��15��г���������ֵ����ʱ��*/
		xb_ib_16_tm				int		DEFAULT 0 ,							/*B��16��г���������ֵ����ʱ��*/
		xb_ib_17_tm				int		DEFAULT 0 ,							/*B��17��г���������ֵ����ʱ��*/
		xb_ib_18_tm				int		DEFAULT 0 ,							/*B��18��г���������ֵ����ʱ��*/
		xb_ib_19_tm				int		DEFAULT 0 ,							/*B��19��г���������ֵ����ʱ��*/
		xb_ib_20_tm				int		DEFAULT 0 ,							/*B��20��г���������ֵ����ʱ��*/
		xb_ib_21_tm				int		DEFAULT 0 ,							/*B��21��г���������ֵ����ʱ��*/
		xb_ib_tm					int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_ic_02					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��2��г���������ֵ*/
		xb_ic_03					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г���������ֵ*/
		xb_ic_04					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г���������ֵ*/
		xb_ic_05					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г���������ֵ*/
		xb_ic_06					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г���������ֵ*/
		xb_ic_07					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г���������ֵ*/
		xb_ic_08					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г���������ֵ*/
		xb_ic_09					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г���������ֵ*/
		xb_ic_10					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г���������ֵ*/
		xb_ic_11					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г���������ֵ*/
		xb_ic_12					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г���������ֵ*/
		xb_ic_13					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г���������ֵ*/
		xb_ic_14					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г���������ֵ*/
		xb_ic_15					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г���������ֵ*/
		xb_ic_16					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г���������ֵ*/
		xb_ic_17					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г���������ֵ*/
		xb_ic_18					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г���������ֵ*/
		xb_ic_19					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г���������ֵ*/
		xb_ic_20					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г���������ֵ*/
		xb_ic_21					decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г���������ֵ*/
		xb_ic							decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_ic_02_tm				int		DEFAULT 0 ,							/*C��2��г���������ֵ����ʱ��*/
		xb_ic_03_tm				int		DEFAULT 0 ,							/*C��3��г���������ֵ����ʱ��*/
		xb_ic_04_tm				int		DEFAULT 0 ,							/*C��4��г���������ֵ����ʱ��*/
		xb_ic_05_tm				int		DEFAULT 0 ,							/*C��5��г���������ֵ����ʱ��*/
		xb_ic_06_tm				int		DEFAULT 0 ,							/*C��6��г���������ֵ����ʱ��*/
		xb_ic_07_tm				int		DEFAULT 0 ,							/*C��7��г���������ֵ����ʱ��*/
		xb_ic_08_tm				int		DEFAULT 0 ,							/*C��8��г���������ֵ����ʱ��*/
		xb_ic_09_tm				int		DEFAULT 0 ,							/*C��9��г���������ֵ����ʱ��*/
		xb_ic_10_tm				int		DEFAULT 0 ,							/*C��10��г���������ֵ����ʱ��*/
		xb_ic_11_tm				int		DEFAULT 0 ,							/*C��11��г���������ֵ����ʱ��*/
		xb_ic_12_tm				int		DEFAULT 0 ,							/*C��12��г���������ֵ����ʱ��*/
		xb_ic_13_tm				int		DEFAULT 0 ,							/*C��13��г���������ֵ����ʱ��*/
		xb_ic_14_tm				int		DEFAULT 0 ,							/*C��14��г���������ֵ����ʱ��*/
		xb_ic_15_tm				int		DEFAULT 0 ,							/*C��15��г���������ֵ����ʱ��*/
		xb_ic_16_tm				int		DEFAULT 0 ,							/*C��16��г���������ֵ����ʱ��*/
		xb_ic_17_tm				int		DEFAULT 0 ,							/*C��17��г���������ֵ����ʱ��*/
		xb_ic_18_tm				int		DEFAULT 0 ,							/*C��18��г���������ֵ����ʱ��*/
		xb_ic_19_tm				int		DEFAULT 0 ,							/*C��19��г���������ֵ����ʱ��*/
		xb_ic_20_tm				int		DEFAULT 0 ,							/*C��20��г���������ֵ����ʱ��*/
		xb_ic_21_tm				int		DEFAULT 0 ,							/*C��21��г���������ֵ����ʱ��*/
		xb_ic_tm					int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/

)
grant select on  BMonXbI2008 to public
create unique clustered index BMonXbI2008index1
	on BMonXbI2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վг����ѹ���ݱ�(BMonXbU2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonXbU2008')
begin
create table BMonXbU2008
(
		rtu_id					int   					not null,
		mp_id						smallint   			not null,
		date						int							not null,
		time						int							not null,
		
		xb_va_02				decimal(14, 3) 	DEFAULT 0.0,	/*A��2��г����ѹ���������ֵ*/
		xb_va_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��3��г����ѹ���������ֵ*/
		xb_va_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��4��г����ѹ���������ֵ*/
		xb_va_05		    decimal(14, 3) 	DEFAULT 0.0 ,	/*A��5��г����ѹ���������ֵ*/
		xb_va_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��6��г����ѹ���������ֵ*/
		xb_va_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��7��г����ѹ���������ֵ*/
		xb_va_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��8��г����ѹ���������ֵ*/
		xb_va_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��9��г����ѹ���������ֵ*/
		xb_va_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��10��г����ѹ���������ֵ*/
		xb_va_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��11��г����ѹ���������ֵ*/
		xb_va_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��12��г����ѹ���������ֵ*/
		xb_va_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��13��г����ѹ���������ֵ*/
		xb_va_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��14��г����ѹ���������ֵ*/
		xb_va_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��15��г����ѹ���������ֵ*/
		xb_va_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��16��г����ѹ���������ֵ*/
		xb_va_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��17��г����ѹ���������ֵ*/
		xb_va_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��18��г����ѹ���������ֵ*/
		xb_va_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��19��г����ѹ���������ֵ*/
		xb_va_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��20��г����ѹ���������ֵ*/
		xb_va_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*A��21��г����ѹ���������ֵ*/
		xb_va						decimal(14, 3) 	DEFAULT 0.0 ,	/*A���ܻ���������ֵ*/
				
		xb_va_02_tm			int		DEFAULT 0 ,							/*A��2��г����ѹ���������ֵ����ʱ��*/
		xb_va_03_tm			int		DEFAULT 0 ,							/*A��3��г����ѹ���������ֵ����ʱ��*/
		xb_va_04_tm			int		DEFAULT 0 ,							/*A��4��г����ѹ���������ֵ����ʱ��*/
		xb_va_05_tm			int		DEFAULT 0 ,							/*A��5��г����ѹ���������ֵ����ʱ��*/
		xb_va_06_tm			int		DEFAULT 0 ,							/*A��6��г����ѹ���������ֵ����ʱ��*/
		xb_va_07_tm			int		DEFAULT 0 ,							/*A��7��г����ѹ���������ֵ����ʱ��*/
		xb_va_08_tm			int		DEFAULT 0 ,							/*A��8��г����ѹ���������ֵ����ʱ��*/
		xb_va_09_tm			int		DEFAULT 0 ,							/*A��9��г����ѹ���������ֵ����ʱ��*/
		xb_va_10_tm			int		DEFAULT 0 ,							/*A��10��г����ѹ���������ֵ����ʱ��*/
		xb_va_11_tm			int		DEFAULT 0 ,							/*A��11��г����ѹ���������ֵ����ʱ��*/
		xb_va_12_tm			int		DEFAULT 0 ,							/*A��12��г����ѹ���������ֵ����ʱ��*/
		xb_va_13_tm			int		DEFAULT 0 ,							/*A��13��г����ѹ���������ֵ����ʱ��*/
		xb_va_14_tm			int		DEFAULT 0 ,							/*A��14��г����ѹ���������ֵ����ʱ��*/
		xb_va_15_tm			int		DEFAULT 0 ,							/*A��15��г����ѹ���������ֵ����ʱ��*/
		xb_va_16_tm			int		DEFAULT 0 ,							/*A��16��г����ѹ���������ֵ����ʱ��*/
		xb_va_17_tm			int		DEFAULT 0 ,							/*A��17��г����ѹ���������ֵ����ʱ��*/
		xb_va_18_tm			int		DEFAULT 0 ,							/*A��18��г����ѹ���������ֵ����ʱ��*/
		xb_va_19_tm			int		DEFAULT 0 ,							/*A��19��г����ѹ���������ֵ����ʱ��*/
		xb_va_20_tm			int		DEFAULT 0 ,							/*A��20��г����ѹ���������ֵ����ʱ��*/
		xb_va_21tm			int		DEFAULT 0 ,							/*A��21��г����ѹ���������ֵ����ʱ��*/
		xb_va_tm				int		DEFAULT 0 ,					 		/*A���ܻ���������ֵ����ʱ��*/
		
		xb_vb_02				decimal(14, 3) 	DEFAULT 0.0,	/*B��2��г����ѹ���������ֵ*/
		xb_vb_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��3��г����ѹ���������ֵ*/
		xb_vb_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��4��г����ѹ���������ֵ*/
		xb_vb_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��5��г����ѹ���������ֵ*/
		xb_vb_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��6��г����ѹ���������ֵ*/
		xb_vb_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��7��г����ѹ���������ֵ*/
		xb_vb_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��8��г����ѹ���������ֵ*/
		xb_vb_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��9��г����ѹ���������ֵ*/
		xb_vb_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��10��г����ѹ���������ֵ*/
		xb_vb_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��11��г����ѹ���������ֵ*/
		xb_vb_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��12��г����ѹ���������ֵ*/
		xb_vb_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��13��г����ѹ���������ֵ*/
		xb_vb_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��14��г����ѹ���������ֵ*/
		xb_vb_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��15��г����ѹ���������ֵ*/
		xb_vb_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��16��г����ѹ���������ֵ*/
		xb_vb_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��17��г����ѹ���������ֵ*/
		xb_vb_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��18��г����ѹ���������ֵ*/
		xb_vb_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��19��г����ѹ���������ֵ*/
		xb_vb_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��20��г����ѹ���������ֵ*/
		xb_vb_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*B��21��г����ѹ���������ֵ*/
		xb_vb						decimal(14, 3) 	DEFAULT 0.0 ,	/*B���ܻ���������ֵ*/
		
		xb_vb_02_tm			int		DEFAULT 0 ,							/*B��2��г����ѹ���������ֵ����ʱ��*/
		xb_vb_03_tm			int		DEFAULT 0 ,							/*B��3��г����ѹ���������ֵ����ʱ��*/
		xb_vb_04_tm			int		DEFAULT 0 ,							/*B��4��г����ѹ���������ֵ����ʱ��*/
		xb_vb_05_tm			int		DEFAULT 0 ,							/*B��5��г����ѹ���������ֵ����ʱ��*/
		xb_vb_06_tm			int		DEFAULT 0 ,							/*B��6��г����ѹ���������ֵ����ʱ��*/
		xb_vb_07_tm			int		DEFAULT 0 ,							/*B��7��г����ѹ���������ֵ����ʱ��*/
		xb_vb_08_tm			int		DEFAULT 0 ,							/*B��8��г����ѹ���������ֵ����ʱ��*/
		xb_vb_09_tm			int		DEFAULT 0 ,							/*B��9��г����ѹ���������ֵ����ʱ��*/
		xb_vb_10_tm			int		DEFAULT 0 ,							/*B��10��г����ѹ���������ֵ����ʱ��*/
		xb_vb_11_tm			int		DEFAULT 0 ,							/*B��11��г����ѹ���������ֵ����ʱ��*/
		xb_vb_12_tm			int		DEFAULT 0 ,							/*B��12��г����ѹ���������ֵ����ʱ��*/
		xb_vb_13_tm			int		DEFAULT 0 ,							/*B��13��г����ѹ���������ֵ����ʱ��*/
		xb_vb_14_tm			int		DEFAULT 0 ,							/*B��14��г����ѹ���������ֵ����ʱ��*/
		xb_vb_15_tm			int		DEFAULT 0 ,							/*B��15��г����ѹ���������ֵ����ʱ��*/
		xb_vb_16_tm			int		DEFAULT 0 ,							/*B��16��г����ѹ���������ֵ����ʱ��*/
		xb_vb_17_tm			int		DEFAULT 0 ,							/*B��17��г����ѹ���������ֵ����ʱ��*/
		xb_vb_18_tm			int		DEFAULT 0 ,							/*B��18��г����ѹ���������ֵ����ʱ��*/
		xb_vb_19_tm			int		DEFAULT 0 ,							/*B��19��г����ѹ���������ֵ����ʱ��*/
		xb_vb_20_tm			int		DEFAULT 0 ,							/*B��20��г����ѹ���������ֵ����ʱ��*/
		xb_vb_21_tm			int		DEFAULT 0 ,							/*B��21��г����ѹ���������ֵ����ʱ��*/
		xb_vb_tm				int		DEFAULT 0 ,					 		/*B���ܻ���������ֵ����ʱ��*/
		
		
		xb_vc_02				decimal(14, 3) 	DEFAULT 0.0	,	/*C��2��г����ѹ���������ֵ*/
		xb_vc_03				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��3��г����ѹ���������ֵ*/
		xb_vc_04				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��4��г����ѹ���������ֵ*/
		xb_vc_05				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��5��г����ѹ���������ֵ*/
		xb_vc_06				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��6��г����ѹ���������ֵ*/
		xb_vc_07				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��7��г����ѹ���������ֵ*/
		xb_vc_08				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��8��г����ѹ���������ֵ*/
		xb_vc_09				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��9��г����ѹ���������ֵ*/
		xb_vc_10				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��10��г����ѹ���������ֵ*/
		xb_vc_11				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��11��г����ѹ���������ֵ*/
		xb_vc_12				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��12��г����ѹ���������ֵ*/
		xb_vc_13				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��13��г����ѹ���������ֵ*/
		xb_vc_14				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��14��г����ѹ���������ֵ*/
		xb_vc_15				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��15��г����ѹ���������ֵ*/
		xb_vc_16				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��16��г����ѹ���������ֵ*/
		xb_vc_17				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��17��г����ѹ���������ֵ*/
		xb_vc_18				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��18��г����ѹ���������ֵ*/
		xb_vc_19				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��19��г����ѹ���������ֵ*/
		xb_vc_20				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��20��г����ѹ���������ֵ*/
		xb_vc_21				decimal(14, 3) 	DEFAULT 0.0 ,	/*C��21��г����ѹ���������ֵ*/
		xb_vc						decimal(14, 3) 	DEFAULT 0.0 ,	/*C���ܻ���������ֵ*/
		
		xb_vc_02_tm			int		DEFAULT 0 ,							/*C��2��г����ѹ���������ֵ����ʱ��*/
		xb_vc_03_tm			int		DEFAULT 0 ,							/*C��3��г����ѹ���������ֵ����ʱ��*/
		xb_vc_04_tm			int		DEFAULT 0 ,							/*C��4��г����ѹ���������ֵ����ʱ��*/
		xb_vc_05_tm			int		DEFAULT 0 ,							/*C��5��г����ѹ���������ֵ����ʱ��*/
		xb_vc_06_tm			int		DEFAULT 0 ,							/*C��6��г����ѹ���������ֵ����ʱ��*/
		xb_vc_07_tm			int		DEFAULT 0 ,							/*C��7��г����ѹ���������ֵ����ʱ��*/
		xb_vc_08_tm			int		DEFAULT 0 ,							/*C��8��г����ѹ���������ֵ����ʱ��*/
		xb_vc_09_tm			int		DEFAULT 0 ,							/*C��9��г����ѹ���������ֵ����ʱ��*/
		xb_vc_10_tm			int		DEFAULT 0 ,							/*C��10��г����ѹ���������ֵ����ʱ��*/
		xb_vc_11_tm			int		DEFAULT 0 ,							/*C��11��г����ѹ���������ֵ����ʱ��*/
		xb_vc_12_tm			int		DEFAULT 0 ,							/*C��12��г����ѹ���������ֵ����ʱ��*/
		xb_vc_13_tm			int		DEFAULT 0 ,							/*C��13��г����ѹ���������ֵ����ʱ��*/
		xb_vc_14_tm			int		DEFAULT 0 ,							/*C��14��г����ѹ���������ֵ����ʱ��*/
		xb_vc_15_tm			int		DEFAULT 0 ,							/*C��15��г����ѹ���������ֵ����ʱ��*/
		xb_vc_16_tm			int		DEFAULT 0 ,							/*C��16��г����ѹ���������ֵ����ʱ��*/
		xb_vc_17_tm			int		DEFAULT 0 ,							/*C��17��г����ѹ���������ֵ����ʱ��*/
		xb_vc_18_tm			int		DEFAULT 0 ,							/*C��18��г����ѹ���������ֵ����ʱ��*/
		xb_vc_19_tm			int		DEFAULT 0 ,							/*C��19��г����ѹ���������ֵ����ʱ��*/
		xb_vc_20_tm			int		DEFAULT 0 ,							/*C��20��г����ѹ���������ֵ����ʱ��*/
		xb_vc_21_tm			int		DEFAULT 0 ,							/*C��21��г����ѹ���������ֵ����ʱ��*/
		xb_vc_tm				int		DEFAULT 0 					 		/*C���ܻ���������ֵ����ʱ��*/
)
grant select on  BMonXbU2008 to public
create unique clustered index BMonXbU2008index1
	on BMonXbU2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���վг��Խ�����ݱ�(BMonXbLmt2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonXbLmt2008')
begin
create table BMonXbLmt2008
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		
		xblmt_va			int		DEFAULT 0 ,			/*A���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_02		int		DEFAULT 0 ,			/*A��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_03		int		DEFAULT 0 ,			/*A��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_04		int		DEFAULT 0 ,			/*A��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_05		int		DEFAULT 0 ,			/*A��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_06		int		DEFAULT 0 ,			/*A��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_07		int		DEFAULT 0 ,			/*A��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_08		int		DEFAULT 0 ,			/*A��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_09		int		DEFAULT 0 ,			/*A��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_10		int		DEFAULT 0 ,			/*A��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_11		int		DEFAULT 0 ,			/*A��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_12		int		DEFAULT 0 ,			/*A��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_13		int		DEFAULT 0 ,			/*A��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_14		int		DEFAULT 0 ,			/*A��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_15		int		DEFAULT 0 ,			/*A��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_16		int		DEFAULT 0 ,			/*A��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_17		int		DEFAULT 0 ,			/*A��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_18		int		DEFAULT 0 ,			/*A��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_19		int		DEFAULT 0 ,			/*A��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_20		int		DEFAULT 0 ,			/*A��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_va_21		int		DEFAULT 0 ,			/*A��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ia			int		DEFAULT 0 ,			/*A���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ia_02		int		DEFAULT 0 ,			/*A��2��г������Խ���ۼ�ʱ��*/
		xblmt_ia_03		int		DEFAULT 0 ,			/*A��3��г������Խ���ۼ�ʱ��*/
		xblmt_ia_04		int		DEFAULT 0 ,			/*A��4��г������Խ���ۼ�ʱ��*/
		xblmt_ia_05		int		DEFAULT 0 ,			/*A��5��г������Խ���ۼ�ʱ��*/
		xblmt_ia_06		int		DEFAULT 0 ,			/*A��6��г������Խ���ۼ�ʱ��*/
		xblmt_ia_07		int		DEFAULT 0 ,			/*A��7��г������Խ���ۼ�ʱ��*/
		xblmt_ia_08		int		DEFAULT 0 ,			/*A��8��г������Խ���ۼ�ʱ��*/
		xblmt_ia_09		int		DEFAULT 0 ,			/*A��9��г������Խ���ۼ�ʱ��*/
		xblmt_ia_10		int		DEFAULT 0 ,			/*A��10��г������Խ���ۼ�ʱ��*/
		xblmt_ia_11		int		DEFAULT 0 ,			/*A��11��г������Խ���ۼ�ʱ��*/
		xblmt_ia_12		int		DEFAULT 0 ,			/*A��12��г������Խ���ۼ�ʱ��*/
		xblmt_ia_13		int		DEFAULT 0 ,			/*A��13��г������Խ���ۼ�ʱ��*/
		xblmt_ia_14		int		DEFAULT 0 ,			/*A��14��г������Խ���ۼ�ʱ��*/
		xblmt_ia_15		int		DEFAULT 0 ,			/*A��15��г������Խ���ۼ�ʱ��*/
		xblmt_ia_16		int		DEFAULT 0 ,			/*A��16��г������Խ���ۼ�ʱ��*/
		xblmt_ia_17		int		DEFAULT 0 ,			/*A��17��г������Խ���ۼ�ʱ��*/
		xblmt_ia_18		int		DEFAULT 0 ,			/*A��18��г������Խ���ۼ�ʱ��*/
		xblmt_ia_19		int		DEFAULT 0 ,			/*A��19��г������Խ���ۼ�ʱ��*/
		xblmt_ia_20		int		DEFAULT 0 ,			/*A��20��г������Խ���ۼ�ʱ��*/
		xblmt_ia_21		int		DEFAULT 0 ,			/*A��21��г������Խ���ۼ�ʱ��*/
		xblmt_vb			int		DEFAULT 0 ,			/*B���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_02		int		DEFAULT 0 ,			/*B��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_03		int		DEFAULT 0 ,			/*B��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_04		int		DEFAULT 0 ,			/*B��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_05		int		DEFAULT 0 ,			/*B��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_06		int		DEFAULT 0 ,			/*B��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_07		int		DEFAULT 0 ,			/*B��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_08		int		DEFAULT 0 ,			/*B��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_09		int		DEFAULT 0 ,			/*B��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_10		int		DEFAULT 0 ,			/*B��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_11		int		DEFAULT 0 ,			/*B��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_12		int		DEFAULT 0 ,			/*B��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_13		int		DEFAULT 0 ,			/*B��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_14		int		DEFAULT 0 ,			/*B��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_15		int		DEFAULT 0 ,			/*B��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_16		int		DEFAULT 0 ,			/*B��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_17		int		DEFAULT 0 ,			/*B��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_18		int		DEFAULT 0 ,			/*B��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_19		int		DEFAULT 0 ,			/*B��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_20		int		DEFAULT 0 ,			/*B��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vb_21		int		DEFAULT 0 ,			/*B��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ib			int		DEFAULT 0 ,			/*B���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ib_02		int		DEFAULT 0 ,			/*B��2��г������Խ���ۼ�ʱ��*/
		xblmt_ib_03		int		DEFAULT 0 ,			/*B��3��г������Խ���ۼ�ʱ��*/
		xblmt_ib_04		int		DEFAULT 0 ,			/*B��4��г������Խ���ۼ�ʱ��*/
		xblmt_ib_05		int		DEFAULT 0 ,			/*B��5��г������Խ���ۼ�ʱ��*/
		xblmt_ib_06		int		DEFAULT 0 ,			/*B��6��г������Խ���ۼ�ʱ��*/
		xblmt_ib_07		int		DEFAULT 0 ,			/*B��7��г������Խ���ۼ�ʱ��*/
		xblmt_ib_08		int		DEFAULT 0 ,			/*B��8��г������Խ���ۼ�ʱ��*/
		xblmt_ib_09		int		DEFAULT 0 ,			/*B��9��г������Խ���ۼ�ʱ��*/
		xblmt_ib_10		int		DEFAULT 0 ,			/*B��10��г������Խ���ۼ�ʱ��*/
		xblmt_ib_11		int		DEFAULT 0 ,			/*B��11��г������Խ���ۼ�ʱ��*/
		xblmt_ib_12		int		DEFAULT 0 ,			/*B��12��г������Խ���ۼ�ʱ��*/
		xblmt_ib_13		int		DEFAULT 0 ,			/*B��13��г������Խ���ۼ�ʱ��*/
		xblmt_ib_14		int		DEFAULT 0 ,			/*B��14��г������Խ���ۼ�ʱ��*/
		xblmt_ib_15		int		DEFAULT 0 ,			/*B��15��г������Խ���ۼ�ʱ��*/
		xblmt_ib_16		int		DEFAULT 0 ,			/*B��16��г������Խ���ۼ�ʱ��*/
		xblmt_ib_17		int		DEFAULT 0 ,			/*B��17��г������Խ���ۼ�ʱ��*/
		xblmt_ib_18		int		DEFAULT 0 ,			/*B��18��г������Խ���ۼ�ʱ��*/
		xblmt_ib_19		int		DEFAULT 0 ,			/*B��19��г������Խ���ۼ�ʱ��*/
		xblmt_ib_20		int		DEFAULT 0 ,			/*B��20��г������Խ���ۼ�ʱ��*/
		xblmt_ib_21		int		DEFAULT 0 ,			/*B��21��г������Խ���ۼ�ʱ��*/
		xblmt_vc			int		DEFAULT 0 ,			/*C���ܻ����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_02		int		DEFAULT 0 ,			/*C��2��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_03		int		DEFAULT 0 ,			/*C��3��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_04		int		DEFAULT 0 ,			/*C��4��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_05		int		DEFAULT 0 ,			/*C��5��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_06		int		DEFAULT 0 ,			/*C��6��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_07		int		DEFAULT 0 ,			/*C��7��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_08		int		DEFAULT 0 ,			/*C��8��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_09		int		DEFAULT 0 ,			/*C��9��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_10		int		DEFAULT 0 ,			/*C��10��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_11		int		DEFAULT 0 ,			/*C��11��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_12		int		DEFAULT 0 ,			/*C��12��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_13		int		DEFAULT 0 ,			/*C��13��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_14		int		DEFAULT 0 ,			/*C��14��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_15		int		DEFAULT 0 ,			/*C��15��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_16		int		DEFAULT 0 ,			/*C��16��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_17		int		DEFAULT 0 ,			/*C��17��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_18		int		DEFAULT 0 ,			/*C��18��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_19		int		DEFAULT 0 ,			/*C��19��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_20		int		DEFAULT 0 ,			/*C��20��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_vc_21		int		DEFAULT 0 ,			/*C��21��г����ѹ������Խ���ۼ�ʱ��*/
		xblmt_ic			int		DEFAULT 0 ,			/*C���ܻ������Խ���ۼ�ʱ��*/
		xblmt_ic_02		int		DEFAULT 0 ,			/*C��2��г������Խ���ۼ�ʱ��*/
		xblmt_ic_03		int		DEFAULT 0 ,			/*C��3��г������Խ���ۼ�ʱ��*/
		xblmt_ic_04		int		DEFAULT 0 ,			/*C��4��г������Խ���ۼ�ʱ��*/
		xblmt_ic_05		int		DEFAULT 0 ,			/*C��5��г������Խ���ۼ�ʱ��*/
		xblmt_ic_06		int		DEFAULT 0 ,			/*C��6��г������Խ���ۼ�ʱ��*/
		xblmt_ic_07		int		DEFAULT 0 ,			/*C��7��г������Խ���ۼ�ʱ��*/
		xblmt_ic_08		int		DEFAULT 0 ,			/*C��8��г������Խ���ۼ�ʱ��*/
		xblmt_ic_09		int		DEFAULT 0 ,			/*C��9��г������Խ���ۼ�ʱ��*/
		xblmt_ic_10		int		DEFAULT 0 ,			/*C��10��г������Խ���ۼ�ʱ��*/
		xblmt_ic_11		int		DEFAULT 0 ,			/*C��11��г������Խ���ۼ�ʱ��*/
		xblmt_ic_12		int		DEFAULT 0 ,			/*C��12��г������Խ���ۼ�ʱ��*/
		xblmt_ic_13		int		DEFAULT 0 ,			/*C��13��г������Խ���ۼ�ʱ��*/
		xblmt_ic_14		int		DEFAULT 0 ,			/*C��14��г������Խ���ۼ�ʱ��*/
		xblmt_ic_15		int		DEFAULT 0 ,			/*C��15��г������Խ���ۼ�ʱ��*/
		xblmt_ic_16		int		DEFAULT 0 ,			/*C��16��г������Խ���ۼ�ʱ��*/
		xblmt_ic_17		int		DEFAULT 0 ,			/*C��17��г������Խ���ۼ�ʱ��*/
		xblmt_ic_18		int		DEFAULT 0 ,			/*C��18��г������Խ���ۼ�ʱ��*/
		xblmt_ic_19		int		DEFAULT 0 ,			/*C��19��г������Խ���ۼ�ʱ��*/
		xblmt_ic_20		int		DEFAULT 0 ,			/*C��20��г������Խ���ۼ�ʱ��*/
		xblmt_ic_21		int		DEFAULT 0 			/*C��21��г������Խ���ۼ�ʱ��*/
)
grant select on  BMonXbLmt2008 to public
create unique clustered index BMonXbLmt2008index1
	on BMonXbLmt2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ�յ�����ƽ�����ݱ�(BDayIBal200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayIBal200808')
begin
create table BDayIBal200808
(
		rtu_id				int   					not null,
		mp_id					smallint   			not null,
		date					int							not null,
		time					int							not null,
		bph_i_tm			int							DEFAULT 0 ,			/*������ƽ���Խ���ۼ�ʱ��*/
		bph_v_tm			int							DEFAULT 0 ,			/*��ѹ��ƽ���Խ���ۼ�ʱ��*/ 
		bph_i_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*������ƽ�����ֵ*/
		bph_i_max_tm	int							DEFAULT 0 ,			/*������ƽ�����ֵ����ʱ��*/
		bph_v_max			decimal(14, 3) 	DEFAULT 0.0 ,		/*��ѹ��ƽ�����ֵ*/
		bph_v_max_tm	int							DEFAULT 0			  /*��ѹ��ƽ�����ֵ����ʱ��*/
)
grant select on  BDayIBal200808 to public
create unique clustered index BDayIBal200808index1
	on BDayIBal200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--   '-------Create table ���վ�յ���Խ�����ݱ�(BDayILmt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayILmt200808')
begin
create table BDayILmt200808
(
		rtu_id					int  			not null,
		mp_id						smallint 	not null,
		date						int				not null,
		time						int				not null,

		lmt_ia_hh_tm		int				DEFAULT 0 ,			/*A�����Խ�������ۼ�ʱ��*/
		lmt_ia_h_tm			int				DEFAULT 0 ,			/*A�����Խ�����ۼ�ʱ��*/
		lmt_ib_hh_tm		int				DEFAULT 0 ,			/*B�����Խ�������ۼ�ʱ��*/
		lmt_ib_h_tm			int				DEFAULT 0 ,			/*B�����Խ�����ۼ�ʱ��*/
		lmt_ic_hh_tm		int				DEFAULT 0 ,			/*C�����Խ�������ۼ�ʱ��*/
		lmt_ic_h_tm			int				DEFAULT 0 ,			/*C�����Խ�����ۼ�ʱ��*/
		lmt_i0_h_tm			int				DEFAULT 0 ,			/*�������Խ�����ۼ�ʱ��*/
		lmt_ia_max			decimal(14, 3)DEFAULT 0.0,/*A��������ֵ*/
		lmt_ia_max_tm		int				DEFAULT 0 ,			/*A��������ֵ����ʱ��*/
		lmt_ib_max			decimal(14, 3)DEFAULT 0.0,/*B��������ֵ*/
		lmt_ib_max_tm		int				DEFAULT 0 ,			/*B��������ֵ����ʱ��*/
		lmt_ic_max			decimal(14, 3)DEFAULT 0.0,/*C��������ֵ*/
		lmt_ic_max_tm		int				DEFAULT 0 ,			/*C��������ֵ����ʱ��*/
		lmt_i0_max			decimal(14, 3)DEFAULT 0.0,/*����������ֵ*/
		lmt_i0_max_tm		int				DEFAULT 0 			/*����������ֵ����ʱ��*/
)
grant select on  BDayILmt200808 to public
create unique clustered index BDayILmt200808index1
	on BDayILmt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--ע���ͻ�˹̹ԭ����ר��Ӧ�ã���תΪ��ѹӦ��
--   '-------Create table �ͻ�˹̹��������������ݱ�(JMinMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMinMaxXl200808')
begin
create table JMinMaxXl200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
)
grant select on  JMinMaxXl200808 to public
create unique clustered index JMinMaxXl200808index1
	on JMinMaxXl200808(rtu_id,mp_id,date,time)
end
go

-- ��ǽ���

--   '-------Create table �������������ݱ�(JDayMaxXl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JDayMaxXl200808')
begin
create table JDayMaxXl200808
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/		
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  JDayMaxXl200808 to public
create unique clustered index JDayMaxXl200808index1
	on JDayMaxXl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JMonMaxXl2008')
begin
create table JMonMaxXl2008
(
	rtu_id		int   					not null,
	mp_id			smallint   			not null,
	date			int							not null,
	time			int							not null,

	xl_zy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_zy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_zy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_zy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_zy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_zy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
		
	xl_fy					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�ƽ����*/	
	xl_fy_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	xl_fy_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����й�������*/	
	
	xl_fy_tm			int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl1_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl2_tm	int							DEFAULT 0 ,		/*�����й�ƽ����ʱ��*/	
	xl_fy_fl3_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
	xl_fy_fl4_tm	int							DEFAULT 0 ,		/*�����й�������ʱ��*/	
			
			
	xl_zw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_zw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_zw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	
	xl_zw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_zw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_zw_fl4_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	
	xl_fw					decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl1			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl2			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�ƽ����*/	
	xl_fw_fl3			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	
	xl_fw_fl4			decimal(14, 3) 	DEFAULT 0.0 ,	/*�����޹�������*/	

	xl_fw_tm			int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl1_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/	
	xl_fw_fl2_tm	int							DEFAULT 0 ,		/*�����޹�ƽ����ʱ��*/	
	xl_fw_fl3_tm	int							DEFAULT 0 ,		/*�����޹�������ʱ��*/
	xl_fw_fl4_tm	int							DEFAULT 0 		/*�����޹�������ʱ��*/
)
grant select on  JMonMaxXl2008 to public
create unique clustered index JMonMaxXl2008index1
	on JMonMaxXl2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--�ն��������ݱ�
--   '-------Create table �ͻ�˹̹�ն��������ݱ�(EventExt200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'EventExt200808')
begin
create table EventExt200808
(
	rtu_id			int   					not null,
	mp_id				smallint   			not null,
	
	date				int							not null,
	time				int							not null,
	
	prot_type		tinyint					not null,		/*��Լ����*/
	
	event_cls		int							not null,		/*�������*/
	event_type	int							not null,		/*����С��*/
	
	sdate				int							null,				/*������ʼ����*/
	stime				int							null,				/*������ʼʱ��*/
	edate				int							null,				/*�����������*/
	etime				int							null,				/*�������ʱ��*/
	
	event_data	varchar(255)		null				/*��������-ԭʼ����*/
)
grant select on  EventExt200808 to public
create unique clustered index EventExt200808index1
	on EventExt200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--����̼�¼��
--   '-------Create table �ͻ�˹̹����̼�¼���ݱ�(ProgrammingReport2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ProgrammingReport2008')
begin
create table ProgrammingReport2008
(
	rtu_id			int   					not null,
	mp_id				smallint   			not null,
	
	date				int							not null,
	time				int							not null,
	
	cons_id			varchar(64)					null,		/*Consumer Identification�ͻ����*/
	meter_id		varchar(32)					null,		/*Meter Serial No.������к�*/
	meter_type	varchar(32)					null,		/*Meter Type�������*/
	cur_date		int									null,		/*Current Date��������*/
	cur_time		int									null,		/*Current Time����ʱ��*/
	
	pt_ratio		decimal(14, 3) 			DEFAULT 0.0 ,	/*PT Ratio ��ѹ���������*/	
	ct_ratio		decimal(14, 3) 			DEFAULT 0.0 ,	/*CT Ratio�������������*/	
	reset_date		int 							DEFAULT 0 ,		/*Date of Reset �������� DDhh*/
	md_inter			int 							DEFAULT 0 ,		/*Intergration Period ������������*/
	season_num		int 							DEFAULT 0 ,		/*Number of Seasons ������*/
	tariff_num		int 							DEFAULT 0 ,		/*Tariff Number ������*/
	
	daytable_1		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_2		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_3		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_4		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_5		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_6		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_7		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_8		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_9		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_10		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_11		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_12		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_13		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	daytable_14		int 							DEFAULT 0 ,		/*Season Setting ʱ����MMdd*/
	
)
grant select on  ProgrammingReport2008 to public
create unique clustered index ProgrammingReport2008index1
	on ProgrammingReport2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--����˵����ݱ�
--   '-------Create table �ͻ�˹̹����˵����ݱ�(BillingReport2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BillingReport2008')
begin
create table BillingReport2008
(
	rtu_id			int   					not null,
	mp_id				smallint   			not null,
	
	date				int							not null,
	time				int							not null,
	
	cons_id			varchar(64)					null,		/*Consumer Identification�ͻ����*/
	meter_id		varchar(32)					null,		/*Meter Serial No.������к�*/
	meter_type	varchar(32)					null,		/*Meter Type�������*/
	cur_date		int									null,		/*Current Date��������*/
	cur_time		int									null,		/*Current Time����ʱ��*/
	cur_season	int									null,		/*Current Season����*/
	
	sreading_tot	decimal(14, 3) 		DEFAULT 0.0 ,	/*Start Reading Total kWh		��ʼ(��2��)�ܵ���ʾֵ*/	
	sreading_t1		decimal(14, 3) 		DEFAULT 0.0 ,	/*Start Reading kWh Rate T1	��ʼ����ʾֵ����1*/	
	sreading_t2		decimal(14, 3) 		DEFAULT 0.0 ,	/*Start Reading kWh Rate T1	��ʼ����ʾֵ����2*/	
	sreading_t3		decimal(14, 3) 		DEFAULT 0.0 ,	/*Start Reading kWh Rate T1	��ʼ����ʾֵ����3*/	
	sreading_t4		decimal(14, 3) 		DEFAULT 0.0 ,	/*Start Reading kWh Rate T1	��ʼ����ʾֵ����4*/	
	
	ereading_tot	decimal(14, 3) 		DEFAULT 0.0 ,	/*End Reading Total kWh		����(��1��)�ܵ���ʾֵ*/	
	ereading_t1		decimal(14, 3) 		DEFAULT 0.0 ,	/*End Reading kWh Rate T1	��������ʾֵ����1*/	
	ereading_t2		decimal(14, 3) 		DEFAULT 0.0 ,	/*End Reading kWh Rate T1	��������ʾֵ����2*/	
	ereading_t3		decimal(14, 3) 		DEFAULT 0.0 ,	/*End Reading kWh Rate T1	��������ʾֵ����3*/	
	ereading_t4		decimal(14, 3) 		DEFAULT 0.0 ,	/*End Reading kWh Rate T1	��������ʾֵ����4*/	
	
	kwh_tot				decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kWh Total	��1�����õ���*/	
	kwh_t1				decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kWh T1	��1�·���1�õ���*/
	kwh_t2				decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kWh T2	��1�·���2�õ���*/
	kwh_t3				decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kWh T3	��1�·���3�õ���*/
	kwh_t4				decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kWh T4	��1�·���4�õ���*/
	
	kvarh_tot			decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kvarh Total	��1�����õ���*/	
	kvarh_t1			decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kvarh T1	��1�·���1�õ���*/
	kvarh_t2			decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kvarh T2	��1�·���2�õ���*/
	kvarh_t3			decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kvarh T3	��1�·���3�õ���*/
	kvarh_t4			decimal(14, 3) 		DEFAULT 0.0 ,	/*Consumption kvarh T4	��1�·���4�õ���*/
	
	--Maximum Demand
	md_tot				decimal(14, 3) 		DEFAULT 0.0 ,	/*LastMonth Max kW Total	��1���������*/	
	md_tot_tm			int 							DEFAULT 0 ,		/*LastMonth Max kW Total Date and Time	��1�������������ʱ��*/
	
	md_t1					decimal(14, 3) 		DEFAULT 0.0 ,	/*LastMonth Max kW T1	��1���������T1*/	
	md_t1_tm			int 							DEFAULT 0 ,		/*LastMonth Max kW T1 Date and Time	��1���������T1����ʱ��*/
	md_t2					decimal(14, 3) 		DEFAULT 0.0 ,	/*LastMonth Max kW T2 ��1���������T2*/	
	md_t2_tm			int 							DEFAULT 0 ,		/*LastMonth Max kW T2 Date and Time	��1���������T2����ʱ��*/
	md_t3					decimal(14, 3) 		DEFAULT 0.0 ,	/*LastMonth Max kW T3	��1���������T1*/	
	md_t3_tm			int 							DEFAULT 0 ,		/*LastMonth Max kW T3 Date and Time	��1���������T3����ʱ��*/
	md_t4					decimal(14, 3) 		DEFAULT 0.0 ,	/*LastMonth Max kW T4	��1���������T1*/	
	md_t4_tm			int 							DEFAULT 0 ,		/*LastMonth Max kW T4 Date and Time	��1���������T4����ʱ��*/
	
	--Cumulative Demand
	cumdemand_tot	decimal(14, 3) 		DEFAULT 0.0 ,	/*Current Cum kW	��ǰ�ۼ����������*/	
	cumdemand_t1	decimal(14, 3) 		DEFAULT 0.0 ,	/*Current Cum kW T1	��ǰ�ۼ��������T1*/	
	cumdemand_t2	decimal(14, 3) 		DEFAULT 0.0 ,	/*Current Cum kW T2	��ǰ�ۼ��������T2*/	
	cumdemand_t3	decimal(14, 3) 		DEFAULT 0.0 ,	/*Current Cum kW T3	��ǰ�ۼ��������T3*/	
	cumdemand_t4	decimal(14, 3) 		DEFAULT 0.0 ,	/*Current Cum kW T4	��ǰ�ۼ��������T4*/
	
	reset_num			int 							DEFAULT 0 ,		/*Nos. of Reset ���ô���*/
	lastreset_dt	int 							DEFAULT 0 ,		/*Date of Last Reset �ϴ���������*/
	
)
grant select on  BillingReport2008 to public
create unique clustered index BillingReport2008index1
	on BillingReport2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


--���ȫ���ݱ�
--   '-------Create table �ͻ�˹̹���ȫ���ݱ�(SecurityReport2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'SecurityReport2008')
begin
create table SecurityReport2008
(
	rtu_id				int   					not null,
	mp_id					smallint   			not null,
	
	date					int							not null,
	time					int							not null,
	
	cons_id				varchar(64)					null,		/*Consumer Identification�ͻ����*/
	meter_id			varchar(32)					null,		/*Meter Serial No.������к�*/
	meter_type		varchar(32)					null,		/*Meter Type�������*/
	cur_date			int									null,		/*Current Date��������*/
	cur_time			int									null,		/*Current Time����ʱ��*/
	cur_season		int									null,		/*Current Season����*/
	
	IR_date				int									null,		/*Last IR Comm. Date and Time �ϴκ���ͨѶ���ں�ʱ��YYMMDD*/
	IR_time				int									null,		/*hhmmss*/
	IR_num				int						DEFAULT 0 ,		/*Nos. of Reset ���ô���*/		/*No. IR Comm. ����ͨѶ����*/
	
	md_date				int									null,		/*Last Demand Reset Date and Time ������һ�����õ����ں�ʱ��YYMMDD*/
	md_time				int									null,		/*hhmm*/
	md_num				int						DEFAULT 0 ,		/*No. Demand Reset �������ô���*/
	
	prog_date			int									null,		/*Last Programming Date and Time �ϴα༭���ں�ʱ��YYMMDD*/
	prog_time			int									null,		/*hhmmss*/
	
	outage_sdate	int									null,		/*Last Power Outage Date and Time �ϴ�ͣ�翪ʼ���ں�ʱ�� YYMMDD*/
	outage_stime	int									null,		/*hhmmss*/
	outage_edate	int									null,		/*Last Power Outage Date and Time �ϴ�ͣ��������ں�ʱ�� YYMMDD*/
	outage_etime	int									null,		/*hhmmss*/
	outage_num		int						DEFAULT 0 ,		/*No. of Power Outages ͣ�����*/	
)
grant select on  SecurityReport2008 to public
create unique clustered index SecurityReport2008index1
	on SecurityReport2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--�Ĵ������õ�֧��ϵͳ
--   '-------Create table ������Ϣ��(workform_support2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'workform_support2008')
begin
create table workform_support2008
(
	id					int							not null,
	formno			varchar(16)			not null,	/*�����(�ɸ��ݹ�˾Ҫ������)*/
	formstate		tinyint					null default(0),/*��״̬ 0=��ʼ�·� 1=�����˷��� 2=ִ����Ա��ִ��������� 3=���ͨ��ֵ���˻�ִ 4=����*/
	problemtype tinyint					null,		/*��������*/
	
	sendman			varchar(16)			not null,	/*������(�洢Ϊ�û��˺�)*/
	sendmantel	varchar(16)					null,	/*�����˵绰����*/
	sendymd			int							not null, /*��������*/
	sendhms			int									null, /*����ʱ��*/
	problemdesc	varchar(1024)				null,	/*��������*/
	
	fzman				varchar(16)					null, /*������(�洢Ϊ�û��˺�)*/
	fzmantel		varchar(16)					null, /*�����˵绰*/
	orderymd		int									null, /*�·���������*/
	orderhms		int									null, /*�·�����ʱ��*/
	planymd			int									null,	/*�ƻ��������*/
	orderremark	varchar(1024)				null, /*���������*/
	
	operman			varchar(16)					null, /*ִ����(�洢Ϊ�û��˺�)*/
	opermantel	varchar(16)					null,	/*ִ���˵绰����*/
	operymd			int									null, /*�������*/
	operhms			int									null, /*���ʱ��*/
	operremark	varchar(1024)				null, /*������*/
	
	reserve1		varchar(16)					null, /*�����ֶ�1*/
	reserve2		varchar(16)					null  /*�����ֶ�2*/	
	
	CONSTRAINT workform_support2008_index1 PRIMARY KEY (id)	
)
grant select on  workform_support2008 to public
end
go
-- ��ǽ���

--�Ĵ������õ�֧��ϵͳ
--   '-------Create table ����������(attach_file2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'attach_file2008')
begin
create table attach_file2008
(
	id				int							not null,	/*id*/	 
	formno		varchar(16)			not null,	/*�������(��workform_support��formnoһ��)*/

	filename 	varchar(64)			not	null,	/*�ļ���*/
	filetext			image   		not	null,	/*�ļ�����*/
	submitman varchar(16)			null	/*�����ύ��*/
	
	CONSTRAINT attach_file2008_index1 PRIMARY KEY (id)					
)
grant select on attach_file2008 to public
end
go
-- ��ǽ���


--��̩���ն�ͼƬ
--   '-------Create table �ն�ͼƬ��Ϣ��(rtuimg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'rtuimg2008')
begin
create table rtuimg2008
(
	rtu_id	int			   				not null,
	date	int							not null,
	time	int							not null,
	fid 	tinyint,
	ftype	tinyint,
	fcmd	tinyint,
	fsize	int,
	ftime	int,
	fdata	image
	)
grant select on  rtuimg2008 to public
create unique clustered index rtuimg2008index1
	on rtuimg2008(rtu_id,date,time)
end
go
-- ��ǽ���


--��̩����ѹ������Ԥ��
--   '-------Create table �ն˱�ѹ������Ԥ����Ϣ��(Fsyj200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'Fsyj200808')
begin
create table Fsyj200808
(
	rtu_id				int			   			not null,
	mp_id					smallint 				not null,
	date					int							not null,
	time					int							not null,
	temp_env			decimal(14, 3)	DEFAULT 0.0,/*�����¶�*/
	temp_oil			decimal(14, 3)	DEFAULT 0.0,/*�����¶�*/
	temp_winding	decimal(14, 3)	DEFAULT 0.0,/*�����¶�*/
	min_remain		int							DEFAULT 0,/*ʣ�లȫ����ʱ��-����*/

	)
grant select on  Fsyj200808 to public
create unique clustered index Fsyj200808index1
	on Fsyj200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���



----------------------������Ӧ�ÿ�ʼ ���ǹ���ҵ��ֲ���� �����ı���201610-------
--   '-------Create table ������ʵʱ�������ݱ�(JFRealFlow200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFRealFlow200808')
begin
create table JFRealFlow200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����	
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	


	--����
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	
	
	ll_ljll_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	ll_ljll_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFRealFlow200808 to public
create unique clustered index JFRealFlow200808index1
	on JFRealFlow200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table �����Ʒ����������ݱ�(JFMinFlow200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFMinFlow200808')
begin
create table JFMinFlow200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	


	--����
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	
	
	ll_ljll_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	ll_ljll_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFMinFlow200808 to public
create unique clustered index JFMinFlow200808index1
	on JFMinFlow200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���������������ݱ�(JFDayFlow200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFDayFlow200808')
begin
create table JFDayFlow200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	


	--����
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	
	
	ll_ljll_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	ll_ljll_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	
	ljsj_run		int							DEFAULT 0,			/*�ۻ�����ʱ��*/
	now_time		int							DEFAULT 0,			/*ʵʱʱ��*/
	st					int							DEFAULT 0,			/*״̬ST*/

	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFDayFlow200808 to public
create unique clustered index JFDayFlow200808index1
	on JFDayFlow200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ���������������ݱ�(JFMonFlow2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFMonFlow2008')
begin
create table JFMonFlow2008
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	


	--����
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	
	
	ll_ljll_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	ll_ljll_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_zx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	rl_ljrl_fx	decimal(14, 3) 		DEFAULT 0.0 ,	/*�����ۻ�����*/	
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFMonFlow2008 to public
create unique clustered index JFMonFlow2008index1
	on JFMonFlow2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���

--   '-------Create table ������ʵʱ˲ʱ�����ݱ�(JFRealSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFRealSsl200808')
begin
create table JFRealSsl200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����
	ssll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ssrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/
	--����
	ssll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ssrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/		
	
	wd1				decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�1*/
	wd2				decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�2*/
	sd1				decimal(14, 3) 	DEFAULT 0.0 ,	/*ʪ��1*/
	sd2				decimal(14, 3) 	DEFAULT 0.0 ,	/*ʪ��2*/
	yl1				decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��1*/
	yl2				decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��2*/
	pl				decimal(14, 3) 	DEFAULT 0.0 ,	/*Ƶ��*/
	md				decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/
	ls				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
	rh				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/		
	cy 				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/
	rgl 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ȹ���*/
--	dl 				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
--	dy 				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/
	
	td_cnt		int 						DEFAULT 0 	,	/*ͣ�����*/	
	td_tot		int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFRealSsl200808 to public
create unique clustered index JFRealSsl200808index1
	on JFRealSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table �����Ʒ���˲ʱ�����ݱ�(JFMinSsl200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'JFMinSsl200808')
begin
create table JFMinSsl200808
(
	rtu_id			int			   			not null,
	mp_id				smallint   			not null,
	date				int							not null,
	time				int							not null,
	
	--����
	ssll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ssrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ljll_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_zx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/
	--����
	ssll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ssrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*˲ʱ����*/	
	ljll_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	ljrl_fx			decimal(14, 3) 		DEFAULT 0.0 ,	/*�ۻ�����ʾֵ*/	
	
	wd1				decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�1*/
	wd2				decimal(14, 3) 	DEFAULT 0.0 ,	/*�¶�2*/
	sd1				decimal(14, 3) 	DEFAULT 0.0 ,	/*ʪ��1*/
	sd2				decimal(14, 3) 	DEFAULT 0.0 ,	/*ʪ��2*/
	yl1				decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��1*/
	yl2				decimal(14, 3) 	DEFAULT 0.0 ,	/*ѹ��2*/
	pl				decimal(14, 3) 	DEFAULT 0.0 ,	/*Ƶ��*/
	md				decimal(14, 3) 	DEFAULT 0.0 ,	/*�ܶ�*/
	ls				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
	rh				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/		
	cy 				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/
	rgl 			decimal(14, 3) 	DEFAULT 0.0 ,	/*�ȹ���*/
--	dl 				decimal(14, 3) 	DEFAULT 0.0 ,	/*����*/
--	dy 				decimal(14, 3) 	DEFAULT 0.0 ,	/*��ѹ*/
	
	td_cnt		int 						DEFAULT 0 	,	/*ͣ�����*/	
	td_tot		int 						DEFAULT 0 	,	/*ͣ���ۼ�ʱ��*/	
	
	reserve1		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�1*/	
	reserve2		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�2*/	
	reserve3		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�3*/	
	reserve4		decimal(14, 3) 	DEFAULT 0.0 ,	/*��չ�ֶ�4*/
	
	source			tinyint					DEFAULT 0			/*������Դ*/
)
grant select on  JFMinSsl200808 to public
create unique clustered index JFMinSsl200808index1
	on JFMinSsl200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���


----------------------������Ӧ�ý���--------------------------------------------





--̫������й�20170106
--   '-------Create table ר�����ʵʱ��ϵ������ݱ�(ZRealZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZRealZHBD200808')
begin
create table ZRealZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  ZRealZHBD200808 to public
create unique clustered index ZRealZHBD200808index1
	on ZRealZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר����������ϵ������ݱ�(ZMinZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMinZHBD200808')
begin
create table ZMinZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  ZMinZHBD200808 to public
create unique clustered index ZMinZHBD200808index1
	on ZMinZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר���������ϵ������ݱ�(ZDayZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZDayZHBD200808')
begin
create table ZDayZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  ZDayZHBD200808 to public
create unique clustered index ZDayZHBD200808index1
	on ZDayZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ר���������ϵ������ݱ�(ZMonZHBD2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'ZMonZHBD2008')
begin
create table ZMonZHBD2008
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  ZMonZHBD2008 to public
create unique clustered index ZMonZHBD2008index1
	on ZMonZHBD2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վʵʱ��ϵ������ݱ�BRealZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BRealZHBD200808')
begin
create table BRealZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  BRealZHBD200808 to public
create unique clustered index BRealZHBD200808index1
	on BRealZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ������ϵ������ݱ�BMinZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMinZHBD200808')
begin
create table BMinZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  BMinZHBD200808 to public
create unique clustered index BMinZHBD200808index1
	on BMinZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ����ϵ������ݱ�(BDayZHBD200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BDayZHBD200808')
begin
create table BDayZHBD200808
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  BDayZHBD200808 to public
create unique clustered index BDayZHBD200808index1
	on BDayZHBD200808(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table ���վ����ϵ������ݱ�(BMonZHBD2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'BMonZHBD2008')
begin
create table BMonZHBD2008
(
	rtu_id	int			   			not null,
	mp_id		smallint   			not null,
	date		int							not null,
	time		int							not null,
	
	bd_zhyg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й��ܵ���*/
	bd_zhyg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����1����*/
	bd_zhyg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����2����*/
	bd_zhyg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����3����*/
	bd_zhyg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����й�����4����*/
	
	bd_zhwg				decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹��ܵ���*/
	bd_zhwg_fl1		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����1����*/
	bd_zhwg_fl2		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����2����*/
	bd_zhwg_fl3		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����3����*/
	bd_zhwg_fl4		decimal(14, 3) 	DEFAULT 0.0 ,	/*	����޹�����4����*/
)
grant select on  BMonZHBD2008 to public
create unique clustered index BMonZHBD2008index1
	on BMonZHBD2008(rtu_id,mp_id,date,time)
end
go
-- ��ǽ���	

--   '-------Create table �ɼ�״̬�����ݱ�(cjstate2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'cjstate2008')
begin
create table cjstate2008
(
--	cons_id			int			   			not null,
	line_fzman_id		smallint				not	null,			/*��·������*/
	ymd							int							not null,
	app_type				tinyint					not null,			/*Ӧ������  0 ���վ 1 ר�� 2 ����   3 ��ѹ����   128 ����Ӧ�� */	
	paratotnum			int							 		null,     /*�������*/	
	totnum					int							 		null,
	realnum					int									null,
	rate						decimal(14, 6) 	DEFAULT 0.0 ,	/*�ɼ��ɹ���*/	
)
grant select on  cjstate2008 to public
create unique clustered index cjstate2008index1
	on cjstate2008(line_fzman_id, ymd, app_type)
end
go
-- ��ǽ���

--   '-------Create table �ն�ʱ�����ݱ�(rtutime2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'rtutime2008')
begin
create table rtutime2008
(
	rtu_id					int			   			not null,		/*�ն˱��*/
	oper_ym					int							not null,		/*��������*/
	rtu_time				int									null,		/*�ն�ʱ��*/
	sys_time				int									null,		/*ϵͳʱ��*/
)
grant select on  rtutime2008 to public
create unique clustered index rtutime2008index1
	on rtutime2008(rtu_id, oper_ym)
end
go
-- ��ǽ���

--	'-------Create table ������Ԥ���Ѽ�¼��(FmYff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'FmYff2008')
begin
create table FmYff2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	
--res_id				smallint						not null,			/*�ͻ����*/
	glo_resid				int										null,		/*�����û����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	--add 201406
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*//*����д������*/
	--end
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���*/
	
	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_ymd			int											null,			/*����ʱ��*/
	
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/

	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl	decimal(12,2)						null,			/*����׷���ۼ��õ���*/
	jt_total_dl		decimal(12,2)						null,			/*�����ۼ��õ���*/

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		
	alarm2				decimal(12,2)						null,			/*����ֵ2*/			

	buy_times			int											null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on FmYff2008 to public
create clustered index FmYff2008index1
	on FmYff2008(rtu_id,mp_id,op_date,op_time,op_type)	
create index FmYff2008index2 
	on FmYff2008(rtu_id,glo_resid,op_date,op_time,op_type)  
end
go
-- ��ǽ���


--	'-------Create table ������Ԥ���Ѽ�¼����(sysfmyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysfmyfrcd2008')
begin
create table sysfmyfrcd2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,	
	
--res_id				smallint						not null,			/*�ͻ����*/
	glo_resid				int										null,		/*�����û����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	--add 201406
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*//*����д������*/
	--end
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ���*/
	
	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_ymd			int											null,			/*����ʱ��*/
	
  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz			decimal(12,2)		  			null,			/*���ʱ�ܱ��*/

	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl	decimal(12,2)						null,			/*����׷���ۼ��õ���*/
	jt_total_dl		decimal(12,2)						null,			/*�����ۼ��õ���*/

	alarm1				decimal(12,2)						null,			/*����ֵ1*/		
	alarm2				decimal(12,2)						null,			/*����ֵ2*/			

	buy_times			int											null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	

	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ��ɹ���־*/
	checkpay_flag	tinyint									null			/*���˳ɹ���־*/
)
grant select on sysfmyfrcd2008 to public
create clustered index sysfmyfrcd2008index1
	on sysfmyfrcd2008(rtu_id,mp_id,op_date,op_time,op_type)	
create index sysfmyfrcd2008index2 
	on sysfmyfrcd2008(rtu_id,glo_resid,op_date,op_time,op_type)  
end
go
-- ��ǽ���


--	'-------Create table �����Ƹ��ɿ��Ƽ�¼��(FmFk2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'FmFk2008')
begin
create table FmFk2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,
	glo_resid			int											null,		/*�����û����*/
		
	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null
)
grant select on FmFk2008 to public
create unique clustered index FmFk2008index1
	on FmFk2008(rtu_id, mp_id, op_date, op_time)
create index FmFk2008index2 
	on FmFk2008(rtu_id,glo_resid,op_date,op_time)  
end
go
-- ��ǽ���



--	'-------Create table (sysfmcontrol2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysfmcontrol2008')
begin
create table sysfmcontrol2008
(
	rtu_id				int						  		not null,
	mp_id					smallint  					not null,
	glo_resid			int											null,		/*�����û����*/
		
	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null
)
grant select on sysfmcontrol2008 to public
create unique clustered index sysfmcontrol2008index1
	on sysfmcontrol2008(rtu_id,mp_id, op_date, op_time)
create index sysjcontrolindex2 
	on sysfmcontrol2008(rtu_id,glo_resid,op_date,op_time)  	
end
go
-- ��ǽ���


--   '-------Create table �����Ʒ��е��������ݱ�(FmFxMoney2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'FmFxMoney2008')
begin
create table FmFxMoney2008
(
	rtu_id						int							  not null,
	mp_id							smallint				  not null,					/*zjg_id mp_id*/
	fxdf_ym						int								not null, 				/*���е������*/
--data_type					tinyint						not null, 				/*�������� 0 ���е�� 1 �����л�*/
		
	cons_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  fxdf_mdhmi				int										null,					/*���е�����ʱ��-MMDDHHMI*/
  fxdf_lastym				int										null,					/*�ϴε������*/

	iall_money				decimal(12,2)		  		null,					/*���½ɷ��ܽ��*/
	last_remain				decimal(12,2)		  		null,					/*�ϴ�ʣ��*/
	
	now_remain				decimal(12,2)		  		null,					/*��ǰʣ��*/
	
	jt_total_zbdl			decimal(12,2)		  		null,					/*����׷���ۼ��õ���*/
	jt_total_dl				decimal(12,2)		  		null,					/*�����ۼ��õ���*/

	df_money					decimal(12,2)		  not null,					/*��ѽ��*/
	  	                                    
	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	
 	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
	jsbd_zyz					decimal(12,2)		  		null,					/*�ϴν����ܱ��*/
	 
  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz					decimal(12,2)		  		null,					/*���ʱ�ܱ��*/
	
	update_count			int										null,					/*���´���*/

  all_monthf				tinyint								null,					/*���±�־*/
	bc_flag						tinyint					  		null, 				/*���㲹����*/
	bc_date						int							  		null,					/*���㲹������*/
	bc_time						int							  		null,					/*���㲹��ʱ��*/
	op_man						varchar(64)			  		null,					/*����Ա*/	
)
grant select on  FmFxMoney2008 to public
create unique clustered index FmFxMoney2008index1
	on FmFxMoney2008(rtu_id,mp_id,fxdf_ym)
end
go
-- ��ǽ���


--   '-------Create table �����ƽ��������¼(FmJtReset2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'FmJtReset2008')
begin
create table FmJtReset2008
(
	rtu_id						int							  not null,
	mp_id							smallint				  not null,					/*zjg_id mp_id*/
	date							int								not null, 				/*���е������*/
		
	cons_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  jtreset_mdhmi			int										null,					/*����ִ��ʱ��-MMDDHHMI*/
  jtreset_lastymd		int										null,					/*�ϴ���������*/

	jt_total_zbdl			decimal(12,2)		  		null,					/*����׷���ۼ��õ���*/
	jt_total_dl				decimal(12,2)		  		null,					/*�����ۼ��õ���*/
			                                    
	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	
	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
	jsbd_zyz					decimal(12,2)		  		null,					/*�ϴν����ܱ��*/

  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	calc_zyz					decimal(12,2)		  		null,					/*���ʱ�ܱ��*/

	op_man						varchar(64)			  		null,					/*����Ա*/	
)                                     
grant select on  FmJtReset2008 to public
create unique clustered index FmJtReset2008index1
	on FmJtReset2008(rtu_id,mp_id,date)
end
go
-- ��ǽ���


--	'-------Create table ���ʸ��ļ�¼��(FmFeeRateChg2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'FmFeeRateChg2008')
begin
create table FmFeeRateChg2008
(
	rtu_id						int						  		not null,
	mp_id							smallint  					not null,
	glo_resid					int									not null,					/*�ͻ����*/

	op_date						int									not null,
	op_time						int									not null,
	
	op_man						char(64)								null,					/*����Ա*/	

	/*�ɷ���*/
	old_id						smallint        				null,					/*���*/
	old_describe			varchar(64)     				null,					/*����*/
	old_meter_type		tinyint									null,					
	/*add*/
	old_fee_type			tinyint									null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/
	
	/*������*/
	old_rated_z				decimal(12,6)			  		null,					/*�ܷ���*/
	
	/*���ݵ��*/
	old_ratej_type 		tinyint									null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	old_ratej_num 		tinyint									null,					/*���ݵ����*/
			
	old_ratej_r1			decimal(12,6)   				null,					/*���ݷ���1*/
	old_ratej_r2			decimal(12,6)			  		null,					/*���ݷ���2*/	
	old_ratej_r3			decimal(12,6)  					null,					/*���ݷ���3*/
	old_ratej_r4			decimal(12,6)   				null,					/*���ݷ���4*/
		
	old_ratej_td1			decimal(12,6)						null,					/*�����ݶ�ֵ1*/
	old_ratej_td2			decimal(12,6)						null,					/*�����ݶ�ֵ2*/
	old_ratej_td3			decimal(12,6)						null,					/*�����ݶ�ֵ3*/
	
	/*�·���*/
	new_id							smallint        			null,					/*���*/
	new_describe				varchar(64)     			null,					/*����*/
	new_meter_type			tinyint								null,
	new_fee_type				tinyint								null,					/*����*/ /*1������ 2������ 3��Ϸ��� 4����*/
	
	/*������*/
	new_rated_z					decimal(12,6)			  	null,					/*�ܷ���*/
	
	/*���ݵ��*/
	new_ratej_type 			tinyint								null,					/*���ݵ������ 	0 ��ȷ���, 1�¶ȷ���	2�¶ȷ��/���ݻ��*/
	new_ratej_num 			tinyint								null,					/*���ݵ����*/	
	                                        	
	new_ratej_r1				decimal(12,6)   			null,					/*���ݷ���1*/
	new_ratej_r2				decimal(12,6)			  	null,					/*���ݷ���2*/	
	new_ratej_r3				decimal(12,6)  				null,					/*���ݷ���3*/
	new_ratej_r4				decimal(12,6)   			null,					/*���ݷ���4*/

	new_ratej_td1				decimal(12,6)					null,					/*�����ݶ�ֵ1*/
	new_ratej_td2				decimal(12,6)					null,					/*�����ݶ�ֵ2*/
	new_ratej_td3				decimal(12,6)					null,					/*�����ݶ�ֵ3*/
	
	reserve1		 				int										null,
	reserve2		 				int										null		
)
grant select on FmFeeRateChg2008 to public
create unique clustered index FmFeeRateChg2008index1
	on FmFeeRateChg2008(rtu_id, mp_id, op_date, op_time)
end
go
-- ��ǽ���

--	'-------Create table ������ӿڽɷѼ�¼��(order_rcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'order_rcd2008')
begin
create table order_rcd2008
(
	wasteno						varchar(32)					not	null,			/*��ˮ��*/	

	create_ymd				int       	        not null,     /*��������*/
	create_hms				int       	        not null,     /*����ʱ��*/
	
	userid						int									not null,			/*�û�id*
	glo_resno					varchar(32)					not	null,			/*�ӿڱ�Ż���*/
	cons_desc					varchar(128)						null,			/*�û�����*/

	org_no						varchar(32)							null,			/*Ӫҵ�������*/

	charge_id					varchar(16)							null,			/*�շ���Ա/POS�����*/
	charge_name				varchar(64)							null,			/*�շ�Ա����*/

	pay_money					int									not	null,			/*�ɷѽ�λΪ��*/
	pay_flag					tinyint									null,			/*�ɷѳ�����־ 2�ɷ�,  5����*/

	success_flag			tinyint            			 null default 0,    /*֧���ɹ���־�� 1 δ֧��  2 ��֧��*/

	--������Ϣ
	source_type				tinyint              		 null,    /*��ֵ��Դ 1 ֧���� 2 ΢�� 3 ���� 4 �ڲ��ɷ� 9 ת��*/
	trade_no					varchar(32)              null,    /*�����ţ�΢�Ŷ�����transaction_id��֧�������׺�trade_no��*/
  pay_ymd           int       	         		 null,    /*������� ΢��gmt_create��֧�����ṩ time_end*/
  pay_hms           int       	         		 null,    /*���ʱ�� ΢�Ż�֧�����ṩ*/
  buyer_info				varchar(64)              null,    /*�ͻ���Ϣ ΢��openid ֧���� buyer_email*/

  --��Ʊ��� ��ʱ����
	printinvoice_f				tinyint            	not null default 1,    /*��ӡ��Ʊ��־ 1 δ��ӡ 2 �Ѵ�ӡ*/
	print_ymd						int											 null, 		/*��ӡ����*/
	print_hms						int											 null, 		/*��ӡʱ��*/
	print_man						varchar(32)           	 null,    /*��ӡ����Ա*/
	voice_no						varchar(16)							 null, 		/*��Ʊ���*/

	reconciliation		tinyint              not null ,    /*���˱�־ 1 δ���� 2 ���˵��к��б���¼ 3 ����¼���ݿ����У�excel���� */
																											 /* 4 ����¼���ݿ����ޣ�execl���У�����excel�����ɼ�¼*/
	reconciliymd			int											 null,		/*��������*/
	
	settlement				tinyint							 not null,		/*�����־ 1 δ���� 2 �ѽ���*/
	settleymd					int											 null,		/*��������*/
   
	reserve1					int											null,			/*��չ�ֶ�*/
	reserve2					int											null,			/*��չ�ֶ�*/
)
grant select on order_rcd2008 to public
create clustered index order_rcd2008index1	on order_rcd2008(wasteno)  
create index order_rcd2008index2 		on order_rcd2008(glo_resno, create_ymd, create_hms)  
create index order_rcd2008index3 		on order_rcd2008(userid) 

end
go

--	'-------Create table ������ӿڽɷѼ�¼��(pubpay_order2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'pubpay_order2008')
begin
create table pubpay_order2008
(
	rtu_id						int									not null,			/*�ն˱��*/
	mp_id							smallint						not null,			/*�����*/

	wasteno						varchar(32)					not	null,			/*��ˮ��*/	
	meter_type				tinyint 						not null,			/*������� �������ֵ�2090*/

	userid						int									not null,			/*�û�id*/

	glo_resno					varchar(32)					not	null,			/*�ӿڱ�Ż���*/
	cons_desc					varchar(128)						null,			/*�û�����*/

	org_no						varchar(32)							null,			/*Ӫҵ�������*/

	create_ymd				int       	        not null,     /*��������*/
	create_hms				int       	        not null,     /*����ʱ��*/

	charge_id					varchar(16)							null,			/*�շ���Ա/POS�����*/
	charge_name				varchar(64)							null,			/*�շ�Ա����*/
	
	pay_money					int									not	null,			/*�ɷѽ�λΪ��*/
	pay_flag					tinyint									null,			/*�ɷѳ�����־ 2�ɷ�,  5����*/

	success_flag			tinyint            			 null default 0,    /*֧���ɹ���־�� 1 δ֧��  2 ��֧��*/

	--������Ϣ
--	source_type				tinyint              		 null,    /*��ֵ��Դ 1 ֧���� 2 ΢�� 3 ���� 4 �ڲ��ɷ� 9 ת��*/
--	trade_no					varchar(32)              null,    /*�����ţ�΢�Ŷ�����transaction_id��֧�������׺�trade_no��*/
--  pay_ymd           int       	         		 null,    /*������� ΢��gmt_create��֧�����ṩ time_end*/
--  pay_hms           int       	         		 null,    /*���ʱ�� ΢�Ż�֧�����ṩ*/
--  buyer_info				varchar(64)              null,    /*�ͻ���Ϣ ΢��openid ֧���� buyer_email*/

  --��Ʊ��� ��ʱ����
--	ptinvoice_f					tinyint            	not null default 1,    /*��ӡ��Ʊ��־ 1 δ��ӡ 2 �Ѵ�ӡ*/
--	pt_ymd						int											 null, 		/*��ӡ����*/
--	pt_hms						int											 null, 		/*��ӡʱ��*/
--	pt_man						varchar(32)           	 null,    /*��ӡ����Ա*/
--	pvoice_no					varchar(16)							 null, 		/*��Ʊ���*/

--	reconciliation		tinyint              not null ,    /*���˱�־ 1 δ���� 2 ���˵��к��б���¼ 3 ����¼���ݿ����У�excel���� */
																											 /* 4 ����¼���ݿ����ޣ�execl���У�����excel�����ɼ�¼*/
--	reconciliymd			int											 null,		/*��������*/
	
--	settlement				tinyint							 not null,		/*�����־ 1 δ���� 2 �ѽ���*/
--	settleymd					int											 null,		/*��������*/
  
--  charge_source			varchar(16)							null,			/*�ɷ���Ϣ��Դ*/
   
	yffop_ymd					int											null,			/*Ԥ���ѽɷ�����*/	
	yffop_hms					int											null,			/*Ԥ���ѽɷ�ʱ��*/

	nowstate					int											null,			/*��ǰ״̬*/	-- 
	errtimes					int											null,			/*ʧ�ܴ���*/
	payinfo						varchar(64)							null,			/*�ɷ���Ϣ*/	--ʧ����Ϣ

	reserve1					int											null,			/*��չ�ֶ�*/
	reserve2					int											null,			/*��չ�ֶ�*/
)
grant select on pubpay_order2008 to public
create clustered index pubpay_order2008index1	on pubpay_order2008(wasteno, meter_type)	
create index pubpay_order2008index2 					on pubpay_order2008(rtu_id, mp_id, create_ymd, create_hms)  
create index pubpay_order2008index3 					on pubpay_order2008(userid)   

end
go
-- ��ǽ���

--	'-------Create table ��ҵ�Ѽ�¼��(PropYff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'PropYff2008')
begin
create table PropYff2008
(
	glo_resid			int									not	null,			/*�����û����*/
	glo_resno			varchar(32)							null,			/*�����û�����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)					not null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)				not null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)				not null,			/*�ܽ��*/

	buymons				int									not null, 		/**/
	property_ym		int									not null,			/*��ҵ�ѽɷ���ֹ����*/
	buy_times			int									not null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
)
grant select on PropYff2008 to public
create clustered index PropYff2008index1
	on PropYff2008(glo_resid,op_date,op_time)	
end
go
-- ��ǽ���


--	'-------Create table ��ҵ�Ѽ�¼��(sysfmPpyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysfmPpyfrcd2008')
begin
create table sysfmPpyfrcd2008
(
	glo_resid			int									not	null,			/*�����û����*/
	glo_resno			varchar(32)							null,			/*�����û�����*/
	res_desc			char(64)								null,			/*�ͻ�����*/

	op_man				char(64)						not null,			/*����Ա*/	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/

	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/

	wasteno				varchar(32)					not null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	

	pay_money			decimal(12,2)				not null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)				not null,			/*�ܽ��*/

	buymons				int									not null, 		/**/
	property_ym		int									not null,			/*��ҵ�ѽɷ���ֹ����*/
	buy_times			int									not null,			/*�������*/		

	cur_feeproj		smallint								null,			/*��ǰ���ʺ�*/

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
)
grant select on sysfmPpyfrcd2008 to public
create clustered index sysfmPpyfrcd2008index1
	on sysfmPpyfrcd2008(glo_resid,op_date,op_time)	

end
go
-- ��ǽ���


--	'-------Create table app��Ϣ���ͼ�¼��(appsendmessage2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'appsendmessage200808')
begin
create table appsendmessage200808
(
	glo_resid			int									not null,			/*�����û����*/
	meter_type		tinyint 						not null,			/*������� �������ֵ�2090*/

	glo_resno			varchar(32)							null,			/*�����û�����*/

	messtype			tinyint							not null,			/*��Ϣ���͹���  0 ������Ϣ�� 1 �㲥��Ϣ*/
	create_ymd		int       	        not null,     /*��������*/
	create_hms		int       	        not null,     /*����ʱ��*/
	content				varchar(512)        not null,     /*��Ϣ����*/

	nowstate			tinyint							not null			/*��ǰ״̬ 0��ʼ̬, 1 ������*/
)
grant select on appsendmessage200808 to public
create clustered index appsendmessage200808index1
	on appsendmessage200808(glo_resid,create_ymd,create_hms)	

end
go
-- ��ǽ���



--	'-------Create table ȫ��ר��Ԥ���Ѽ�¼��(Gyff2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'Gyff2008')
begin
create table Gyff2008
(
	glospecid			int									not null,					/*ȫ��ID*/

	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ����  */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/

	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	jsbd_ymd			int											null,			/*����ʱ��*/

  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  

	real_powrate	decimal(12,2)						null,			/*ʵ�ʹ�������*/
	ele_money		  decimal(12,2)						null,			/*��ȵ��*/
	jbf_money		  decimal(12,2)						null,			/*�����ѵ��*/
	powrate_money	decimal(12,2)						null,			/*�������*/
	other_money		decimal(12,2)						null,			/*�������*/
	
	now_remain		decimal(12,2)		  			null,			/*��ǰʣ��*/
	total_gdz			decimal(12,2)		  			null,			/*�ۼƹ���ֵ*/
	
	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/

	zbele_money	  decimal(12,2)						null,			/*׷����ȵ��*/
	zbjbf_money	  decimal(12,2)						null,			/*׷�������ѵ��*/
	zbother_money	decimal(12,2)						null,			/*׷���������*/
	buy_times			int											null,			/*�������*/
	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/	

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
	
	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ���־*/
	checkpay_flag	tinyint									null			/*186�ϴ��ɹ���־*/
)
grant select on Gyff2008 to public
create clustered index Gyff2008index1
	on Gyff2008(glospecid,op_date,op_time)	
end
go
-- ��ǽ���


--	'-------Create table ȫ��ר��Ԥ���Ѽ�¼���ݱ�(sysgyfrcd2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysgyfrcd2008')
begin
create table sysgyfrcd2008
(
	glospecid			int									not null,					/*ȫ��ID*/

	op_man				varchar(64)					not null,			/*����Ա*/	
	op_type				tinyint							not null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ����  */	
	op_date				int									not null,			/*���β�������*/	
	op_time				int									not null,			/*���β���ʱ��*/
	
	pay_type			tinyint									null,			/*�ɷѷ�ʽ*/
	wasteno				varchar(32)							null,			/*��ˮ��*/	
	rewasteno			varchar(32)							null,			/*��������ˮ��*/	
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/	
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	jsbd_ymd			int											null,			/*����ʱ��*/

  calc_bdymd		int										 	null,			/*��ѱ��ʱ��-YYYYMMDD*/              		                  

	real_powrate	decimal(12,2)						null,			/*ʵ�ʹ�������*/
	ele_money		  decimal(12,2)						null,			/*��ȵ��*/
	jbf_money		  decimal(12,2)						null,			/*�����ѵ��*/
	powrate_money	decimal(12,2)						null,			/*�������*/
	other_money		decimal(12,2)						null,			/*�������*/
	
	now_remain		decimal(12,2)		  			null,			/*��ǰʣ��*/
	total_gdz			decimal(12,2)		  			null,			/*�ۼƹ���ֵ*/
	
	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/

	zbele_money	  decimal(12,2)						null,			/*׷����ȵ��*/
	zbjbf_money	  decimal(12,2)						null,			/*׷�������ѵ��*/
	zbother_money	decimal(12,2)						null,			/*׷���������*/

	buy_times			int											null,			/*�������*/

	op_result			tinyint									null,			/*������� 0:δ�ɹ� 1:д���ɹ� 2:Զ�����óɹ� 3:��վ�����ɹ� 4:��ʱ������ 5:���ڲ��� 6:ʧ��*/	

	visible_flag	tinyint									null,			/*�Ƿ���ʾ*/	
	
	sg186_ysdw		varchar(20)							null,			/*186Ӧ�յ�λ��ʶ*/	
	up186_flag		tinyint									null,			/*186�ϴ���־*/
	checkpay_flag	tinyint									null			/*186�ϴ��ɹ���־*/
)
grant select on sysgyfrcd2008 to public
create clustered index sysgyfrcd2008index1
	on sysgyfrcd2008(glospecid,op_date,op_time)
end
go
-- ��ǽ���

--	'-------Create table ȫ��ר�为�ɿ��Ƽ�¼��(GFk2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'GFk2008')
begin
create table GFk2008
(
	glospecid			int									not null,					/*ȫ��ID*/
	ctrl_id				smallint	    			not null,				/*�ִ����0-7*/
	rtu_id				int						  		not null,
	poll_id				smallint  					not null,

	op_date				int									not null,
	op_time				int									not null,
	
	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/
	
	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/
	
	reserve1		  int											null,
	reserve2		  int											null		
)
grant select on GFk2008 to public
create index GFk2008index1
	on GFk2008(rtu_id, poll_id, op_date, op_time)
create index GFk2008index2
	on GFk2008(glospecid, ctrl_id, op_date, op_time)	
end
go
-- ��ǽ���


--	'-------Create table (sysgcontrol2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'sysgcontrol2008')
begin
create table sysgcontrol2008
(
	glospecid			int									not null,					/*ȫ��ID*/
	ctrl_id				smallint	    			not null,				/*�ִ����0-7*/
	rtu_id				int						  		not null,
	poll_id				smallint  					not null,
	
	op_date				int									not null,
	op_time				int									not null,

	op_man				char(64)								null,			/*����Ա*/	
	op_type				tinyint									null,			/*��������*/

	shuttime			int											null,			/*�ϵ�ʱ�䳤��*/	

	op_result			tinyint				default 0 null,			/*�������*/

	reserve1		  int											null,
	reserve2		  int											null		
)
grant select on sysgcontrol2008 to public
create index sysgcontrol2008index1
	on sysgcontrol2008(rtu_id, poll_id, op_date, op_time)
create index sysgcontrol2008index2
	on sysgcontrol2008(glospecid, ctrl_id, op_date, op_time)	
end	
go
-- ��ǽ���

--   '-------Create table ȫ��ר�䷢�е��������ݱ�(GspecFxMoney2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'GspecFxMoney2008')
begin
create table GspecFxMoney2008
(
	glospecid			int									not null,					/*ȫ��ID*/
	fxdf_ym						int								not null, 				/*���е������*/
	bus_no						varchar(64)			  not null,					/*�ͻ���� ���񻧺�*/
  
  fxdf_mdhmi				int										null,					/*���е�����ʱ��-MMDDHHMI*/
  fxdf_lastym				int										null,					/*�ϴε������*/

	iall_money				decimal(12,2)		  		null,					/*���½ɷ��ܽ��*/

	last_remain				decimal(12,2)		  		null,					/*�ϴ�ʣ��*/
	now_remain				decimal(12,2)		  		null,					/*��ǰʣ��*/

	df_money					decimal(12,2)		  not null,					/*��ѽ��*/

	real_powrate			decimal(12,2)		  		null,					/*ʵ�ʹ�������*/
	ele_money					decimal(12,2)		  		null,					/*��ȵ��*/
	jbf_money					decimal(12,2)		  		null,					/*�����ѵ��*/
	powrate_money			decimal(12,2)		  		null,					/*�������*/
	other_money				decimal(12,2)					null,					/*�������*/

	total_yzbdl				decimal(12,2)		  		null,					/*�й�׷���ۼ��õ���*/
	total_wzbdl				decimal(12,2)		  		null,					/*�޹�׷���ۼ��õ���*/
	total_ydl					decimal(12,2)		  		null,					/*�й��ۼ��õ���*/
	total_wdl					decimal(12,2)		  		null,					/*�޹��ۼ��õ���*/

 	zbele_money	  		decimal(12,2)					null,					/*׷����ȵ��*/
	zbjbf_money	  		decimal(12,2)					null,					/*׷�������ѵ��*/
	zbother_money			decimal(12,2)					null,					/*׷���������*/

	shutdown_val			decimal(12,2)		  		null,					/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	

 	jsbd_ymd					int										null,					/*�ϴν���ʱ��*/
  calc_bdymd				int										null,					/*��ѱ��ʱ��-YYYYMMDD*/              		                  
	update_count			int										null,					/*���´���*/
  all_monthf				tinyint								null,					/*���±�־*/
	bc_flag						tinyint					  		null, 				/*���㲹����*/
	bc_date						int							  		null,					/*���㲹������*/
	bc_time						int							  		null,					/*���㲹��ʱ��*/
	op_man						varchar(64)			  		null,					/*����Ա*/	
)
grant select on  GspecFxMoney2008 to public
create unique clustered index GFxMoney2008index1
	on GspecFxMoney2008(glospecid,fxdf_ym)
end
go
-- ��ǽ���

--   '-------Create table ȫ��ר�䷢�е��������ݱ�(GspecItemFx2008) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'GspecItemFx2008')
begin
create table GspecItemFx2008
(
	glospecid			int									not null,			/*ȫ��ID*/
	item_id				smallint	    			not null,			/*�ܼ�����0-7*/
	fxdf_ym				int									not null, 		/*���е������*/

	cus_state			tinyint									null,			/*�û�״̬ 0 ��ʼ̬, 1 ����̬, 10 ����̬*/	

	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd_zwz			decimal(12,2)						null,			/*������1-�����޹��ܱ��*/

	jsbd_ymd			int											null,			/*����ʱ��*/

	calc_mdhmi		int											null,			/*���ʱ��-MMDDHHMI*/
	calc_bdymd		int											null,			/*��ѱ��ʱ��-YYYYMMDD*/	

	calc_zyz			decimal(12,2)						null,			/*������1-���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)						null,			/*������1-���ʱ����*/
	calc_zyf			decimal(12,2)						null,			/*������1-���ʱ����*/
	calc_zyp			decimal(12,2)						null,			/*������1-���ʱƽ���*/
	calc_zyg			decimal(12,2)						null,			/*������1-���ʱ�ȱ��*/
	calc_zwz			decimal(12,2)						null,			/*������1-����޹��ܱ��*/

	fz_zyz				decimal(12,2)						null,			/*������1-��բʱ�ܱ��*/

	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/
		
)
grant select on  GspecItemFx2008 to public
create unique clustered index GspecItemFx2008index1
	on GspecItemFx2008(glospecid,item_id, fxdf_ym)
end
go
-- ��ǽ���



--	'-------Create table ������Ԥ����״̬��(mppay_state200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'mppay_state200808')
begin
create table mppay_state200808
(
	rtu_id				int       					not null,			/*�ն˱��*/	
	mp_id					smallint 						not null,			/*��������*/
	ymd						int									not null,			

	cus_state			tinyint									null,			/*�û�״̬ 0 ��ʼ̬, 1 ����̬, 10 ����̬*/	

	op_type				tinyint									null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int											null,			/*���β�������*/	
	op_time				int											null,			/*���β���ʱ��*/	
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/
	all_money			decimal(12,2)						null,			/*�ܽ��*/
	
	--add 201406
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*//*����д������*/
	--end
	
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� */	
	shutdown_val2	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ����ģ���� */	
	
	jsbd_zyz			decimal(12,2)						null,			/*�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*�������*/
	jsbd_zyf			decimal(12,2)						null,			/*�������*/
	jsbd_zyp			decimal(12,2)						null,			/*����ƽ���*/
	jsbd_zyg			decimal(12,2)						null,			/*����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*��������1-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*��������1-�������*/
	jsbd1_zyf			decimal(12,2)						null,			/*��������1-�������*/
	jsbd1_zyp			decimal(12,2)						null,			/*��������1-����ƽ���*/
	jsbd1_zyg			decimal(12,2)						null,			/*��������1-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*��������2-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*��������2-�������*/
	jsbd2_zyf			decimal(12,2)						null,			/*��������2-�������*/
	jsbd2_zyp			decimal(12,2)						null,			/*��������2-����ƽ���*/
	jsbd2_zyg			decimal(12,2)						null,			/*��������2-����ȱ��*/

	jsbd_ymd			int											null,			/*����ʱ��*/
	buy_times			int											null,			/*�������*/

	calc_mdhmi		int											null,			/*���ʱ��-MMDDHHMI*/
	calc_bdymd		int											null,			/*��ѱ��ʱ��-YYYYMMDD*/	
	
	calc_zyz			decimal(12,2)						null,			/*���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)						null,			/*���ʱ����*/
	calc_zyf			decimal(12,2)						null,			/*���ʱ����*/
	calc_zyp			decimal(12,2)						null,			/*���ʱƽ���*/
	calc_zyg			decimal(12,2)						null,			/*���ʱ�ȱ��*/
	
	calc1_zyz			decimal(12,2)						null,			/*��������1-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)						null,			/*��������1-���ʱ����*/
	calc1_zyf			decimal(12,2)						null,			/*��������1-���ʱ����*/
	calc1_zyp			decimal(12,2)						null,			/*��������1-���ʱƽ���*/
	calc1_zyg			decimal(12,2)						null,			/*��������1-���ʱ�ȱ��*/
	
	calc2_zyz			decimal(12,2)						null,			/*��������2-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)						null,			/*��������2-���ʱ����*/
	calc2_zyf			decimal(12,2)						null,			/*��������2-���ʱ����*/
	calc2_zyp			decimal(12,2)						null,			/*��������2-���ʱƽ���*/
	calc2_zyg			decimal(12,2)						null,			/*��������2-���ʱ�ȱ��*/		
	
	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/
	now_remain2		decimal(12,2)						null,			/*��ǰʣ�� ����ģ����*/

	bj_bd					decimal(12,2)						null,			/*��������*/
	tz_bd					decimal(12,2)						null,			/*��բ����*/

	cs_al1_state	tinyint									null,			/*����1״̬  0:����״̬ 1:����״̬*/
	cs_al2_state	tinyint									null,			/*����2״̬  0:����״̬ 1:����״̬*/
	cs_fhz_state	tinyint									null,			/*�ֺ�բ״̬ 0:��բ״̬ 1:��բ״̬*/

	al1_mdhmi			int											null,			/*����1״̬�ı�ʱ��-MMDDHHMI*/
	al2_mdhmi			int											null,			/*����2״̬�ı�ʱ��-MMDDHHMI*/	
	fhz_mdhmi			int											null,			/*�ֺ�բ״̬�ı�ʱ��-MMDDHHMI*/

	fz_zyz				decimal(12,2)						null,			/*��բʱ�ܱ��*/
	fz1_zyz				decimal(12,2)						null,			/*��������1-��բʱ�ܱ��*/
	fz2_zyz				decimal(12,2)						null,			/*��������2-��բʱ�ܱ��*/

	yc_flag1			int											null,			/*�쳣��־1, �������� */
	yc_flag2			int											null,			/*�쳣��־2(��λ��־), ���ݴ��� 0λ:��բ����ּ����� 1λ:��׷��� 2λ:��׵�ת 3λ:��ʱ�������� 4λ:��ʱ�䲻�ɷ�*/
	yc_flag3			int											null,			/*�쳣��־3, ���� */

	hb_date				int											null,			/*�ϴλ�������*/
	hb_time				int											null,			/*�ϴλ���ʱ��*/	
	
	kh_date				int											null,			/*��������-YYYYMMDD*/
	xh_date				int											null,			/*��������-YYYYMMDD*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	jt_total_zbdl		decimal(12,2)					null,			/*����׷���ۼ��õ���*/
	jt_total_dl			decimal(12,2)					null,			/*�����ۼ��õ���*/
	jt_reset_ymd		int										null,			/*�����ϴ��Զ��л�����*/
	jt_reset_mdhmi	int										null,			/*�����л�ִ��ʱ��*/

	fxdf_iall_money		decimal(12,2)				null, 		/*���е�ѵ��½ɷ��ܽ��*/
	fxdf_iall_money2	decimal(12,2)				null, 		/*���е�ѵ��½ɷ��ܽ��2*/
	fxdf_remain				decimal(12,2)				null,			/*���е�Ѻ�ʣ����  		fxdf_after_remain*/
	fxdf_remain2			decimal(12,2)				null,			/*���е�Ѻ�ʣ����  		fxdf_after_remain ����ģ����*/

	fxdf_ym					int										null,			/*���е����������YYYYMM*/
	fxdf_data_ymd		int										null,			/*���е����������-YYYYMMDD*/
	fxdf_calc_mdhmi	int										null,			/*���е�����ʱ��-MMDDHHMI*/

	js_bc_ymd			int											null, 	  	/*���㲹������YYYYMMDD*/
	
	reserve1			int								   		null,	
	reserve2			int							   			null,	
	reserve3			decimal(12,2)			   		null,	
	reserve4			decimal(12,2)			  	 	null,	
)
grant select on mppay_state200808 to public
create clustered index mppay_state200808index1
	on mppay_state200808(rtu_id,mp_id,ymd)	
end
go
-- ��ǽ���


--	'-------Create table ������Ԥ���ѱ���״̬��(mppay_almstate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'mppay_almstate200808')
begin
create table mppay_almstate200808
(
	rtu_id				int       					not null,			/*�ն˱��*/	
	mp_id					smallint 						not null,			/*��������*/
	ymd						int									not null,			

	qr_al1_1_state 		tinyint							null,			/*����1-1ȷ��״̬(���ŷ�ʽ) ��6λ(���Դ���0~63) ��2λ(0:��ʼ̬ 1:�ɹ� 2:ʧ��)*/
	qr_al1_2_state 		tinyint							null,			/*����1-2ȷ��״̬(������ʽ)*/
	qr_al1_3_state 		tinyint							null,			/*����1-3ȷ��״̬(���÷�ʽ)*/	

	qr_al2_1_state 		tinyint							null,			/*����2-1ȷ��״̬(���ŷ�ʽ) ��6λ(���Դ���0~63) ��2λ(0:��ʼ̬ 1:�ɹ� 2:ʧ��)*/
	qr_al2_2_state 		tinyint							null,			/*����2-2ȷ��״̬(������ʽ)*/
	qr_al2_3_state 		tinyint							null,			/*����2-3ȷ��״̬(���÷�ʽ)*/	

	qr_fhz_state			tinyint							null,			/*�ֺ�բȷ��״̬*/
	qr_fhz_rf1_state	tinyint							null,			/*�ֺ�բȷ��״̬(����1)*/
	qr_fhz_rf2_state	tinyint							null,			/*�ֺ�բȷ��״̬(����2)*/
	
	qr_fz_times				tinyint							null,			/*��բ����*/
	qr_fz_rf1_times		tinyint							null,			/*��բ����(����1)*/
	qr_fz_rf2_times		tinyint							null,			/*��բ����(����2)*/
	
	qr_al1_1_mdhmi		int									null,			/*����1-1ȷ��״̬(���ŷ�ʽ) ����ʱ��*/
	qr_al1_2_mdhmi		int									null,			/*����1-2ȷ��״̬(������ʽ) ����ʱ��*/
	qr_al1_3_mdhmi		int									null,			/*����1-3ȷ��״̬(���÷�ʽ) ����ʱ��*/

	qr_al2_1_mdhmi		int									null,			/*����2-1ȷ��״̬(���ŷ�ʽ) ����ʱ��*/
	qr_al2_2_mdhmi		int									null,			/*����2-2ȷ��״̬(������ʽ) ����ʱ��*/
	qr_al2_3_mdhmi		int									null,			/*����2-3ȷ��״̬(���÷�ʽ) ����ʱ��*/

	qr_fhz_mdhmi			int									null,			/*�ֺ�բȷ��״̬ ����ʱ��*/
	qr_fhz_rf1_mdhmi	int									null,			/*�ֺ�բȷ��״̬ ����ʱ��(����1)*/
	qr_fhz_rf2_mdhmi	int									null,			/*�ֺ�բȷ��״̬ ����ʱ��(����2)*/
			
	cg_fhz_mdhmi			int									null,			/*�ɹ��ֺ�բʱ��-MMDDHHMI*/
	cg_fhz_rf1_mdhmi	int									null,			/*�ɹ��ֺ�բʱ��-MMDDHHMI(����1)*/
	cg_fhz_rf2_mdhmi	int									null,			/*�ɹ��ֺ�բʱ��-MMDDHHMI(����2)*/
		
	qr_al1_1_uuid			int									null,			/*����1-1ȷ��״̬(���ŷ�ʽ) UUID*/
	qr_al2_1_uuid			int									null,			/*����2-1ȷ��״̬(���ŷ�ʽ) UUID*/

	out_info					varchar(64)					null,			/*��Ϣ���*/
)
grant select on mppay_almstate200808 to public
create clustered index mppay_almstate200808index1
	on mppay_almstate200808(rtu_id,mp_id,ymd)	
end
go
-- ��ǽ���

--	'-------Create table �ܼ���Ԥ����״̬��(zjgpay_state200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'zjgpay_state200808')
begin
create table zjgpay_state200808
(
	rtu_id				int       					not null,			/*�ն˱��*/	
	zjg_id				smallint						not null,			/*�ܼ����*/
	ymd						int									not null,			
	
	cus_state			tinyint									null,			/*�û�״̬ 0 ��ʼ̬, 1 ����̬, 10 ����̬*/	

	op_type				tinyint									null,			/*���β������� 0 ��ʼ̬, 1 ����, 2 �ɷ�, 3 ����, 4 ��д��, 5 ����, 6 ����, 7 ������ 10 ���� */	
	op_date				int											null,			/*���β�������*/
	op_time				int											null,			/*���β���ʱ��*/
	
	pay_money			decimal(12,2)						null,			/*�ɷѽ��*/
	othjs_money		decimal(12,2)						null,			/*������(����ϵͳ)*/
	zb_money			decimal(12,2)						null,			/*׷�����*/	
	all_money			decimal(12,2)						null,			/*�ܽ��*/
	
	buy_dl				decimal(12,2)						null,			/*������*/
	pay_bmc				decimal(12,2)						null,			/*�����*/

	alarm_val1		decimal(12,2)						null,			/*����ֵ1*/		
	alarm_val2		decimal(12,2)						null,			/*����ֵ2*/		
		
	shutdown_val	decimal(12,2)						null,			/*�ϵ�ֵ ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
--shutdown_val2	decimal(12,2)						null,			/*�ϵ�ֵ2 ���Ʒ�ʱΪ:�ϵ��� ��׼Ʒ�ʱΪ:�ϵ�ֹ�� */
	
	jsbd_zyz			decimal(12,2)						null,			/*������1-�����ܱ��*/
	jsbd_zyj			decimal(12,2)						null,			/*������1-�������*/
	jsbd_zyf			decimal(12,2)						null,			/*������1-�������*/
	jsbd_zyp			decimal(12,2)						null,			/*������1-����ƽ���*/
	jsbd_zyg			decimal(12,2)						null,			/*������1-����ȱ��*/

	jsbd1_zyz			decimal(12,2)						null,			/*������2-�����ܱ��*/
	jsbd1_zyj			decimal(12,2)						null,			/*������2-�������*/
	jsbd1_zyf			decimal(12,2)						null,			/*������2-�������*/
	jsbd1_zyp			decimal(12,2)						null,			/*������2-����ƽ���*/
	jsbd1_zyg			decimal(12,2)						null,			/*������2-����ȱ��*/

	jsbd2_zyz			decimal(12,2)						null,			/*������3-�����ܱ��*/
	jsbd2_zyj			decimal(12,2)						null,			/*������3-�������*/
	jsbd2_zyf			decimal(12,2)						null,			/*������3-�������*/
	jsbd2_zyp			decimal(12,2)						null,			/*������3-����ƽ���*/
	jsbd2_zyg			decimal(12,2)						null,			/*������3-����ȱ��*/

	--20120723
	jsbd_zwz			decimal(12,2)						null,			/*������1-�����޹��ܱ��*/
	jsbd1_zwz			decimal(12,2)						null,			/*������2-�����޹��ܱ��*/
	jsbd2_zwz			decimal(12,2)						null,			/*������3-�����޹��ܱ��*/
	--end

	jsbd_ymd			int											null,			/*����ʱ��*/

	lsttw_money		decimal(12,6)						null,			/*�ϴε�β���*/
	nowtw_money		decimal(12,6)						null,			/*���ε�β���*/

	buy_times			int											null,			/*�������*/

	calc_mdhmi		int											null,			/*���ʱ��-MMDDHHMI*/
	calc_bdymd		int											null,			/*��ѱ��ʱ��-YYYYMMDD*/	
	
	calc_zyz			decimal(12,2)						null,			/*������1-���ʱ�ܱ��*/
	calc_zyj			decimal(12,2)						null,			/*������1-���ʱ����*/
	calc_zyf			decimal(12,2)						null,			/*������1-���ʱ����*/
	calc_zyp			decimal(12,2)						null,			/*������1-���ʱƽ���*/
	calc_zyg			decimal(12,2)						null,			/*������1-���ʱ�ȱ��*/

	calc1_zyz			decimal(12,2)						null,			/*������2-���ʱ�ܱ��*/
	calc1_zyj			decimal(12,2)						null,			/*������2-���ʱ����*/
	calc1_zyf			decimal(12,2)						null,			/*������2-���ʱ����*/
	calc1_zyp			decimal(12,2)						null,			/*������2-���ʱƽ���*/
	calc1_zyg			decimal(12,2)						null,			/*������2-���ʱ�ȱ��*/

	calc2_zyz			decimal(12,2)						null,			/*������3-���ʱ�ܱ��*/
	calc2_zyj			decimal(12,2)						null,			/*������3-���ʱ����*/
	calc2_zyf			decimal(12,2)						null,			/*������3-���ʱ����*/
	calc2_zyp			decimal(12,2)						null,			/*������3-���ʱƽ���*/
	calc2_zyg			decimal(12,2)						null,			/*������3-���ʱ�ȱ��*/		

	--20120723
	calc_zwz			decimal(12,2)						null,			/*������1-����޹��ܱ��*/
	calc1_zwz			decimal(12,2)						null,			/*������2-����޹��ܱ��*/
	calc2_zwz			decimal(12,2)						null,			/*������3-����޹��ܱ��*/

	real_powrate	decimal(12,2)						null,			/*ʵ�ʹ�������*/
	ele_money		  decimal(12,2)						null,			/*��ȵ��*/
	jbf_money		  decimal(12,2)						null,			/*�����ѵ��*/
	powrate_money	decimal(12,2)						null,			/*�������*/
	other_money		decimal(12,2)						null,			/*�������*/
	--end

	now_remain		decimal(12,2)						null,			/*��ǰʣ��*/

	bj_bd					decimal(12,2)						null,			/*��������*/
	tz_bd					decimal(12,2)						null,			/*��բ����*/

	cs_al1_state	tinyint									null,			/*����1״̬  0:����״̬ 1:����״̬*/
	cs_al2_state	tinyint									null,			/*����2״̬  0:����״̬ 1:����״̬*/
	cs_fhz_state	tinyint									null,			/*�ֺ�բ״̬ 0:��բ״̬ 1:��բ״̬*/

	al1_mdhmi			int											null,			/*����1״̬�ı�ʱ��-MMDDHHMI*/
	al2_mdhmi			int											null,			/*����2״̬�ı�ʱ��-MMDDHHMI*/	
	fhz_mdhmi			int											null,			/*�ֺ�բ״̬�ı�ʱ��-MMDDHHMI*/

	fz_zyz				decimal(12,2)						null,			/*������1-��բʱ�ܱ��*/
	fz1_zyz				decimal(12,2)						null,			/*������2-��բʱ�ܱ��*/
	fz2_zyz				decimal(12,2)						null,			/*������3-��բʱ�ܱ��*/		

	yc_flag1			int											null,			/*�쳣��־1, �������� */
	yc_flag2			int											null,			/*�쳣��־2(��λ��־), ���ݴ��� 0λ:��բ����ּ����� 1λ:��׷��� 2λ:��׵�ת 3λ:��ʱ�������� 4λ:��ʱ�䲻�ɷ�*/
	yc_flag3			int											null,			/*�쳣��־3, ���� */

	hb_date				int											null,			/*�ϴλ�������*/
	hb_time				int											null,			/*�ϴλ���ʱ��*/	

	kh_date				int											null,			/*��������-YYYYMMDD*/
	xh_date				int											null,			/*��������-YYYYMMDD*/

	total_gdz			decimal(12,2)						null,			/*�ۼƹ���ֵ*/

	--20120723
	total_yzbdl		decimal(12,2)						null,			/*�й�׷���ۼ��õ���*/
	total_wzbdl		decimal(12,2)						null,			/*�޹�׷���ۼ��õ���*/
	total_ydl			decimal(12,2)						null,			/*�й��ۼ��õ���*/
	total_wdl			decimal(12,2)						null,			/*�޹��ۼ��õ���*/

	zbele_money	  decimal(12,2)						null,			/*׷����ȵ��*/
	zbjbf_money	  decimal(12,2)						null,			/*׷�������ѵ��*/
	zbother_money	decimal(12,2)						null,			/*׷���������*/
	--end

	fxdf_iall_money		decimal(12,2)				null, 		/*���е�ѵ��½ɷ��ܽ��*/
	fxdf_remain				decimal(12,2)				null,			/*���е�Ѻ�ʣ����  		fxdf_after_remain*/

	fxdf_ym						int									null,			/*���е����������YYYYMM ���·���*/
	fxdf_data_ymd			int									null,			/*���е����������-YYYYMMDD ȡ���ʱ��*/
	fxdf_calc_mdhmi		int									null,			/*���е�����ʱ��-MMDDHHMI ���ʱ��*/

	js_bc_ymd					int									null, 	  /*���㲹������YYYYMMDD*/

	reserve1					int								  null,
)
grant select on zjgpay_state200808 to public
create clustered index zjgpay_state200808index1
	on zjgpay_state200808(rtu_id,zjg_id,ymd)	
end
go
-- ��ǽ���

--	'-------Create table �ܼ���Ԥ���ѱ���״̬��(zjgpay_almstate200808) on yddata-------'
-- ��ǿ�ʼ
if not exists (select * from sysobjects where name = 'zjgpay_almstate200808')
begin
create table zjgpay_almstate200808
(
	rtu_id				int       					not null,			/*�ն˱��*/	
	zjg_id				smallint						not null,			/*�ܼ����*/
	ymd						int									not null,			
	
	qr_al1_1_state tinyint								null,			/*����1-1ȷ��״̬(���ŷ�ʽ) ��6λ(���Դ���0~63) ��2λ(0:��ʼ̬ 1:�ɹ� 2:ʧ��)*/
	qr_al1_2_state tinyint								null,			/*����1-2ȷ��״̬(������ʽ)*/
	qr_al1_3_state tinyint								null,			/*����1-3ȷ��״̬(���÷�ʽ)*/	

	qr_al2_1_state tinyint								null,			/*����2-1ȷ��״̬(���ŷ�ʽ) ��6λ(���Դ���0~63) ��2λ(0:��ʼ̬ 1:�ɹ� 2:ʧ��)*/
	qr_al2_2_state tinyint								null,			/*����2-2ȷ��״̬(������ʽ)*/
	qr_al2_3_state tinyint								null,			/*����2-3ȷ��״̬(���÷�ʽ)*/	

	qr_fhz_state		tinyint								null,			/*�ֺ�բȷ��״̬*/
	qr_fz_times		tinyint									null,			/*��բ����*/
	
	qr_al1_1_mdhmi	int										null,			/*����1-1ȷ��״̬(���ŷ�ʽ) ����ʱ��*/
	qr_al1_2_mdhmi	int										null,			/*����1-2ȷ��״̬(������ʽ) ����ʱ��*/
	qr_al1_3_mdhmi	int										null,			/*����1-3ȷ��״̬(���÷�ʽ) ����ʱ��*/

	qr_al2_1_mdhmi	int										null,			/*����2-1ȷ��״̬(���ŷ�ʽ) ����ʱ��*/
	qr_al2_2_mdhmi	int										null,			/*����2-2ȷ��״̬(������ʽ) ����ʱ��*/
	qr_al2_3_mdhmi	int										null,			/*����2-3ȷ��״̬(���÷�ʽ) ����ʱ��*/

	qr_fhz_mdhmi		int										null,			/*�ֺ�բȷ��״̬ ����ʱ��*/
	cg_fhz_mdhmi		int										null,			/*�ɹ��ֺ�բʱ��-MMDDHHMI*/
	
	qr_al1_1_uuid		int										null,			/*����1-1ȷ��״̬(���ŷ�ʽ) UUID*/
	qr_al2_1_uuid		int										null,			/*����2-1ȷ��״̬(���ŷ�ʽ) UUID*/

	out_info			varchar(64)							null,			/*��Ϣ���*/
)
grant select on zjgpay_almstate200808 to public
create clustered index zjgpay_almstate200808index1
	on zjgpay_almstate200808(rtu_id,zjg_id,ymd)	
end
go
-- ��ǽ���

--�ĵ���󡾱�ǽ���������뻻��