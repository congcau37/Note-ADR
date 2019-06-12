package com.misa.cukcuklite.data.db;


import com.misa.cukcuklite.data.model.Dish;
import com.misa.cukcuklite.data.model.DishOrder;
import com.misa.cukcuklite.data.model.Order;
import com.misa.cukcuklite.data.model.Unit;


import androidx.room.Database;
import androidx.room.RoomDatabase;

/**
 * ‐ Mục đích Class : ra lớp để kế thừa lại Roomdatabase
 * <p>
 * ‐ @created_by dhhiep on 3/22/2019
 */
<<<<<<< HEAD
@Database(entities = {Dish.class, Unit.class, Order.class, DishOrder.class}, version = 4)
=======
@Database(entities = {Dish.class, Unit.class, Order.class, DishOrder.class}, version = 1)
>>>>>>> 8862456f454d8abdc1ce1632f24f79581d3b9374
public abstract class AppDatabase extends RoomDatabase {
    public abstract DishDAO mDishDAO();

    public abstract UnitDAO mUnitDAO();

    public abstract OrderDAO mOrderDAO();

<<<<<<< HEAD
    public abstract DishOrder mDishOrderDAO();
=======
    public abstract DishOrderDAO mDishOrderDAO();
>>>>>>> 8862456f454d8abdc1ce1632f24f79581d3b9374
}
