package com.shubhamTech.Quize_App.Repository;

import com.shubhamTech.Quize_App.Entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<Users, Long> {
    Users findByUserEmail(String userEmail);
}
