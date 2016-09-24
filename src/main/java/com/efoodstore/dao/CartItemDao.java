package com.efoodstore.dao;

import com.efoodstore.model.Cart;
import com.efoodstore.model.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId (int productId);

}
