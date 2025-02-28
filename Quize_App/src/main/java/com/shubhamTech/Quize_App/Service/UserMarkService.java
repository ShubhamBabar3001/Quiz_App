package com.shubhamTech.Quize_App.Service;

import com.shubhamTech.Quize_App.Entity.UserMark;
import com.shubhamTech.Quize_App.Repository.UsermarkRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserMarkService {
   @Autowired
   private UsermarkRepo usermarkRepo;

    public UserMarkService(UsermarkRepo usermarkRepo) {
        this.usermarkRepo = usermarkRepo;
    }


    // set the record
    public boolean setQuizData(UserMark userMark){
        UserMark userMark1 =  usermarkRepo.save(userMark);

        if(userMark1==null){
            return false;
        }else{
            return true;
        }
    }

    //Get All data
    public List<UserMark> getQuizData(int user_id){
        return usermarkRepo.findByUserId(user_id);
    }

}
