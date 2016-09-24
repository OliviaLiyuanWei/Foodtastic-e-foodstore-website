package com.efoodstore.service;

import com.efoodstore.model.Cart;

public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
