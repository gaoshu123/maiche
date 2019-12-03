package com.gaoshu.Util;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

public class Code {
        public static boolean sendCode(String phonenumber,String yzm,int flag){
            DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4FtV5RANUbRdB8Tjpay5", "TYzLtZXgb7y9AIIS7Y6Yn6h1bt7yCu");
            IAcsClient client = new DefaultAcsClient(profile);
            CommonRequest request = new CommonRequest();
            request.setMethod(MethodType.POST);
            request.setDomain("dysmsapi.aliyuncs.com");
            request.setVersion("2017-05-25");
            request.setAction("SendSms");
            request.putQueryParameter("RegionId", "cn-hangzhou");
            request.putQueryParameter("PhoneNumbers", phonenumber);
            request.putQueryParameter("SignName", "高数");
            if(flag==1){//注册
                request.putQueryParameter("TemplateCode", "SMS_177550739");
            }else if(flag==2){//登录
                request.putQueryParameter("TemplateCode", "SMS_177540767");
            }
            request.putQueryParameter("TemplateParam", "{\"code\":\""+yzm+"\"}");
            boolean flag1=false;
            try {
                CommonResponse response = client.getCommonResponse(request);
                System.out.println(response.getData());
                if (response.getData().contains("OK")) {
                    flag1 = true;
                }
            } catch (ServerException e) {
                e.printStackTrace();
            } catch (ClientException e) {
                e.printStackTrace();
            }
                return flag1;
        }
    }

