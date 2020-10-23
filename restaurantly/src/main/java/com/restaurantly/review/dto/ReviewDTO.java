package com.restaurantly.review.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Component("review")
@NoArgsConstructor
@Getter @Setter
public class ReviewDTO {
	private String review_id;
	private int restaurant_license;
	private String customer_id;
	private int review_score;
	private Date review_writedate;
	private String review_image_path;
	
	
	
}

