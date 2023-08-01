package com.example.HMS_SB.Repository;

import com.example.HMS_SB.Entity.ViewSlot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ViewSlotRepo extends JpaRepository<ViewSlot, Integer> {
}
