package com.restaurantly.restaurant.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.restaurantly.restaurant.dto.RestaurantDTO;

public interface RestaurantDAO {
	// �Ĵ� ����(�ѽ�, �Ͻ�, �߽�, ��� ��)�� ���� �Ĵ� ����Ʈ ���
	public List<RestaurantDTO> selectRestaurantList(String restaurant_item) throws DataAccessException;
	
	// ���� ���� ���õǾ����� ���� ������ �ִ� ��� �Ĵ� ����Ʈ ���
	public List<RestaurantDTO> selectRandomRestaurantList(String menu_category) throws DataAccessException;
	
	// ����Ʈ���� �Ĵ� ���õǾ��� �� ���õ� �Ĵ翡 ���� ���� ���
	public RestaurantDTO selectRestaurant(String restaurant_license) throws DataAccessException;
}
