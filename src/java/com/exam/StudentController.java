/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.List;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author TEACHER
 */
@Controller
public class StudentController {

    @RequestMapping("/save")
    public String doSave(@Valid @ModelAttribute("stu") Student s, BindingResult result, Model m) {
        if (result.hasErrors()) {
            return "savepage";
        }
        StudentDao dao = new StudentDao();
        dao.doSave(s);
        List<Student> list = dao.findAllStudent();
        m.addAttribute("ai", list);
        return "show";
    }

    @RequestMapping("/show")
    public String doShow(Model m) {
        StudentDao dao = new StudentDao();
        List<Student> list = dao.findAllStudent();
        m.addAttribute("ai", list);
        return "show";
    }

    @RequestMapping("/")
    public String doShowRoot(Model m) {
        StudentDao dao = new StudentDao();
        List<Student> list = dao.findAllStudent();
        m.addAttribute("ai", list);
        return "show";
    }

    @RequestMapping("/delete")
    public String doDelete(@ModelAttribute("stu") Student s, Model m) {
        StudentDao dao = new StudentDao();
        dao.doDelete(s);
        List<Student> list = dao.findAllStudent();
        m.addAttribute("ai", list);
        return "show";
    }

    @RequestMapping("/preupdate")
    public String doUpdatePage(@ModelAttribute("stu") Student s, Model m) {
        StudentDao dao = new StudentDao();
        List<Student> list = dao.findStudentByID(s.getStid());
        m.addAttribute("ai", list);
        return "updatepage";
    }

    @RequestMapping("/update")
    public String doUpdate(@Valid @ModelAttribute("stu") Student s, BindingResult result, Model m) {
        if (result.hasErrors()) {
            return "updatepage";
        }
        StudentDao dao = new StudentDao();
        dao.doUpdate(s);
        List<Student> list = dao.findAllStudent();
        m.addAttribute("ai", list);
        return "show";
    }

}
