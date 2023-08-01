package com.example.HMS_SB.Repository;

import com.example.HMS_SB.Entity.DoctorsLogin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepo extends JpaRepository<DoctorsLogin, Integer> {
}
