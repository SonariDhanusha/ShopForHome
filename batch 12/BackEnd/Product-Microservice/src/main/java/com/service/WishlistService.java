package com.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Wishlist;
import com.dao.WishlistDao;
import com.repository.WishlistRepository;

@Service
public class WishlistService {
	
	@Autowired
	WishlistRepository wishlistrepository;
	
	@Autowired
	WishlistDao wishlistdao;
	
	public String storeDetails(Wishlist ws) {
		if(wishlistdao.storeDetails(ws)) {
			return "details stored successfully";
		}
		else {
			return "storing unsuccessful";
		}
	}
//	public List<Wishlist> getwishlist(){
//		return wishlistrepository.getWishlist();
//	}
	

}
