package com.cos.blog;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Locale;


public class rtInfomartion {
    @ResponseBody
    @RequestMapping(value = "/rtInfomartion", method = RequestMethod.GET, produces = "application/text; charset=utf8")
    public String rtInfomartion(Locale locale, Model model) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("https://openapi.gg.go.kr/AbdmAnimalProtect?KEY=54db53d011584b4fa332bd07c35e08e4&Type=JSON&SIGUN_CD=41270");
//
//        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=54db53d011584b4fa332bd07c35e08e4");
//
//        urlBuilder.append("&" + URLEncoder.encode("busRouteId","UTF-8") + "=" + URLEncoder.encode("100100118", "UTF-8"));

        URL url = new URL(urlBuilder.toString());

        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

        conn.setRequestMethod("GET");

        conn.setRequestProperty("Content-type", "application/xml;charset=UTF-8");



        BufferedReader rd;

        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {

            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));

        } else {

            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));

        }

        StringBuilder sb = new StringBuilder();

        String line;

        while ((line = rd.readLine()) != null) {

            sb.append(line);

        }

        rd.close();

        conn.disconnect();

        return sb.toString();
    }
}