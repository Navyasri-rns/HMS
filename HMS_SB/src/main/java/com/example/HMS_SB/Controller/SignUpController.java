package com.example.HMS_SB.Controller;

import com.example.HMS_SB.Entity.*;
import com.example.HMS_SB.Service.*;
import com.example.HMS_SB.ServiceImpl.BookSlotImpl;
import com.example.HMS_SB.ServiceImpl.DepartmentImpl;
import com.example.HMS_SB.ServiceImpl.SignUpImpl;
import com.example.HMS_SB.ServiceImpl.ViewSlotImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
@SessionAttributes({"user" , "loc","dep"})
@Controller
public class SignUpController {
    @Autowired
    private SignUpImpl ss;

    @GetMapping("/register")
    public String save(SignUp signUp){
        return "Registration";
    }

    @PostMapping("/register")
    public String create(@ModelAttribute SignUp s, Model m){
        ss.create(s);
        if(!m.containsAttribute("user")){
            m.addAttribute("user");
        }
        m.addAttribute("id", s.getId());
        m.addAttribute("name", s.getName());
        return "welcome";
    }

    @GetMapping("/login")
    public String find(){
    return "loginPage";
    }

    @PostMapping("/login")
    public String find(@RequestParam int id, @RequestParam String password, Model map){
    SignUp i = ss.getById(id);
    if(!map.containsAttribute("user")){
        map.addAttribute("user", i);
    }

    if(i !=null && ((i.getPassword()).equals(password))){
        return "loginSuccess";
    }
    else{
        return "Invalid";
    }
    }

    @GetMapping("/update")
    public String update(){
    return "updatePatient";
    }

    @PostMapping("/update")
    public String upd(@ModelAttribute SignUp s){
    ss.update(s);
    return "viewUpdated";
    }

//Location Page
    @Autowired
    private LocService locService;
    @GetMapping("/location")
    public String save(LocationEntity l){
        return "Location";
    }

    @PostMapping("/location")
    public String create( @ModelAttribute LocationEntity locationEntity,@ModelAttribute("user") SignUp s, Model map){
        SignUp s1 = ss.getById(s.getId());

        locationEntity.setS(s1);

        locService.save(locationEntity);
        map.addAttribute("loc", locationEntity);
        return "Department";
    }


    //Department Page
    @Autowired
    private DepartmentImpl ds;
    @PostMapping("/department")
    public String save(@ModelAttribute Department d, @ModelAttribute("loc") LocationEntity l, @ModelAttribute("user") SignUp s,Model model){
        SignUp s2 = ss.getById(s.getId());
        d.setL(l);
        d.setS(s);
        ds.save(d);
        model.addAttribute("dep",d);
        return "redirect:/bookSlot";
    }

    //Doctors Login
    @Autowired
    private DoctorService doctorService;
    @GetMapping("/doctorslogin")
    public String save(DoctorsLogin d){
        return "DoctorsLogin";
    }

    @PostMapping("/doctorslogin")
    public String create(@RequestParam int a1, @RequestParam String a2){

        DoctorsLogin d = doctorService.getById(a1);
        if(d!=null && ((d.getDoctorid())==a1) && ((d.getPassword()).equals(a2))) {
            return "DoctorLoginSuccess";
        }else{
            return null;
        }
    }

//BookSlot Page
    @Autowired
    private BookSlotImpl bi;

    @PostMapping("/bookSlot")
    public String cre(@ModelAttribute("user") SignUp u, @ModelAttribute BookSlot b){
        b.setS(u);
        bi.save(b);
        return "Final";
    }

  

    @Autowired
    private ViewSlotImpl viewSlotimpl;
//    @Autowired
//    ViewSlotRepo viewSlotRepo;
//    @GetMapping("/view")
//    public String view(){
//        return "Slot.html";
//    }
//    @PostMapping("/view")
//    public String v(@ModelAttribute("user") SignUp u, @ModelAttribute("dep") Department d,ViewSlot viewSlot,Model model){
//
//        model.addAttribute("cc",viewSlotimpl.save(viewSlotimpl.findById(u.getId())));
//
//
//        return "Slot.html";
//
//    }


}
