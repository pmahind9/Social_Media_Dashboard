
package com.user.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.user.web.model.User;

@Repository
public interface UserInfo extends JpaRepository<User, Integer> {
	 User findByEmail(String email);
}

