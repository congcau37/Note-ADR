package congdev37.food.com.monngonngaytet.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;

import congdev37.food.com.monngonngaytet.model.MonAnModel;
import congdev37.food.com.monngonngaytet.utils.DBHeplper;

public class SqliteController {
    private DBHeplper dbHelper;

    public SqliteController(Context context) {
        dbHelper = new DBHeplper(context);
    }

    public ArrayList<MonAnModel> getTatCaMonAn() {

        ArrayList<MonAnModel> questionModelArrayList = new ArrayList<MonAnModel>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM DongVat",null);
        cursor.moveToFirst();
        do {
            MonAnModel item;
            item = new MonAnModel(cursor.getInt(0),cursor.getString(1),cursor.getString(2),cursor.getString(3),cursor.getString(4));
            questionModelArrayList.add(item);
        } while (cursor.moveToNext());
        return questionModelArrayList;
    }

    public void updateMonAn(MonAnModel monAnModel) {
        SQLiteDatabase db = dbHelper.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("love", monAnModel.getLove());
        db.update("DongVat", values, "id" + " = ?", new String[] { String.valueOf(monAnModel.getId()) });
        db.close();
    }

    public ArrayList<MonAnModel> getMonyeuThich() {

        ArrayList<MonAnModel> questionModelArrayList = new ArrayList<MonAnModel>();
        SQLiteDatabase db = dbHelper.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM DongVat WHERE love = '1' ",null);
        cursor.moveToFirst();
       if(cursor !=null && cursor.getCount()>0) {
            try {
                do {
                        MonAnModel item;
                        item = new MonAnModel(cursor.getInt(0),cursor.getString(1),cursor.getString(2),cursor.getString(3),cursor.getString(4));
                        questionModelArrayList.add(item);
                } while (cursor.moveToNext());
            } finally {
                cursor.close();
            }
        }
        return questionModelArrayList;
    }
}
