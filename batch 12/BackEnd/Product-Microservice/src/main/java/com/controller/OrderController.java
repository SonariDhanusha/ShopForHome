package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bean.Odetails;

import com.repository.OrderDetailsRepository;
import com.service.OrderService;


@RestController
@RequestMapping("orders")
@CrossOrigin
public class OrderController {
	
	@Autowired
	OrderService os;
	
	@Autowired
	OrderDetailsRepository odr;
	

	
	@PostMapping(value="storeOderDetails")
	public String storeOrderDetails(@RequestBody Odetails order) {
		return os.storeOrderDetails(order);
	}
	@GetMapping(value="allordersDetails")
	public List<Odetails> getAllOrdersDetails(){
		return os.getAllOrdersDetails();
	}
	
	@GetMapping(value="userOrders/{userid}")
	public List<Odetails> userOrd(@PathVariable("userid") int userid){
		return odr.ListOdetailsByUserId(userid);
	}
	@DeleteMapping(value = "deletecartitem/{ordid}")
	public String deletecartProduct(@PathVariable("ordid") int ordid) {
		return os.deletecartProduct(ordid);
	}
	

}
