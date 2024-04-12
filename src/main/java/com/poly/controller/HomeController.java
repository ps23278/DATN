package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.Account;
import com.poly.entity.Role;
import com.poly.entity.RoleDetail;
import com.poly.service.AccountService;
import com.poly.service.BrandService;
import com.poly.service.CategoryService;
import com.poly.service.MailerService;
import com.poly.service.ProductService;
import com.poly.service.SessionService;

@Controller
public class HomeController {
	@Autowired
	BrandService bService;
	@Autowired
	CategoryService cService;
	@Autowired
	ProductService pService;
	@Autowired
	SessionService session;
	@Autowired
	AccountService aService;
	@Autowired 
	MailerService mailer;

	

	//Fill dữ liệu lên index
	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("db", pService.findProductByCreateDateDESC());
		return "home/index";
	}

	@GetMapping("/brand/list")
	public String brandList(Model model) {
		return "brand/list";
	}

	@GetMapping("/register")
	public String register(	@ModelAttribute Account account) {
		return "register";
	}
	
	//Đăng ký
	@PostMapping("/register")
	public String signup(Model model,
			@ModelAttribute Account account) {
		if(aService.existsById(account.getUsername())) {
			model.addAttribute("error", "Đã tồn tại username "+account.getUsername());
			return "register";
		}else {
			account.setActivated(true);
			account.setPhoto("logo.jpg");
			Role r = new Role();
			r.setRole("user");
			RoleDetail rd = new RoleDetail();
			rd.setAccount(account);
			rd.setRole(r);
			
			aService.save(account);
			aService.saveRoleDetail(rd);
			return "redirect:/register/success";
		}
	}
	//khi Đăng ký thành công
	@RequestMapping("/register/success")
	public String registerSuccess(Model model) {
		model.addAttribute("message", "Đăng ký thành công");
		return "login";
	}
	//điều hướng đến Đăng nhập
	@GetMapping("/login")
	public String formLogin(Model model, @RequestParam(value = "message", required = false) String message) {
		model.addAttribute("message", message);
		return "login";
	}
	//Xử lý Đăng nhập
	@PostMapping("/login")
	public String login(@RequestParam("username") String username,
			@RequestParam("password") String password, 
			Model model) {
		try {
			Account account = aService.findByUsername(username);
			if(!account.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			}else {
				String uri = session.get("security-uri");
//				if(uri != null) {
//					return "redirect:"+uri;
//				}
//				else {
					session.set("user", account);
					if(this.checkAdmin(account)) {
						session.set("userAdmin", "admin");
					}
					model.addAttribute("message", "Login success");
//				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Invalid username");
		}
		return "login";
	}

	public Boolean checkAdmin(Account account) {
		for(RoleDetail roleDetail : account.getRoleDetails()) {
			if(roleDetail.getRole().getRole().equals("staff") || roleDetail.getRole().getRole().equals("director")) {
				return true;
			}
		}
		return false;
	}
	//đăng xuất
	@RequestMapping("/logout")
	public String logoutSuccess(Model model) {
		session.remove("user");
		session.remove("userAdmin");
		session.remove("security-uri");
		session.remove("uri");
		model.addAttribute("message", "Đăng xuất thành công");
		return "login";
	}
	
	//điều hướng đến trang quên mật khẩu
	@GetMapping("forgot-password")
	public String forgot() {
		return "forgot";
	}
	
	// xử lý quên mật khẩu
	@PostMapping("forgot-password")
	public String forgot(@RequestParam("username") String username, Model model) {
		try {
			Account account = aService.findByUsername(username);
			String to = account.getEmail();
			String email = to.substring(0, 2);
			
			double randomDouble = Math.random();
            randomDouble = randomDouble * 1000000 + 1;
            int randomInt = (int) randomDouble;
			
			String subject = "Lấy lại mật khẩu";
			String body = "Mật khẩu của bạn là:"+randomInt;
			mailer.send(to, subject, body);
			
			account.setPassword(String.valueOf(randomInt));
			aService.save(account);
			
			model.addAttribute("message", "Mật khẩu mới đã được gửi đến mail "+email+"***");
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Invalid Username");
		}
		return "forgot";
	}
}
