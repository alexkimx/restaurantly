package com.restaurantly.restaurant.dto;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Component("restaurant")
@NoArgsConstructor
@Getter @Setter
public class RestaurantDTO {
	private String restaurant_license; /* ����ڵ�Ϲ�ȣ */
	private String owner_id; /* �Ǹ���ID */
	private String restaurant_name; /* ��ȣ�� */
	private String restaurant_phone; /* ��ȭ��ȣ */
	private String restaurant_representative; /* ��ǥ�ڸ� */
	private String restaurant_detail; /* ���ּ� */
	private String restaurant_item; /* ���� */
	private String restaurant_introduction; /* �Ұ��� */
	private String restaurant_image_path; /* ������� */
}
