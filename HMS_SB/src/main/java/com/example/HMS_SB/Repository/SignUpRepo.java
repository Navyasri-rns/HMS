package com.example.HMS_SB.Repository;

import com.example.HMS_SB.Entity.SignUp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SignUpRepo extends JpaRepository<SignUp, Integer> {
}
