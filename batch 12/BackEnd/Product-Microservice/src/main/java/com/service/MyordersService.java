package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Myorders;

import com.dao.MyordersDao;
import com.repository.MyordersRepository;

@Service
public class MyordersService {
	
	@Autowired
	MyordersDao dao;
	
	@Autowired
	MyordersRepository repo;
	
	public String storemyOrderDetails(Myorders ord){
		if(dao.Storemyorrdetails(ord)) {
			return "order details stored successfully";
		}else {
			return "order didn't store";
		}
		
	}
	public List<Myorders> getAllmyOrdersDetails(){
		return repo.findAll();
	}

}
