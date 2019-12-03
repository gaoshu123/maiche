package com.gaoshu.Util;

public class CodeUtil {
    public static String getCode(){
        String yzm="";
        for(int i=1;i<=6;i++){
            yzm+=(int)Math.floor(Math.random()*10);
        }
        return yzm;
    }
}
