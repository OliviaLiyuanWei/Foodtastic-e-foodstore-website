package com.foodtastic.Dao;

import com.foodtastic.model.Food;

import java.util.List;

/**
 * Created by Olivia on 4/5/2016.
 */
public interface FoodDao {

    void addFood(Food food);

    void editFood(Food food);

    Food getFoodById(String id);

    List<Food> getAllFoods();

    void deleteFood(String id);

}
