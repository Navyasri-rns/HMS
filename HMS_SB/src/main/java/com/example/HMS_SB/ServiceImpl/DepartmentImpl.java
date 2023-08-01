package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.Department;
import com.example.HMS_SB.Repository.DepartmentRepo;
import com.example.HMS_SB.Service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentImpl implements DepartmentService {

    @Autowired
    private DepartmentRepo dr;
    @Override
    public Department save(Department s) {
        return dr.save(s);
    }
}
