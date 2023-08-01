package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.DoctorsLogin;
import com.example.HMS_SB.Repository.DoctorRepo;
import com.example.HMS_SB.Service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorImpl implements DoctorService {
    @Autowired
    private DoctorRepo dr;
    @Override
    public DoctorsLogin save(DoctorsLogin doctorsLogin) {
        return dr.save(doctorsLogin);
    }

    @Override
    public DoctorsLogin getById(int id) {
        return dr.getById(id);
    }
}
