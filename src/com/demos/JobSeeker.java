package com.demos;


import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

@Entity
public class JobSeeker extends ActionSupport{
	@Id
	@SequenceGenerator(name="sq",initialValue=1)
	@GeneratedValue(generator="sq",strategy=GenerationType.SEQUENCE)
	private int Js_id;
	private String Js_name;
	public int getJs_id() {
		return Js_id;
	}
	public void setJs_id(int js_id) {
		Js_id = js_id;
	}
	public String getJs_name() {
		return Js_name;
	}
	public void setJs_name(String js_name) {
		Js_name = js_name;
	}
	public String getJs_email() {
		return Js_email;
	}
	public void setJs_email(String js_email) {
		Js_email = js_email;
	}
	public String getJs_phone() {
		return Js_phone;
	}
	public void setJs_phone(String js_phone) {
		Js_phone = js_phone;
	}
	public String getJs_address() {
		return Js_address;
	}
	public void setJs_address(String js_address) {
		Js_address = js_address;
	}
	public String getJs_pin() {
		return Js_pin;
	}
	public void setJs_pin(String js_pin) {
		Js_pin = js_pin;
	}
	public String getJs_country() {
		return Js_country;
	}
	public void setJs_country(String js_country) {
		Js_country = js_country;
	}
	public String getJs_city() {
		return Js_city;
	}
	public void setJs_city(String js_city) {
		Js_city = js_city;
	}
	public String getJs_uname() {
		return Js_uname;
	}
	public void setJs_uname(String js_uname) {
		Js_uname = js_uname;
	}
	public String getJs_pass() {
		return Js_pass;
	}
	public void setJs_pass(String js_pass) {
		Js_pass = js_pass;
	}
	public String getJs_repass() {
		return Js_repass;
	}
	public void setJs_repass(String js_repass) {
		Js_repass = js_repass;
	}
	@Column(nullable=false,unique=true)
	private String Js_email;
	@Column(nullable=false,unique=true)
	private String Js_phone;
	private String Js_address;
	private String Js_pin;
	private String Js_country;
	private String Js_city;
	@Column(nullable=false,unique=true)
	private String Js_uname;
	private String Js_pass;
	@Transient
	private String Js_repass;
	@Override
	public String execute() {
		if(Js_pass.equalsIgnoreCase(Js_repass))
		{
			Configuration cfg=new Configuration();
			SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
				ses.save(this);
				tc.commit();
				ses.clear();
				tc=ses.beginTransaction();
				Query q=ses.createQuery("from JobSeeker where Js_email=? and Js_phone=? and Js_uname=?");
				q.setString(0, Js_email);
				q.setString(1, Js_phone);
				q.setString(2, Js_uname);
				ArrayList<JobSeeker>ar=(ArrayList<JobSeeker>)q.list();
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("JobSeeker", ar);
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
		}
		else
		{
		addFieldError("Js_repass", "Please Enter same password");
		return INPUT;
		}
		System.out.println("Ok");
		return INPUT;
	}

	public String update() {
		if(Js_pass.equalsIgnoreCase(Js_repass))
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
				ses.update(this);
				tc.commit();
				ses.clear();
				tc=ses.beginTransaction();
				Query q=ses.createQuery("from JobSeeker where Js_id=?");
				q.setParameter(0,jsm.getJs_id());
				ArrayList<JobSeeker>ar=(ArrayList<JobSeeker>)q.list();
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("JobSeeker", ar);
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

		}
		else
		{
		addFieldError("Js_repass", "Please Enter same password");
		return INPUT;
		}
		System.out.println("Ok");
		return INPUT;
	}


	}


	
	
	

