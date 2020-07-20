package com.delivery.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.delivery.demo.entity.Restaurants;

public interface RestaurantRepository extends JpaRepository<Restaurants, String> {

	@Query(value = "select * from RESTAURANTS where RESTAURANT_RATING =?1", nativeQuery = true)
	List<Restaurants> searchRestaurants(int rating);

}
