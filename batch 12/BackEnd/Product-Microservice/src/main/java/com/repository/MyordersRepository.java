package com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.Myorders;


@Repository
public interface MyordersRepository extends JpaRepository<Myorders,Integer> {
	
	@Query("select p from Myorders p where p.id= :userid")
	public List<Myorders> ListMyordersByUserId(@Param("userid") int userid);

}
