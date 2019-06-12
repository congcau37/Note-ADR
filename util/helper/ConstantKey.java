package com.example.itdev.izinzin.util.helper;

public class ConstantKey {

    // request code
    public static final int REQUEST_PERMISSION_READ_EXTERNAL = 1001;
    public static final int REQUEST_PERMISSION_WRITE_EXTERNAL = 1002;
    public static final int REQUEST_PERMISSION_CAMERA = 1003;

    // key config
    public static final String KEY_CONFIG_STORAGE = "storage_short";
    public static final String KEY_CONFIG_USER_GROUP = "user_group";
    public static final String KEY_CONFIG_TIME_SYNC_PRODUCT = "time_sync_product";
    public static final String VALUE_DEFAULT_ARRAY = "[]";
    public static final String VALUE_DEFAULT = "";
    public static final String KEY_CONFIG_USER = "temp_user";

    public static final String KEY_CONFIG_USER_TEMP_SHOP = "temp_user_shop";
    public static final String KEY_CONFIG_USER_TEMP_NAME = "temp_user_name";
    public static final String KEY_CONFIG_USER_TEMP_PASSWORD = "temp_user_pass";

    // key pass with bundle
    public static final String KEY_PASS_STAFF = "staff_selected_data";
    public static final String KEY_PASS_PRODUCT_RESULT = "product_selected_data";
    public static final String KEY_PASS_CUSTOMER_RESULT = "customer_selected_data";
    public static final String KEY_PASS_SUPPLIER_RESULT = "supplier_selected_data";

    public static final String KEY_PASS_NOTE_ID = "note_id";
    public static final String KEY_PASS_NOTE_CODE = "note_code";

    public static final String KEY_PASS_STORAGE = "storage_modify";
    public static final String KEY_PASS_NAME = "name_selected_data";

    public static final String KEY_PASS_UNIT = "unit_selected_data";
    public static final String KEY_PASS_CATEGORY = "category_selected_data";
    public static final String KEY_PASS_ORIGIN = "origin_selected_data";
    public static final String KEY_PASS_SUPPLIER = "supplier_selected_data";

    public static final String KEY_PUT_UNIT_NAME = "selected_unit_name";
    public static final String KEY_PUT_ORIGIN_NAME = "selected_origin_name";
    public static final String KEY_PUT_CATEGORY_NAME = "selected_category_name";
    public static final String KEY_PUT_SUPPLIER_NAME = "selected_supplier_name";

    public static final String KEY_PUT_ID_UNIT_NAME = "selected_id_unit_name";
    public static final String KEY_PUT_ID_ORIGIN_NAME = "selected_id_origin_name";
    public static final String KEY_PUT_ID_CATEGORY_NAME = "selected_id_category_name";
    public static final String KEY_PUT_ID_SUPPLIER_NAME = "selected_id_supplier_name";

    public static final String KEY_PASS_EDIT_PRO = "pro_selected_data";

    public static final String KEY_PASS_BARCODE = "barcode_value";

    // status note
    public static final int NOTE_STATUS_INIT = 0;
    public static final int NOTE_STATUS_COMPLETE = 1;
    public static final int NOTE_STATUS_CANCEL = 5;

    // sort type
    public static final int SORT_DATE_DESC = 1;
    public static final int SORT_NAME_ASC = 3;
    public static final int SORT_NAME_DESC = 4;
    public static final int SORT_PRICE_ASC =5;
    public static final int SORT_PRICE_DESC = 6;
    public static final int SORT_QUANTITY_ASC = 7;
    public static final int SORT_QUANTITY_DESC = 8;

    public static final String KEY_PUT_USER_GROUP = "user_group";

    public static final int STATUS_ALL = 0;
    public static final int STATUS_TRADING = 1;
    public static final int STATUS_STOP = 2;
    public static final int STATUS_DELETED = 3;

    public static final int PRICE_ALL = 0;
    public static final int PRICE_NOT_RETAIL = 1;
    public static final int PRICE_NOT_IMPORT_PRICE = 2;

    // over date option time
    public static final int DATE_OPTION_MAX = 93;
    public static final String DATE_LOGIN = "date_login";
    public static final String USER_LOGIN = "user_login";

    // intent filter
    public static final String ACTION_CHANGE_STORAGE = "action_change_storage";
    public static final String ACTION_CHANGE_POS_ORDER_TEMP = "action_change_pos_order_temp";
    public static final String ACTION_SYNC_PRODUCT = "action_sync_product";
    public static final String ACTION_RECEIVE_BARCODE = "action_receive_barcode";

    // server action
    public static final int SERVER_REQUEST_CREATE = 1;
    public static final int SERVER_REQUEST_EDIT = 2;
    public static final int SERVER_REQUEST_DELETE = 3;

}
