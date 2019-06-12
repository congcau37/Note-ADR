package com.example.itdev.izinzin.util.helper;

import android.content.SharedPreferences;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TimeHelper {

    private static TimeHelper instance;
    SimpleDateFormat simple;

    private TimeHelper() {
        simple = new SimpleDateFormat("dd/MM/yyyy");
    }

    public static TimeHelper getInstance() {
        if (instance == null) {
            instance = new TimeHelper();
        }
        return instance;
    }

    public TimeInterval getToday() {
        TimeInterval interval = new TimeInterval();
        Calendar calendar = Calendar.getInstance();
        String time = simple.format(calendar.getTime());
        interval.setStartTime(time);
        interval.setEndTime(time);
        interval.setType(0);
        return interval;
    }

    public TimeInterval getThisWeek() {
        TimeInterval interval = new TimeInterval();
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(Calendar.DAY_OF_WEEK) != Calendar.SUNDAY) {
            calendar.set(Calendar.DAY_OF_WEEK, calendar.getFirstDayOfWeek() + 1);
        } else {
            calendar.set(Calendar.DAY_OF_WEEK, calendar.getFirstDayOfWeek());
            calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) - 7 + 1);
        }
        interval.setStartTime(simple.format(calendar.getTime()));
        calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) + 7 - 1);
        interval.setEndTime(simple.format(calendar.getTime()));
        interval.setType(1);
        return interval;
    }

    public TimeInterval getThisMonth() {
        TimeInterval interval = new TimeInterval();
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
        interval.setStartTime(simple.format(calendar.getTime()));
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
        interval.setEndTime(simple.format(calendar.getTime()));
        interval.setType(2);
        return interval;
    }

    public TimeInterval get7Days() {
        TimeInterval interval = new TimeInterval();
        Calendar calendar = Calendar.getInstance();
        interval.setEndTime(simple.format(calendar.getTime()));
        calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) - 7 + 1);
        interval.setStartTime(simple.format(calendar.getTime()));
        interval.setType(3);
        return interval;
    }

    public TimeInterval get30Days() {
        TimeInterval interval = new TimeInterval();
        Calendar calendar = Calendar.getInstance();
        interval.setEndTime(simple.format(calendar.getTime()));
        calendar.set(Calendar.DATE, calendar.get(Calendar.DATE) - 30 + 1);
        interval.setStartTime(simple.format(calendar.getTime()));
        interval.setType(4);
        return interval;
    }

    public TimeInterval getAll() {
        TimeInterval interval = new TimeInterval();
        interval.setStartTime("");
        interval.setEndTime("");
        interval.setType(-2);
        return interval;
    }

    public static String convertToServerTime(String time) {
        DateFormat convert = new SimpleDateFormat("dd/MM/yyyy");
        try {
            Date date = convert.parse(time);
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            String dateString = dateFormat.format(date);
            return dateString;
        } catch (ParseException e) {
            return time;
        }
    }

    private void checkTimeLogin() {
        Calendar calendar = Calendar.getInstance();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SharedPreferences preferences = ConfigUtil.getInstance().getPreference();
        String user = preferences.getString(ConstantKey.USER_LOGIN, ConstantKey.VALUE_DEFAULT);
        String dateStart = preferences.getString(ConstantKey.DATE_LOGIN, ConstantKey.VALUE_DEFAULT);
        if (user.equals(UserUtil.getInstance().getUser().getDisplayName()) == true) {
            String dateEnd = dateFormat.format(calendar.getTime());
            try {
                Date dateNextLogin = dateFormat.parse(dateEnd);
                Date datePreviousLogin = dateFormat.parse(dateStart);
                long distanceLogin = dateNextLogin.getTime() - datePreviousLogin.getTime();
                long time = Converter.convertMillisSecondToMinutes(distanceLogin);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
            editor.putString(ConstantKey.DATE_LOGIN, dateEnd);
            editor.commit();
        } else {
            String datePreviousLogin = dateFormat.format(calendar.getTime());
            SharedPreferences.Editor editor = ConfigUtil.getInstance().getPreference().edit();
            editor.putString(ConstantKey.USER_LOGIN, UserUtil.getInstance().getUser().getDisplayName());
            editor.putString(ConstantKey.DATE_LOGIN, datePreviousLogin);
            editor.commit();
        }
    }

    public static String convertToLabelTime(String time) {
        DateFormat convert = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = convert.parse(time);
            DateFormat dateFormat = new SimpleDateFormat("dd/MM");
            String dateString = dateFormat.format(date);
            return dateString;
        } catch (ParseException e) {
            return time;
        }
    }

}
