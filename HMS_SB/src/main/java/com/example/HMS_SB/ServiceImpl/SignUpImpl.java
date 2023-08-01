package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.SignUp;
import com.example.HMS_SB.Repository.SignUpRepo;
import com.example.HMS_SB.Service.SignUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignUpImpl implements SignUpService {
    @Autowired
    private SignUpRepo sr;

    public SignUp create(SignUp signUp){
        return sr.save(signUp);

    }
    public SignUp getById(int id){
        return sr.findById(id).get();
    }

    public SignUp update(SignUp signUp){
        SignUp s = sr.findById(signUp.getId()).get();
        s.setId(signUp.getId());
        s.setName(signUp.getName());
        s.setDob(signUp.getDob());
        s.setPhno(signUp.getPhno());
        s.setPassword(signUp.getPassword());
        return  sr.save(signUp);
    }




}
