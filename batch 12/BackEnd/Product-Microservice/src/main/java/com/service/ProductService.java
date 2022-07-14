package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Product;
import com.dao.ProductDao;
import com.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductDao productDao;
	
	@Autowired
	ProductRepository productRepository;
	
	
	public List<Product> getAllProductFromRepository() {
		return productRepository.findAll();
	}
	
	public String storeProduct(Product product) {
		if(productDao.storeProduct(product)) {
			return "Product details stored successfully";
		}else {
			return "Product didn't store";
		}
	}
	
	public List<Product> getAllProduct() {
		return productRepository.findAll();
	}
	
	public String updateProduct(Product product) {
		if(productDao.updateProductByPrice(product)) {
			return "Record updated successfully";
		}else {
			return "Record not present";
		}
	}
	
//	public String deleteProductInfo(int pid) {
//		if(productDao.deleteProduct(pid)) {
//			return "Product deleted successfully";
//		}else {
//			return "Product didn't delete";
//		}
//	}
	
	public String updateStock(Product prod) {
		if(productDao.updateProductStocks(prod)) {
			return "Record updated successfully";
		}else {
			return "Record not present";
		}
	}
	
	public String deleteProduct(int pid) {
		Optional<Product> op =  productRepository.findById(pid);
			if(op.isPresent()) {
					Product p = op.get();
					productRepository.delete(p);
					return "Product deleted successfully";
			}else {
				return "Product not present";
			}
		}
	
	public List<Product> findProductByPrice(int price){
		return productRepository.findProductByPrice(price);
	}
	
	public Product findProductById(int id){
		return productRepository.ListProductsById(id);
	}
	public List<Product> sortProductByPrice(String category){
		return productRepository.sortByPrice(category);
	}
	public List<Product> sortByPriceDesc(String category){
		return productRepository.sortByPriceDesc(category);
	}
	public List<Product> getProductsByCategory(String cat){
		return productRepository.ListProductsByCategory(cat);
	}
//	public List<Product> getProductsbypids(List<Integer> pds){
//		return productRepository.findAllById(pds);
//		
//	}
	public List<Product> AscendingProd(){
		return productRepository.AcendingProducts();
	}
	
}
