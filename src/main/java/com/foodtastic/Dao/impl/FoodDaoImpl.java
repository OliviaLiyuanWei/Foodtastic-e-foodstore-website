package com.foodtastic.Dao.impl;

import com.foodtastic.Dao.FoodDao;
import com.foodtastic.model.Food;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Olivia on 4/5/2016.
 */

@Repository
@Transactional
public class FoodDaoImpl implements FoodDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addFood(Food food) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(food);
        session.flush();
    }


    public void editFood(Food food) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(food);
        session.flush();
    }


    public Food getFoodById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Food food = (Food) session.get(Food.class, id);
        session.flush();

        return food;
    }

    public List<Food> getAllFoods() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Food");
        List<Food> foods = query.list();
        session.flush();

        return foods;
    }

    public void deleteFood(String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getFoodById(id));
        session.flush();

    }




}
