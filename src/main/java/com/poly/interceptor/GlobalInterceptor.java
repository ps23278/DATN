package com.poly.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.poly.service.BrandService;
import com.poly.service.CategoryService;

@Component
public class GlobalInterceptor implements HandlerInterceptor{
	@Autowired CategoryService cService;
	@Autowired BrandService bService;

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		request.setAttribute("cates", cService.findAll());
		request.setAttribute("brands", bService.findAll());
	}
	
}
