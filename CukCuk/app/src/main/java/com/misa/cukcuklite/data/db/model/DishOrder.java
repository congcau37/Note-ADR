package com.misa.cukcuklite.data.db.model;


import java.io.Serializable;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

import static androidx.room.ForeignKey.CASCADE;

@Entity(tableName = "dish_order", foreignKeys = @ForeignKey(entity = Order.class, parentColumns = "id", childColumns = "order_id", onDelete = CASCADE))
public class DishOrder implements Serializable {
    @PrimaryKey(autoGenerate = true)
    private int id;
    @ColumnInfo(name = "dish_id")
    private int mDishId;
    @ColumnInfo(name = "mQuantity")
    private int mQuantity;
    @ColumnInfo(name = "order_id")
    private int orderId;
    @ColumnInfo(name = "cost")
    private long mCost;
    @Ignore
    private Dish mDish;

    public DishOrder(int id, int dishId, int mQuantity, int orderId) {
        this.id = id;
        mDishId = dishId;
        this.mQuantity = mQuantity;
        this.orderId = orderId;
    }

    private DishOrder(Builder builder) {
        id = builder.id;
        mDishId = builder.mDishId;
        mQuantity = builder.quantity;
        orderId = builder.orderId;
        mCost=builder.cost;
    }

    public long getCost() {
        return mCost;
    }

    public DishOrder setCost(long cost) {
        mCost = cost;
        return this;
    }

    public Dish getDish() {
        return mDish;
    }

    public DishOrder setDish(Dish dish) {
        mDish = dish;
        return this;
    }

    public int getId() {
        return id;
    }

    public DishOrder setId(int id) {
        this.id = id;
        return this;
    }

    public int getDishId() {
        return mDishId;
    }

    public DishOrder setDishId(int dishId) {
        mDishId = dishId;
        return this;
    }

    public int getQuantity() {
        return mQuantity;
    }

    public DishOrder setQuantity(int quantity) {
        this.mQuantity = quantity;
        return this;
    }

    public int getOrderId() {
        return orderId;
    }

    public DishOrder setOrderId(int orderId) {
        this.orderId = orderId;
        return this;
    }

    public static class Builder {
        private int id;
        private int mDishId;
        private int quantity;
        private int orderId;
        private long cost;

        public Builder setCost(long cost) {
            this.cost = cost;
            return this;
        }

        public Builder setId(int id) {
            this.id = id;
            return this;
        }

        public Builder setDishId(int dishId) {
            mDishId = dishId;
            return this;
        }

        public Builder setQuantity(int quantity) {
            this.quantity = quantity;
            return this;
        }

        public Builder setOrderId(int orderId) {
            this.orderId = orderId;
            return this;
        }

        public DishOrder build() {
            return new DishOrder(this);
        }
    }
}
