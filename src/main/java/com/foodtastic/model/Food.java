package com.foodtastic.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;

/**
 * Created by Olivia on 4/5/2016.
 */
@Entity
public class Food {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String foodId;

    @NotEmpty(message = "The food name must not be empty.")
    private String foodName;
    private String foodCategory;
    private String foodDescription;

    @Min(value = 0, message = "The food price must not be less than zero")
    private double foodPrice;

    @Min(value = 0, message = "The food weight must not be less than zero")
    private double foodWeight;

    @Min(value = 0, message = "The food unit must not be less tha zero.")
    private int unitInStock;
    private String foodManufacturer;

    @Transient
    private MultipartFile foodImage;


    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getFoodCategory() {
        return foodCategory;
    }

    public void setFoodCategory(String foodCategory) {
        this.foodCategory = foodCategory;
    }

    public String getFoodDescription() {
        return foodDescription;
    }

    public void setFoodDescription(String foodDescription) {
        this.foodDescription = foodDescription;
    }

    public double getFoodPrice() {
        return foodPrice;
    }

    public void setFoodPrice(double foodPrice) {
        this.foodPrice = foodPrice;
    }

    public double getFoodWeight() {
        return foodWeight;
    }

    public void setFoodWeight(double foodWeight) {
        this.foodWeight = foodWeight;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getFoodManufacturer() {
        return foodManufacturer;
    }

    public void setFoodManufacturer(String foodManufacturer) {
        this.foodManufacturer = foodManufacturer;
    }

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }


    public MultipartFile getFoodImage() {
        return foodImage;
    }

    public void setFoodImage(MultipartFile foodImage) {
        this.foodImage = foodImage;
    }
}
