package com.example.itdev.izinzin.util.helper;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;

import com.example.itdev.izinzin.R;
import com.example.itdev.izinzin.app.SaleApplication;

public class ViewHelper {

    public static boolean setListViewHeightBasedOnItems(ListView listView) {

        ListAdapter listAdapter = listView.getAdapter();
        if (listAdapter != null) {

            int numberOfItems = listAdapter.getCount();

            // Get total height of all items.
            int totalItemsHeight = 0;
            for (int itemPos = 0; itemPos < numberOfItems; itemPos++) {
                View item = listAdapter.getView(itemPos, null, listView);
                item.measure(0, 0);
                totalItemsHeight += item.getMeasuredHeight();
            }

            // Get total height of all item dividers.
            int totalDividersHeight = listView.getDividerHeight() * (numberOfItems - 1);

            // Set list height.
            ViewGroup.LayoutParams params = listView.getLayoutParams();
            params.height = totalItemsHeight + totalDividersHeight;
            listView.setLayoutParams(params);
            listView.requestLayout();

            return true;

        } else {
            return false;
        }
    }

    public static void colorImage(View view, int drawableResource) {
        if (view instanceof ImageView) {
            ImageView imv = (ImageView) view;
            imv.setImageResource(drawableResource);
            imv.setColorFilter(SaleApplication.getInstance().getResources().getColor(R.color.color_common_code));
        }
    }

    public static void colorImage(View view, int drawableResource, int colorResource) {
        if (view instanceof ImageView) {
            ImageView imv = (ImageView) view;
            imv.setImageResource(drawableResource);
            imv.setColorFilter(SaleApplication.getInstance().getResources().getColor(colorResource));
        }
    }
}
