package com.foodtastic.controller;

import com.foodtastic.Dao.FoodDao;
import com.foodtastic.model.Food;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by Olivia on 4/4/2016.
 */

@Controller
public class HomeController {

    private Path path;

    @Autowired
    private FoodDao foodDao;

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/foodList")
    public String getFoods(Model model) {
        List<Food> foods = foodDao.getAllFoods();
        model.addAttribute("foods", foods);

        return "foodList";
    }

    @RequestMapping("/foodList/foodDetailPage/{foodId}")
    public String foodDetailPage(@PathVariable String foodId, Model model) throws IOException{

        Food food = foodDao.getFoodById(foodId);
        model.addAttribute(food);

        return "foodDetailPage";
    }

    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/admin/foodInventory")
    public String foodInventory(Model model) {
        List<Food> foods = foodDao.getAllFoods();
        model.addAttribute("foods", foods);

        return "foodInventory";
    }

    @RequestMapping("/admin/foodInventory/addFood")
    public String addFood(Model model) {
        Food food = new Food();
        food.setFoodCategory("Snack");

        model.addAttribute("food", food);

        return "addFood";
    }

    @RequestMapping(value = "/admin/foodInventory/addFood", method = RequestMethod.POST)
    public String addFoodPost(@Valid @ModelAttribute("food") Food food, BindingResult result, HttpServletRequest request) {

        if (result.hasErrors()) {
            return "addFood";
        }


        foodDao.addFood(food);

        MultipartFile foodImage = food.getFoodImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + food.getFoodId() + ".png");

        if (foodImage != null && !foodImage.isEmpty()) {
            try {
                foodImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Food image saving failed", e);
            }
        }

        return "redirect:/admin/foodInventory";
    }


    @RequestMapping("/admin/foodInventory/deleteFood/{id}")
    public String deleteFood(@PathVariable String id, Model model, HttpServletRequest request) {

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + id + ".png");

        if (Files.exists(path)) {
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        foodDao.deleteFood(id);

        return "redirect:/admin/foodInventory";
    }

    @RequestMapping("/admin/foodInventory/editFood/{id}")
    public String editFood(@PathVariable("id") String id, Model model) {
        Food food = foodDao.getFoodById(id);

        model.addAttribute(food);

        return "editFood";
    }


    @RequestMapping(value = "/admin/foodInventory/editFood", method = RequestMethod.POST)
    public String editFood(@Valid @ModelAttribute("food") Food food, Model model, BindingResult result, HttpServletRequest request) {
        if (result.hasErrors()) {
            return "editFood";
        }

        MultipartFile foodImage = food.getFoodImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + food.getFoodId() + ".png");

        if (foodImage != null && !foodImage.isEmpty()) {
            try {
                foodImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                throw new RuntimeException("Food image saving failed", e);
            }
        }

        foodDao.editFood(food);

        return "redirect:/admin/foodInventory";
    }


}
