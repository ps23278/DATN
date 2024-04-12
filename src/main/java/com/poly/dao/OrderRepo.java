package com.poly.dao;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.entity.Order;


@Repository
public interface OrderRepo extends JpaRepository<Order, Long>{
	@Query("SELECT o FROM Order o WHERE o.account.username = :name")
	List<Order> findByUsername(@Param("name") String username);
	
	@Query("SELECT o FROM Order o WHERE MONTH(o.createDate) = :month")
	List<Order> findOrderInMonth(@Param("month") Integer month);
	
	@Query("SELECT COUNT(o) FROM Order o WHERE MONTH(o.createDate) = :month")
	Integer countOrderInMonth(@Param("month") Integer month);
}
