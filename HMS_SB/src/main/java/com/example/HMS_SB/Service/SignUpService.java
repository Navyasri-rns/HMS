package com.example.HMS_SB.Service;

import com.example.HMS_SB.Entity.SignUp;
import org.springframework.stereotype.Service;

public interface SignUpService {

    public SignUp create(SignUp signUp);
    public SignUp getById(int id);
    public SignUp update(SignUp signUp);
}
