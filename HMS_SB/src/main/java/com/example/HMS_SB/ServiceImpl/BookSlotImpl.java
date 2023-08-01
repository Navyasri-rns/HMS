package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.BookSlot;
import com.example.HMS_SB.Entity.SignUp;
import com.example.HMS_SB.Repository.BookSlotRepo;
import com.example.HMS_SB.Service.BookSlotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookSlotImpl implements BookSlotService {
    @Autowired
    private BookSlotRepo br;

    @Override
    public BookSlot save(BookSlot b) {
        return br.save(b);
    }
}
