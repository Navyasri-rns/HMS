package com.example.HMS_SB.Service;

import com.example.HMS_SB.Entity.DoctorsLogin;

public interface DoctorService {

    public DoctorsLogin save(DoctorsLogin doctorsLogin);

    public DoctorsLogin getById(int id);
}
