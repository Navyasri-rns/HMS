package com.example.HMS_SB.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "doctordoctorsdata")
public class DoctorsLogin {
@Id
    private int doctorid;
    private String doctorname;
    private String speciality;
    private String hospitalname;
    private String password;

}
