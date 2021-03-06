package com.restaurantly.restaurant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.restaurantly.restaurant.dao.RestaurantDAO;
import com.restaurantly.restaurant.vo.MenuVO;
import com.restaurantly.restaurant.vo.RestaurantVO;

@Service("restaurantService")
@Transactional(propagation=Propagation.REQUIRED)
public class RestaurantServiceImpl implements RestaurantService {
	@Autowired
	private RestaurantDAO restaurantDAO;
	
	@Override
	public List<RestaurantVO> listRestaurant() throws Exception {
		List<RestaurantVO> restaurantList = restaurantDAO.selectRestaurantList();
		return restaurantList;
	}
	
	@Override
	public List<RestaurantVO> listRestaurant(String restaurant_item) throws Exception {
		List<RestaurantVO> restaurantList = restaurantDAO.selectRestaurantList(restaurant_item);
		return restaurantList;
	}

	@Override
	public List<RestaurantVO> listRandomRestaurant(String menu_category) throws Exception {
		List<RestaurantVO> restaurantList = restaurantDAO.selectRandomRestaurantList(menu_category);
		return restaurantList;
	}

	@Override
	public RestaurantVO restaurantInfo(String restaurant_license) throws Exception {
		RestaurantVO restaurant = restaurantDAO.selectRestaurant(restaurant_license);
		restaurant.setMenuList(restaurantDAO.selectMenuList(restaurant_license));
		return restaurant;
	}
	
	@Override
	public String randomCat() throws Exception {
		String menu_category;
		List<String> menuCatList = restaurantDAO.selectMenuCategory();
		int random = (int) (Math.random() * menuCatList.size());
		menu_category = menuCatList.get(random);
		return menu_category;
	}

	@Override
	public List<MenuVO> listMenuForCat(String menu_category) throws Exception {
		List<MenuVO> menuList = restaurantDAO.selectMenuListForCat(menu_category);
		return menuList;
	}

}
