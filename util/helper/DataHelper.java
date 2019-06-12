package com.example.itdev.izinzin.util.helper;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Environment;
import android.util.Log;

import com.example.itdev.izinzin.app.SaleApplication;
import com.example.itdev.izinzin.model.Partner;
import com.example.itdev.izinzin.pos.local.LocalProduct;
import com.example.itdev.izinzin.pos.local.LocalProductDao;
import com.example.itdev.izinzin.service.ApiUtils;
import com.example.itdev.izinzin.service.SOService;
import com.example.itdev.izinzin.service.response.ResponseChoice;
import com.example.itdev.izinzin.service.response.ResponseGroup;
import com.example.itdev.izinzin.service.response.ResponsePartner;
import com.example.itdev.izinzin.service.response.ResponseProduct;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class DataHelper {

    public static String getStoreNameById(String id) {
        String result = "không xác định";
        SharedPreferences pref = ConfigUtil.getInstance().getPreference();
        try {
            JSONArray listStorage = new JSONArray(pref.getString(ConstantKey.KEY_CONFIG_STORAGE, ConstantKey.VALUE_DEFAULT_ARRAY));
            for (int j = 0; j < listStorage.length(); j++) {
                JSONObject storage = new JSONObject(listStorage.get(j).toString());
                if (storage.get("id").toString().equals(id)) {
                    result = storage.get("name").toString();
                    return result;
                }
            }
        } catch (Exception e) {

        }

        return result;
    }

    public static void getUserGroupFromServer() {
        SOService mService;
        mService = ApiUtils.getSOService();
        Map<String, Object> params = new HashMap<>();
        params.put("base", UserUtil.getInstance().getUser().getShopPrefix());
        params.put("user", UserUtil.getInstance().getUser().getId());
        mService.getUserGroup(params).enqueue(new Callback<ArrayList<ResponseGroup>>() {
            @Override
            public void onResponse(Call<ArrayList<ResponseGroup>> call, Response<ArrayList<ResponseGroup>> response) {
                JSONArray answer = new JSONArray();
                if (response.isSuccessful()) {
                    for (int i = 0; i < response.body().size(); i++) {
                        answer.put(response.body().get(i).toString());
                    }
                    SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
                    editor.putString(ConstantKey.KEY_CONFIG_USER_GROUP, answer.toString());
                    editor.commit();
                } else {
                    int statusCode = response.code();
                }
            }

            @Override
            public void onFailure(Call<ArrayList<ResponseGroup>> call, Throwable t) {

            }
        });

    }

    public static void getStorageFromServer() {
        SOService mService;
        mService = ApiUtils.getSOService();
        Map<String, Object> params = new HashMap<>();
        params.put("base", UserUtil.getInstance().getUser().getShopPrefix());
        params.put("user", UserUtil.getInstance().getUser().getId());
        mService.getStorageShort(params).enqueue(new Callback<ArrayList<ResponseChoice>>() {
            @Override
            public void onResponse(Call<ArrayList<ResponseChoice>> call, Response<ArrayList<ResponseChoice>> response) {
                JSONArray answer = new JSONArray();
                if (response.isSuccessful()) {
                    for (int i = 0; i < response.body().size(); i++) {
                        answer.put(response.body().get(i).toString());
                    }
                    SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
                    editor.putString(ConstantKey.KEY_CONFIG_STORAGE, answer.toString());
                    editor.commit();
                } else {
                    int statusCode = response.code();
                }
            }

            @Override
            public void onFailure(Call<ArrayList<ResponseChoice>> call, Throwable t) {

            }
        });
    }

    public static void writeCustomerToFile() {
        SOService mService = ApiUtils.getSOService();
        Map<String, Object> params = new HashMap<>();
        params.put("base", UserUtil.getInstance().getUser().getShopPrefix());
        mService.getCustomer(params).enqueue(new Callback<ArrayList<ResponsePartner>>() {
            @Override
            public void onResponse(Call<ArrayList<ResponsePartner>> call, Response<ArrayList<ResponsePartner>> response) {
                if (response.isSuccessful()) {
                    Gson gson = new Gson();
                    String dataCustomer = gson.toJson(response.body());
                    writeCustomerToFile(dataCustomer);
                } else {
                    int statusCode = response.code();
                }
            }

            @Override
            public void onFailure(Call<ArrayList<ResponsePartner>> call, Throwable t) {

            }
        });
    }

    public static void writeCustomerToFile(String data) {
        File pathExternal = Environment.getExternalStorageDirectory();
        File directory = new File(pathExternal.getAbsolutePath() + "/sale/");
        directory.mkdir();
        File file = new File(directory, UserUtil.getInstance().getUser().getShopPrefix() + "customer.txt");
        try {
            FileOutputStream os = new FileOutputStream(file);
            os.write(data.getBytes());
            os.close();
        } catch (Exception e) {

        }
    }

    public static Partner getCustomerByKey(String id) {
        Partner partner = new Partner();
        partner.setId("0");
        File path = Environment.getExternalStorageDirectory();
        File directory = new File(path.getAbsolutePath() + "/sale/");
        File file = new File(directory, UserUtil.getInstance().getUser().getShopPrefix() + "customer.txt");
        StringBuilder text = new StringBuilder();
        try {
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            while ((line = br.readLine()) != null) {
                text.append(line);
                text.append('\n');
            }
            br.close();

            Gson gson = new Gson();
            TypeToken<List<ResponsePartner>> token = new TypeToken<List<ResponsePartner>>() {
            };
            List<ResponsePartner> listPartner = gson.fromJson(text.toString(), token.getType());
            for (int i = 0; i < listPartner.size(); i++) {
                if (listPartner.get(i).getId().equals(id)) {
                    partner.setId(listPartner.get(i).getId());
                    partner.setName(listPartner.get(i).getPartnerName());
                    partner.setCode(listPartner.get(i).getPartnerCode());
                    partner.setAddress(listPartner.get(i).getPartnerAddress());
                    partner.setPhone(listPartner.get(i).getPartnerPhone());
                    break;
                }
            }

        } catch (IOException e) {

        }
        return partner;
    }

    public static ArrayList<Partner> getLocalCustomer() {
        ArrayList<Partner> listCustomer = new ArrayList<>();
        File path = Environment.getExternalStorageDirectory();
        File directory = new File(path.getAbsolutePath() + "/sale/");
        File file = new File(directory, UserUtil.getInstance().getUser().getShopPrefix() + "customer.txt");
        StringBuilder text = new StringBuilder();
        try {
            BufferedReader br = new BufferedReader(new FileReader(file));
            String line;
            while ((line = br.readLine()) != null) {
                text.append(line);
                text.append('\n');
            }
            br.close();

            Gson gson = new Gson();
            TypeToken<List<ResponsePartner>> token = new TypeToken<List<ResponsePartner>>() {
            };
            List<ResponsePartner> listPartner = gson.fromJson(text.toString(), token.getType());
            for (int i = 0; i < listPartner.size(); i++) {
                Partner partner = new Partner();
                partner.setId(listPartner.get(i).getId());
                partner.setName(listPartner.get(i).getPartnerName());
                partner.setCode(listPartner.get(i).getPartnerCode());
                partner.setAddress(listPartner.get(i).getPartnerAddress());
                partner.setPhone(listPartner.get(i).getPartnerPhone());
                listCustomer.add(partner);
            }

        } catch (IOException e) {

        }
        Log.d("pokemon","pikachu == "+listCustomer.size());
        return listCustomer;
    }

    public static void getProductFromServerToDatabase() {
        SOService mService = ApiUtils.getSOService();
        final Map<String, Object> params = new HashMap<>();
        params.put("base", UserUtil.getInstance().getUser().getShopPrefix());
        params.put("user", UserUtil.getInstance().getUser().getId());
        mService.getProductAll(params).enqueue(new Callback<ArrayList<ResponseProduct>>() {
            @Override
            public void onResponse(Call<ArrayList<ResponseProduct>> call, Response<ArrayList<ResponseProduct>> response) {
                if (response.isSuccessful()) {
                    for (int i = 0; i < response.body().size(); i++) {
                        ResponseProduct item = response.body().get(i);
                        LocalProduct product = new LocalProduct();
                        product.setBase(UserUtil.getInstance().getUser().getShopPrefix());

                        product.setServerId(Long.parseLong(item.getId()));
                        product.setCode(item.getCode());
                        product.setName(item.getName());
                        product.setList(item.getList());
                        product.setQuantity(Integer.parseInt(item.getQuantity()));
                        product.setStatus(item.getStatus());
                        product.setNote(item.getNote());
                        product.setDeleted(item.getDeleted());

                        product.setPriceOrigin(Long.parseLong(item.getPriceOrigin()));
                        product.setPriceRetail(Long.parseLong(item.getPriceRetail()));
                        product.setPriceWholesale(Long.parseLong(item.getPriceWholesale()));

                        product.setUnit(item.getUnit());
                        product.setCategory(item.getCategory());
                        product.setManufacturer(item.getManufacture());
                        product.setSupplier(item.getSupplier());

                        String properties = "conversion-" + item.getPropertiesConversion() + "," + "property-" + item.getPropertiesProperty() + "," + "weight-" + item.getPropertiesWeight();
                        product.setProperties(properties);

                        product.setCreated(item.getCreated());
                        product.setUpdated(item.getUpdated());

                        product.setUnit(item.getUserInit());
                        product.setUserUpdate(item.getUserUpdate());

                        LocalProduct localProduct = SaleApplication.getInstance().getDaoSession().queryBuilder(LocalProduct.class)
                                .where(LocalProductDao.Properties.Base.eq(product.getBase()))
                                .where(LocalProductDao.Properties.ServerId.eq(product.getServerId()))
                                .unique();
                        if (localProduct != null) {
                            product.setId(localProduct.getId());
                            SaleApplication.getInstance().getDaoSession().update(product);
                        } else {
                            SaleApplication.getInstance().getDaoSession().insert(product);
                        }
                    }
                    SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
                    editor.putLong(ConstantKey.KEY_CONFIG_TIME_SYNC_PRODUCT, Calendar.getInstance().getTime().getTime());
                    editor.commit();

                    Intent intent = new Intent();
                    intent.setAction(ConstantKey.ACTION_SYNC_PRODUCT);
                    SaleApplication.getInstance().getApplicationContext().sendBroadcast(intent);

                } else {
                    int statusCode = response.code();
                }
            }

            @Override
            public void onFailure(Call<ArrayList<ResponseProduct>> call, Throwable t) {

            }
        });
    }

}
