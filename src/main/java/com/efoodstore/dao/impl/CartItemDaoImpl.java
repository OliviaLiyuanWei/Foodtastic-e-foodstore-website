package com.efoodstore.dao.impl;

import com.efoodstore.dao.CartItemDao;
import com.efoodstore.model.Cart;
import com.efoodstore.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem (CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllCartItems(Cart cart) {
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            removeCartItem(item);
        }
    }

    public CartItem getCartItemByProductId (int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }
}
