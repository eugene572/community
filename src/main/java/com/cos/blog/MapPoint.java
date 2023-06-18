package com.cos.blog;

public class MapPoint {
    private String Name; //대피소 이름
    private double  latitude; //위도
    private  double longitude; //경도

    public MapPoint() {
        super();
    }

    public  MapPoint(String Name, double latitude, double longitude) {
        this.Name = Name;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public String getName() { //대피소 이름
        return Name;
    }

    public void setName(String Name){
        this.Name = Name;
    }

    public double getLatitude() { //위도
        return latitude;
    }

    public  void setLatitude(double latitude){
        this.latitude = latitude;
    }

    public double getLongitude() { //경도
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}
