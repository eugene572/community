package com.cos.blog.service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

import java.util.HashMap;
import java.util.Random;

public class paymentService {

    //휴대폰번호 인증문자 보내기
    public static String PhoneNumberCheck(String to) throws CoolsmsException {
        String api_key = "NCSTNGWOBCZE2C8D";
        String api_secret = "ZWOZ5EKE9PKJRSU43DTHE39PBJ0XAJPV";
        Message coolsms = new Message(api_key, api_secret);


        Random rand = new Random();
        String numStr = "";
        for(int i=0; i<4; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr += ran;
        }

        System.out.println(numStr);

        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", to);    // 수신전화번호 (ajax로 view 화면에서 받아온 값으로 넘김)
        params.put("from", "01094178138");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
        params.put("type", "sms");
        params.put("text", "인증번호는 [" + numStr + "] 입니다.");

        coolsms.send(params); // 메시지 전송

        return numStr;

    }
}
