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
public class ViewSlot {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int id;


    @ManyToOne
    SignUp s;



}
