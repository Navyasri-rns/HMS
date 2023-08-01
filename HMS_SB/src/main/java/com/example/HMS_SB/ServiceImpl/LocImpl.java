package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.LocationEntity;
import com.example.HMS_SB.Repository.LocationRepo;
import com.example.HMS_SB.Service.LocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocImpl implements LocService {
    @Autowired
    private LocationRepo locationRepo;
    @Override
    public LocationEntity save(LocationEntity l) {
        return locationRepo.save(l);
    }
}
