package com.restaurantly.restaurant.service;

import java.util.List;

import com.restaurantly.restaurant.dto.RestaurantDTO;

public interface RestaurantService {
	// �Ĵ� ����(�ѽ�, �Ͻ�, �߽�, ��� ��)�� ���� �Ĵ� ����Ʈ ���
	public List<RestaurantDTO> listRestaurant(String restaurant_item) throws Exception;

	// ���� ���� ���õǾ����� ���� ������ �ִ� ��� �Ĵ� ����Ʈ ���
	public List<RestaurantDTO> listRandomRestaurant(String menu_category) throws Exception;

	// ����Ʈ���� �Ĵ� ���õǾ��� �� ���õ� �Ĵ翡 ���� ���� ���
	public RestaurantDTO restaurantInfo(String restaurant_license) throws Exception;
}