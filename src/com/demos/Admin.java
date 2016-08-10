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
public class Admin extends ActionSupport{
	@Id
	@SequenceGenerator(name="sq_ad",initialValue=1)
	@GeneratedValue(generator="sq_ad",strategy=GenerationType.SEQUENCE)
	private int Ad_id;
	private String Ad_name;
	@Column(nullable=false,unique=true)
	private String Ad_email;
	@Column(nullable=false,unique=true)
	private String Ad_phone;
	private String Ad_address;
	private String Ad_pin;
	private String Ad_country;
	private String Ad_city;
	@Column(nullable=false,unique=true)
	private String Ad_uname;
	private String Ad_pass;
	@Transient
	private String Ad_repass;
	@Override
	public String execute() {
		if(Ad_pass.equalsIgnoreCase(Ad_repass))
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
				Query q=ses.createQuery("from Admin where Ad_email=? and Ad_phone=? and Ad_uname=?");
				q.setString(0, Ad_email);
				q.setString(1, Ad_phone);
				q.setString(2, Ad_uname);
				ArrayList<Admin>ar=(ArrayList<Admin>)q.list();
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("Admin", ar);
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
		addFieldError("Ad_repass", "Please Enter same password");
		return INPUT;
		}
		System.out.println("Ok");
		return INPUT;
	}

	public String update() {
		if(Ad_pass.equalsIgnoreCase(Ad_repass))
		{
			Configuration cfg=new Configuration();
			SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
				ArrayList<Admin> Ad=(ArrayList<Admin>)ServletActionContext.getRequest().getSession().getAttribute("Admin");
				Admin Adm=Ad.get(0);	
				System.out.println(Adm.getAd_id());
				this.setAd_id(Adm.getAd_id());
				ses.update(this);
				tc.commit();
				ses.clear();
				tc=ses.beginTransaction();
				Query q=ses.createQuery("from Admin where Ad_id=?");
				q.setParameter(0,Adm.getAd_id());
				ArrayList<Admin>ar=(ArrayList<Admin>)q.list();
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("Admin", ar);
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
		addFieldError("Ad_repass", "Please Enter same password");
		return INPUT;
		}
		System.out.println("Ok");
		return INPUT;
	}

	public int getAd_id() {
		return Ad_id;
	}

	public void setAd_id(int ad_id) {
		Ad_id = ad_id;
	}

	public String getAd_name() {
		return Ad_name;
	}

	public void setAd_name(String ad_name) {
		Ad_name = ad_name;
	}

	public String getAd_email() {
		return Ad_email;
	}

	public void setAd_email(String ad_email) {
		Ad_email = ad_email;
	}

	public String getAd_phone() {
		return Ad_phone;
	}

	public void setAd_phone(String ad_phone) {
		Ad_phone = ad_phone;
	}

	public String getAd_address() {
		return Ad_address;
	}

	public void setAd_address(String ad_address) {
		Ad_address = ad_address;
	}

	public String getAd_pin() {
		return Ad_pin;
	}

	public void setAd_pin(String ad_pin) {
		Ad_pin = ad_pin;
	}

	public String getAd_country() {
		return Ad_country;
	}

	public void setAd_country(String ad_country) {
		Ad_country = ad_country;
	}

	public String getAd_city() {
		return Ad_city;
	}

	public void setAd_city(String ad_city) {
		Ad_city = ad_city;
	}

	public String getAd_uname() {
		return Ad_uname;
	}

	public void setAd_uname(String ad_uname) {
		Ad_uname = ad_uname;
	}

	public String getAd_pass() {
		return Ad_pass;
	}

	public void setAd_pass(String ad_pass) {
		Ad_pass = ad_pass;
	}

	public String getAd_repass() {
		return Ad_repass;
	}

	public void setAd_repass(String ad_repass) {
		Ad_repass = ad_repass;
	}


	}


	
	
	

