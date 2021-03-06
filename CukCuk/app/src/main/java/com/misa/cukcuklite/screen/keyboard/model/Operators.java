package com.misa.cukcuklite.screen.keyboard.model;

/**
 * ‐ Class được tạo ra dể người dùng đăng nhập vào hệ thống
 * <p>
 * ‐ @created_by Hoàng Hiệp on 3/26/2019.
 * ‐ @modified_by Hoàng Hiệp on 3/26/2019.
 */

public class Operators {
    private int id;
    private long value;

    public Operators(int id, long value) {
        this.id = id;
        this.value = value;
    }

    public int getId() {
        return id;
    }

    public Operators setId(int id) {
        this.id = id;
        return this;
    }

    public long getValue() {
        return value;
    }

    public Operators setValue(long value) {
        this.value = value;
        return this;
    }
}
