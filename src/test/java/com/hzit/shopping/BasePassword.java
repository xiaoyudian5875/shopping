package com.hzit.shopping;

import java.nio.charset.StandardCharsets;
import java.util.Base64;


public class BasePassword {
    public static void main(String[] args) {
        String password="xiaofeng";
        //调用加密方法
        String jiami = BasePassword.jiami(password);
        //调用解密方法
        String jiemi = BasePassword.jiemi(jiami);
        System.out.println(password+"加密后为："+ jiami);
        System.out.println(jiami+"解密后为："+ jiemi);

    }
    /**
     * 加密
      * @param str 密码
     * @return
     */
public static String  jiami(String str) {
    String passsword = Base64.getEncoder().encodeToString(str.getBytes(StandardCharsets.UTF_8));
    return passsword;
}

    /**
     * 解密
     * @param passsword 加密码
     * @return
     */
    public static String  jiemi(String passsword){
        String s = new String(Base64.getDecoder().decode(passsword), StandardCharsets.UTF_8);
        return s;
    }
}


