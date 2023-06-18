package com.cos.blog;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class XmlParsing_test {
    public static void main(String[] args) {
        int page = 1;	// 페이지 초기값
        try{
            while(true){
                // parsing할 url 지정(API 키 포함해서)
                String url = "https://apis.data.go.kr/1543061/animalShelterSrvc/shelterInfo?numOfRows=100&pageNo=2&serviceKey=x0c9gbUIV0jRFjCEL69f27edhSbjXX%2BScFm9ECjH9Szy3dfUc%2BO5wzu6245MfRw%2FJWtNeFC2OE5S6%2BgOaa14SQ%3D%3D";

                DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
                DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
                Document doc = dBuilder.parse(url);

                // root tag
                doc.getDocumentElement().normalize();
                System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

                // 파싱할 tag
                NodeList nList = doc.getElementsByTagName("item");
                System.out.println("파싱할 리스트 수 : "+ nList.getLength());

                for(int temp = 0; temp < nList.getLength(); temp++){
                    Node nNode = nList.item(temp);
                    if(nNode.getNodeType() == Node.ELEMENT_NODE){

                        Element eElement = (Element) nNode;
                        System.out.println("######################");
                       // System.out.println(eElement.getTextContent());
                        System.out.println("금융사  : " + getTagValue("lat", eElement));
                        System.out.println("상품 코드  : " + getTagValue("lng", eElement));
                        System.out.println("상품명 : " + getTagValue("careNm", eElement));
                    }	// for end

                }	// if end
                break;
                //page += 1;
                //System.out.println("page number : "+page);
//                if(page > 12){
//                    break;
//                }
            }	// while end

        } catch (Exception e){
            System.out.println(e.toString());
        }	// try~catch end
    }	// main end
    // tag값의 정보를 가져오는 메소드
    private static String getTagValue(String tag, Element eElement) {
        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
        Node nValue = (Node) nlList.item(0);
        if(nValue == null)
            return null;
        return nValue.getNodeValue();
    }

}
