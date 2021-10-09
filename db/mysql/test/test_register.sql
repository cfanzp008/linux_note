# IN `a_account` varchar(64),
# IN `a_nickname` varchar(64),
# IN `a_password` varchar(32),
# IN `a_platform` int,

# IN `a_icon` varchar(200),
# IN `a_sex` int,
# IN `a_device_type` varchar(60),
# IN `a_channel_id` int,

# IN `a_channel_token` varchar(200),
# IN `a_client_version` varchar(20)
#
# INSERT INTO account_info(
# account,nickname,`password`,platform,
# icon,sex,device_type,device_id,
# chennel_id,channel_token,client_version)
#SET @a_error_code=100;
#SET @a_error_msg='';
CALL register('t2','t2','123456',1,'http://www.baidu.com/imageurl',0,'PC','',0,'','127.0.0.1','1.0.0');
#SELECT @a_error_code,@a_error_msg;