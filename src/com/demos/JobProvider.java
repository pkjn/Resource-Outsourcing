package com.demos;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.opensymphony.xwork2.ActionSupport;

@Entity
public class JobProvider extends ActionSupport{
	@Id
	@SequenceGenerator(name="sq",initialValue=1)
	@GeneratedValue(generator="sq",strategy=GenerationType.SEQUENCE)
	private int Jp_id;
	public int getJp_id() {
		return Jp_id;
	}
	public void setJp_id(int jp_id) {
		Jp_id = jp_id;
	}
	public String getJp_name() {
		return Jp_name;
	}
	public void setJp_name(String jp_name) {
		Jp_name = jp_name;
	}
	public String getJp_email() {
		return Jp_email;
	}
	public void setJp_email(String jp_email) {
		Jp_email = jp_email;
	}
	public String getJp_phone() {
		return Jp_phone;
	}
	public void setJp_phone(String jp_phone) {
		Jp_phone = jp_phone;
	}
	public String getJp_address() {
		return Jp_address;
	}
	public void setJp_address(String jp_address) {
		Jp_address = jp_address;
	}
	public String getJp_pin() {
		return Jp_pin;
	}
	public void setJp_pin(String jp_pin) {
		Jp_pin = jp_pin;
	}
	public String getJp_country() {
		return Jp_country;
	}
	public void setJp_country(String jp_country) {
		Jp_country = jp_country;
	}
	public String getJp_city() {
		return Jp_city;
	}
	public void setJp_city(String jp_city) {
		Jp_city = jp_city;
	}
	public String getJp_uname() {
		return Jp_uname;
	}
	public void setJp_uname(String jp_uname) {
		Jp_uname = jp_uname;
	}
	public String getJp_pass() {
		return Jp_pass;
	}
	public void setJp_pass(String jp_pass) {
		Jp_pass = jp_pass;
	}
	public String getJp_repass() {
		return Jp_repass;
	}
	public void setJp_repass(String jp_repass) {
		Jp_repass = jp_repass;
	}
	private String Jp_name;
	@Column(nullable=false,unique=true)
	private String Jp_email;
	@Column(nullable=false,unique=true)
	private String Jp_phone;
	private String Jp_address;
	private String Jp_pin;
	private String Jp_country;
	private String Jp_city;
	@Column(nullable=false,unique=true)
	private String Jp_uname;
	private String Jp_pass;
	@Transient
	private String Jp_repass;
	@Override
	public String execute() {
		if(Jp_pass.equalsIgnoreCase(Jp_repass))
		{
			Configuration cfg=new Configuration();
			SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
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
		}
		else
		{
		addFieldError("Jp_repass", "Please Enter same password");
		return INPUT;
		}
		System.out.println("Ok");
		return INPUT;
	}
	

	}


	
	
	

