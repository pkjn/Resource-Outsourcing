package com.demos;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;
@Entity
public class JobSeek_Education extends ActionSupport {
@Id
@SequenceGenerator(name="sq",initialValue=1)
@GeneratedValue(generator="sq",strategy=GenerationType.SEQUENCE)
private int Js_edu_id;

@Column(unique=true,nullable=false)
private int Js_id;

public int getJs_edu_id() {
	return Js_edu_id;
}
public void setJs_edu_id(int js_edu_id) {
	Js_edu_id = js_edu_id;
}
public int getJs_id() {
	return Js_id;
}
public void setJs_id(int js_id) {
	Js_id = js_id;
}
public String getJs_10() {
	return Js_10;
}
public void setJs_10(String js_10) {
	Js_10 = js_10;
}
public int getJs10_marks() {
	return Js10_marks;
}
public void setJs10_marks(int js10_marks) {
	Js10_marks = js10_marks;
}
public int getJs10_total() {
	return Js10_total;
}
public void setJs10_total(int js10_total) {
	Js10_total = js10_total;
}
public double getJs10_avg() {
	return Js10_avg;
}
public void setJs10_avg(double js10_avg) {
	Js10_avg = js10_avg;
}
public String getJs10_uni() {
	return Js10_uni;
}
public void setJs10_uni(String js10_uni) {
	Js10_uni = js10_uni;
}
public String getJs_12() {
	return Js_12;
}
public void setJs_12(String js_12) {
	Js_12 = js_12;
}
public int getJs12_marks() {
	return Js12_marks;
}
public void setJs12_marks(int js12_marks) {
	Js12_marks = js12_marks;
}
public int getJs12_total() {
	return Js12_total;
}
public void setJs12_total(int js12_total) {
	Js12_total = js12_total;
}
public double getJs12_avg() {
	return Js12_avg;
}
public void setJs12_avg(double js12_avg) {
	Js12_avg = js12_avg;
}
public String getJs12_uni() {
	return Js12_uni;
}
public void setJs12_uni(String js12_uni) {
	Js12_uni = js12_uni;
}
public String getJs_13() {
	return Js_13;
}
public void setJs_13(String js_13) {
	Js_13 = js_13;
}
public int getJs13_marks() {
	return Js13_marks;
}
public void setJs13_marks(int js13_marks) {
	Js13_marks = js13_marks;
}
public int getJs13_total() {
	return Js13_total;
}
public void setJs13_total(int js13_total) {
	Js13_total = js13_total;
}
public double getJs13_avg() {
	return Js13_avg;
}
public void setJs13_avg(double js13_avg) {
	Js13_avg = js13_avg;
}
public String getJs13_uni() {
	return Js13_uni;
}
public void setJs13_uni(String js13_uni) {
	Js13_uni = js13_uni;
}
public String getJs_14() {
	return Js_14;
}
public void setJs_14(String js_14) {
	Js_14 = js_14;
}
public int getJs14_marks() {
	return Js14_marks;
}
public void setJs14_marks(int js14_marks) {
	Js14_marks = js14_marks;
}
public int getJs14_total() {
	return Js14_total;
}
public void setJs14_total(int js14_total) {
	Js14_total = js14_total;
}
public double getJs14_avg() {
	return Js14_avg;
}
public void setJs14_avg(double js14_avg) {
	Js14_avg = js14_avg;
}
public String getJs14_uni() {
	return Js14_uni;
}
public void setJs14_uni(String js14_uni) {
	Js14_uni = js14_uni;
}
public String getJs_15() {
	return Js_15;
}
public void setJs_15(String js_15) {
	Js_15 = js_15;
}
public int getJs15_marks() {
	return Js15_marks;
}
public void setJs15_marks(int js15_marks) {
	Js15_marks = js15_marks;
}
public int getJs15_total() {
	return Js15_total;
}
public void setJs15_total(int js15_total) {
	Js15_total = js15_total;
}
public double getJs15_avg() {
	return Js15_avg;
}
public void setJs15_avg(double js15_avg) {
	Js15_avg = js15_avg;
}
public String getJs15_uni() {
	return Js15_uni;
}
public void setJs15_uni(String js15_uni) {
	Js15_uni = js15_uni;
}
private String Js_10;
private int Js10_marks;
private int Js10_total;
private double Js10_avg;
private String Js10_uni;
//12
private String Js_12;
private int Js12_marks;
private int Js12_total;
private double Js12_avg;
private String Js12_uni;
//13
private String Js_13;
private int Js13_marks;
private int Js13_total;
private double Js13_avg;
private String Js13_uni;
//14
private String Js_14;
private int Js14_marks;
private int Js14_total;
private double Js14_avg;
private String Js14_uni;
//15
private String Js_15;
private int Js15_marks;
private int Js15_total;
private double Js15_avg;
private String Js15_uni;

@Override
public String execute() throws Exception {
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		 ArrayList<JobSeeker> js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
		JobSeeker jsm=js.get(0);	
		System.out.println(jsm.getJs_id());
		this.setJs_id(jsm.getJs_id());
		ses.save(this);
		tc.commit();
		return SUCCESS;
	}catch(Exception ex)
	{
		System.out.println(ex);
	}
	finally{
		ses.close();
		sfg.close();
	}
	return INPUT;
}
public String getInfo()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		 ArrayList<JobSeeker> js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
		JobSeeker jsm=js.get(0);	
		System.out.println(jsm.getJs_id());
		this.setJs_id(jsm.getJs_id());
		Query q=ses.createQuery("from JobSeek_Education where Js_id=?");
		q.setParameter(0, jsm.getJs_id());
		ArrayList<JobSeek_Education> ar=(ArrayList<JobSeek_Education>) q.list();
		ServletActionContext.getRequest().getSession().setAttribute("edu", ar);
		System.out.println(ar.size());
		tc.commit();
		return SUCCESS;
	}catch(Exception ex)
	{
		System.out.println(ex);
	}
	finally{
		ses.close();
		sfg.close();
	}
	return INPUT;
	
}
public String update()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		 ArrayList<JobSeeker> js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
		 JobSeeker jsm=js.get(0);	
		 System.out.println(jsm.getJs_id());
		 this.setJs_id(jsm.getJs_id());
		 ArrayList<JobSeek_Education>edu=(ArrayList<JobSeek_Education>)ServletActionContext.getRequest().getSession().getAttribute("edu");
		 JobSeek_Education m=edu.get(0);
		 this.setJs_edu_id(m.getJs_edu_id());
		 ses.update(this);
		 tc.commit();
		return SUCCESS;
	}catch(Exception ex)
	{
		System.out.println(ex);
	}
	finally{
		ses.close();
		sfg.close();
	}
	return INPUT;
}

}
