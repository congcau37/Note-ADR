package com.example.itdev.izinzin.service;

public class ApiUtils {

    public static final String BASE_URL = "http://192.168.1.2/sale/apiserver/book/";

    public static SOService getSOService() {
        return RetrofitClient.getClient(BASE_URL).create(SOService.class);
    }
}
