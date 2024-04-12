package com.poly.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.dao.OrderDetailRepo;
import com.poly.entity.Account;
import com.poly.entity.Category;
import com.poly.entity.Order;
import com.poly.entity.OrderDetail;
import com.poly.entity.Product;
import com.poly.service.AccountService;
import com.poly.service.BrandService;
import com.poly.service.CategoryService;
import com.poly.service.OrderService;
import com.poly.service.ProductService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired BrandService bService;
	@Autowired CategoryService cService;
	@Autowired ProductService pService;
	@Autowired AccountService aService;
	@Autowired OrderService oService;
	@Autowired SessionService session;
	
	@RequestMapping("/list")
	public String listOrder(Model model) {
		Account account = session.get("user");
		List<Order> orders = oService.findByUsername(account.getUsername());

		List<Map<String, Object>> db = new ArrayList<Map<String,Object>>();
		for(Order order : orders ) {
			Map<String, Object> map = new HashMap<String, Object>();
			List<OrderDetail> orderDetail = order.getOrderDetails();
			Double total = (double) 0;
			for(OrderDetail od : orderDetail) {
				total += od.getPrice() * od.getQuantity();
			}
			map.put("order", order);
			map.put("total", total);
			db.add(map);
		}
		model.addAttribute("orders", db);
		return "order/list";
	}
	@RequestMapping("/cart")
	public String cart() {
		return "order/cart";
	}
	
	@RequestMapping("/checkout")
	public String checkout(Model model) {
		model.addAttribute("userDetail", session.get("user"));
		return "order/checkout";
	}
	@RequestMapping("/detail/{id}")
	public String detail(Model model, 
			Principal principal,
			@PathVariable("id") Long id) {
		Order order = oService.findById(id);
		Account account = session.get("user");
		String acc = account.getUsername();
		if(!order.getAccount().getUsername().equals(acc)) {
			return "redirect:/login?message=Access%20Denied";
		}else {
			model.addAttribute("order", order);
			List<OrderDetail> orderDetail = order.getOrderDetails();
			Double total = (double) 0;
			for(OrderDetail od : orderDetail) {
				total += od.getPrice() * od.getQuantity();
			}
			model.addAttribute("total", total);
			return "order/detail";
		}
	
	}
	@RequestMapping("/delete/{id}")
	public String delete(Model model,@PathVariable("id") Long id) {
		oService.deleteOrder(id);
		return "order/list";
	}
}
