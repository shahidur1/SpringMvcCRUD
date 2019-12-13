/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author TEACHER
 */
public class StudentDao {

    public void doSave(Student stu) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(stu);
        s.getTransaction().commit();
        s.close();
    }

    public void doDelete(Student stu) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(stu);
        s.getTransaction().commit();
        s.close();
    }

    public void doUpdate(Student stu) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(stu);
        s.getTransaction().commit();
        s.close();
    }

    public List<Student> findAllStudent() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Criteria cr = s.createCriteria(Student.class);
        List<Student> list = cr.list();
        //List<Student> list = s.createCriteria(Student.class).list();
        return list;
    }

    public List<Student> findStudentByID(Integer id) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
//        Query q = s.createQuery("Select s.stid From Student s Where s.stid:=a");
//        q.setParameter("a", id);
        Query q = s.createQuery("from Student where stid=" + id);

        List<Student> list = q.list();
        return list;
    }

    public List<Integer> findAllStudentID() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("Select stid From Student");
        List<Integer> list = q.list();
        return list;
    }

}
