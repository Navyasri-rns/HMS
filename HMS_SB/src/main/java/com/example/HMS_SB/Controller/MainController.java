package com.example.HMS_SB.Controller;

import com.example.HMS_SB.Entity.Department;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/AboutUs")
    public String getAboutUs(){
        return "AboutUs";
    }

    @GetMapping("/ContactUs")
    public String getContactUs(){
        return "ContactUs";
    }

    @GetMapping("/department")
    public String create(){
        return "Department";
    }
    @GetMapping("/bookSlot")
    public String bslot(){
        return "BookSlot";
    }

}
