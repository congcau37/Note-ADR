package com.example.itdev.izinzin.util.helper;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.concurrent.TimeUnit;
import java.util.Date;

public class Converter {

    public static String convertToDateMonthYear(String origin) {
        if (origin == null) {
            return "--:--:--";
        }
        Timestamp time;
        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
        try {
            time = Timestamp.valueOf(origin);
            return sdfDate.format(time);
        } catch (Exception e) {
            try {
                origin = origin + " 00:00:00";
                time = Timestamp.valueOf(origin);
                return sdfDate.format(time);
            } catch (Exception e1) {
                return origin;
            }
        }
    }

    public static String convertToTimeFull(String origin) {
        if (origin == null) {
            return "--:--:--";
        }
        Timestamp time;
        SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        try {
            time = Timestamp.valueOf(origin);
            return sdfDate.format(time);
        } catch (Exception e) {
            try {
                origin = origin + " 00:00:00";
                time = Timestamp.valueOf(origin);
                return sdfDate.format(time);
            } catch (Exception e1) {
                return origin;
            }
        }
    }

    public static String convertToCurrency(long number) {
        NumberFormat formatter = new DecimalFormat("###,###,###.##đ");
        return formatter.format(number);
    }

    public static String convertFloatPercent(float number) {
        NumberFormat formatter = new DecimalFormat("###.##");
        return formatter.format(number);
    }

    public static String convertFloatmoney(float number) {
        NumberFormat formatter = new DecimalFormat("###########");
        return formatter.format(number);
    }

    public static String convertToCurrency(float number) {
        NumberFormat formatter = new DecimalFormat("###,###,###.##đ");
        return formatter.format(number);
    }

    public static String convertGender(int num) {
        String gender = "";
        if (num == 0) {
            gender = "Nam";
        } else {
            gender = "Nữ";
        }
        return gender;
    }

    public static String convertTypeCustomer(int num) {
        String type = "";
        if (num == 0) {
            type = "Bảng giá buôn";
        } else {
            type = "Bảng giá lẻ";
        }
        return type;
    }

    public static Long convertMillisSecondToMinutes(Long second){
        Long minutes = TimeUnit.MILLISECONDS.toMinutes(second);
        return minutes;
    }

    public static Long convertMillisSecondToHours(Long second){

        Long hours = TimeUnit.MILLISECONDS.toHours(second);

        return hours;
    }

    public static Long convertMillisSeconndToDay(Long second){
        Long day = TimeUnit.MILLISECONDS.toDays(second);
        return day;
    }
    public static String convertToTimeFull(Date origin) {
        String target;
        if (origin == null) {
            target = "--:--:--";
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            target = sdf.format(origin);
        }
        return target;
    }

    public static String convertFromMillisecondToFullTimeServer(long origin) {
        String target;
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        target = formatter.format(new Date(origin));
        return target;
    }

    public static String convertFromMillisecondToFullTimeDisplay(long origin) {
        String target;
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        target = formatter.format(new Date(origin));
        return target;
    }

}
