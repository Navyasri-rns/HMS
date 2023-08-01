package com.example.HMS_SB.Repository;

import com.example.HMS_SB.Entity.BookSlot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookSlotRepo extends JpaRepository<BookSlot, Integer> {
}
