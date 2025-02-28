package com.shubhamTech.Quize_App.Repository;

import com.shubhamTech.Quize_App.Entity.UserMark;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UsermarkRepo extends JpaRepository<UserMark,Long> {
    List<UserMark> findByUserId(int userId);
}
