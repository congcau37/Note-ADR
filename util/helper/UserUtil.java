package com.example.itdev.izinzin.util.helper;

import android.content.SharedPreferences;

import com.example.itdev.izinzin.model.User;
import com.example.itdev.izinzin.service.response.ResponseUser;
import com.google.gson.Gson;

public class UserUtil {

    private static UserUtil instance;
    private User user;

    private UserUtil() {
    }

    public static UserUtil getInstance() {
        if (instance == null) {
            instance = new UserUtil();
        }
        return instance;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void saveUser(ResponseUser user) {
        SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
        Gson gsonUser = new Gson();
        String jsonUser = gsonUser.toJson(user);
        editor.putString(user.getShopDefine() + "_" + ConstantKey.KEY_CONFIG_USER, jsonUser);
        editor.commit();
    }

    public User getUserOffline(String shop) {
        User user = new User();
        user.setShopDefine(shop);
        try {
            SharedPreferences pref = ConfigUtil.getInstance().getPreference();
            Gson gson = new Gson();
            ResponseUser currentUser = gson.fromJson(pref.getString(user.getShopDefine() + "_" + ConstantKey.KEY_CONFIG_USER, ""), ResponseUser.class);
            user.setId(currentUser.getId());
            user.setUserName(currentUser.getUsername());
            user.setDisplayName(currentUser.getDisplayName());
            user.setStatus(currentUser.getShopStatus());
            user.setGroup(currentUser.getGroupId());
            user.setStore(currentUser.getStoreId());
            user.setAdmin(currentUser.getIsadmin());
            user.setShopStatus(currentUser.getShopStatus());
            user.setShopDate(currentUser.getShopDate());
            user.setShopPrefix(currentUser.getShopPrefix());
            user.setShopDefine(currentUser.getShopDefine());
            user.setShopName(currentUser.getShopName());
            user.setPermission(currentUser.getPermission());
        } catch (Exception e) {
            user = null;
        }
        return user;
    }

}
