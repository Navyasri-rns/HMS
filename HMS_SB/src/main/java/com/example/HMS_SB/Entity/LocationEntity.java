package com.example.HMS_SB.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LocationEntity {
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
     private int lid;
     private String District;
     private String Areas;
     private int Pincode;

     @ManyToOne
     SignUp s;

}
