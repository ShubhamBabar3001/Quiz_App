package com.shubhamTech.Quize_App.Repository;

import com.shubhamTech.Quize_App.Entity.UserFeedback;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<UserFeedback, Long> {
}
