package com.poly.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.poly.entity.Product;
import com.poly.service.ProductService;

@RestController
@CrossOrigin("*")
public class CartRestController {
	//Tìm product để add vào giỏ hàng
	@Autowired ProductService pService;
	@RequestMapping("/rest/products/{id}")
	public Product getOne(@PathVariable("id") Long id) {
		return pService.findById(id);
	}
}
