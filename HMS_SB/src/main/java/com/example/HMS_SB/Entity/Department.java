package com.example.HMS_SB.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity@Data@NoArgsConstructor@AllArgsConstructor
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ba_id;
    private String hospital_name;
    private String speciality;
    private String doctor_name;
    private String appointment_date;

    @ManyToOne
    SignUp s;
    @ManyToOne
    LocationEntity l;
}
