package com.example.itdev.izinzin.util.helper;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.itdev.izinzin.app.SaleApplication;

public class ConfigUtil {

    private static ConfigUtil instance;
    private SharedPreferences preferences;

    private ConfigUtil() {
        preferences = SaleApplication.getInstance().getSharedPreferences("sale_preference", Context.MODE_PRIVATE);
    }

    public static ConfigUtil getInstance() {
        if (instance == null) {
            instance = new ConfigUtil();
        }
        return instance;
    }

    public SharedPreferences getPreference() {
        return preferences;
    }

}
