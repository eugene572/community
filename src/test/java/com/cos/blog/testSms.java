package com.cos.blog;


import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

import org.json.simple.JSONObject;
import org.junit.jupiter.api.Test;

import java.util.HashMap;

public class testSms {

    @Test
    public void testSend() {
//        String api_key = "NCSOKOQKD8Z8ZJ6Y";      //사이트에서 발급 받은 API KEY
//        String api_secret = "6BNZSOJUZBKBMXDFCWSQSEENGKM1GE3J";        //사이트에서 발급 받은 API SECRET KEY
        //Message coolsms = new Message(api_key, api_secret);

        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", "010-9417-8138");
        params.put("from", "01024168138");          //사전에 사이트에서 번호를 인증하고 등록하여야 함
        params.put("type", "SMS");
        params.put("text", "유진이 테스트");     //메시지 내용
        params.put("app_version", "test app 1.2");

//        try {
//            JSONObject obj = (JSONObject) coolsms.send(params);
//            System.out.println(obj.toString());   //전송 결과 출력
//        } catch (CoolsmsException e) {
//            System.out.println(e.getMessage());
//            System.out.println(e.getCode());
//        }
    }
}
