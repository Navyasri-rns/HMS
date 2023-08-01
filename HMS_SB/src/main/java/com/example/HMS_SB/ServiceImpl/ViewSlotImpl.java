package com.example.HMS_SB.ServiceImpl;

import com.example.HMS_SB.Entity.ViewSlot;
import com.example.HMS_SB.Service.ViewSlotService;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class ViewSlotImpl implements ViewSlotService {
    private JdbcTemplate jdbcTemplate;

//    @Override
//    public Object save(ViewSlot v) {
//        String ins= "INSERT INTO view_slot(id,hospital_name,speciality,doctor_name) VALUES(?,?,?,?,);";
//        return jdbcTemplate.update(ins, v.getId());
//    }

    @Override
    public ViewSlot findById(int id) {
        String ins = "select hospital_name,speciality,doctor_name from department where id=?;";
        return jdbcTemplate.queryForObject(ins, BeanPropertyRowMapper.newInstance(ViewSlot.class));
    }

    /*@Override
    public int update(ViewSlot viewSlot) {
        String qry="update view_slot set id=?,hospital_name=?,speciality=?,doctor_name=? where s_id=?";
        return jdbcTemplate.update(qry,viewSlot.getId(),viewSlot.getHospital_name(),viewSlot.getSpeciality(),viewSlot.getDoctor_name());
    }*/


/*//    @Override
//    public ViewSlot save(ViewSlot viewSlot) {
//        String qry="SELECT hospital_name,speciality,doctor_name FROM department WHERE s_id=?";
//        return jdbcTemplate.queryForObject(qry, BeanPropertyRowMapper.newInstance(ViewSlot.class));
//    }*/


}
