package com.demos;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.servlet.Servlet;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

@Entity
public class JobProvider_selected extends ActionSupport{
	@Id
	@SequenceGenerator(name="sem",initialValue=1)
	@GeneratedValue(generator="sem",strategy=GenerationType.SEQUENCE)
private int Se_id;
	@Column(nullable=false)
private int Job_id;
	@Column(nullable=false)
private int Jp_id;
	@Column(nullable=false)
private int Js_id;
private String Se_date;
	
	
	public int getSe_id() {
	return Se_id;
}
public void setSe_id(int se_id) {
	Se_id = se_id;
}
public String getSe_date() {
	return Se_date;
}
public void setSe_date(String se_date) {
	Se_date = se_date;
}
	public int getJob_id() {
		return Job_id;
	}
	public void setJob_id(int job_id) {
		Job_id = job_id;
	}
	public int getJp_id() {
		return Jp_id;
	}
	public void setJp_id(int jp_id) {
		Jp_id = jp_id;
	}
	public int getJs_id() {
		return Js_id;
	}
	public void setJs_id(int js_id) {
		Js_id = js_id;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Configuration cfg=new Configuration();
		SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
		Session ses=sfg.openSession();
		try{
			Transaction tc=ses.beginTransaction();
			 Query q=ses.createQuery("from JobProvider_selected where Js_id=? and Job_id=? and Jp_id=?");
			 q.setParameter(0,Js_id);
			 q.setParameter(1, Job_id);
			 ArrayList<JobProvider> js=(ArrayList<JobProvider>)ServletActionContext.getRequest().getSession().getAttribute("JobProvider");
			 JobProvider jsm=js.get(0);	
			 System.out.println(jsm.getJp_id());
			 this.setJp_id(jsm.getJp_id());
			 q.setParameter(2, Jp_id);
			 ArrayList<JobProvider_selected>sp=(ArrayList<JobProvider_selected>)q.list();
			 if(sp.size()==0)
			 {
				 Date curr=new Date();
				 Se_date=new SimpleDateFormat("MM/dd/yyyy").format(curr).toString();
				 ses.save(this);
			 }
			 else
			 {
				 System.out.println("Alreay Selected");
				 ServletActionContext.getRequest().getSession().setAttribute("Errormsg", "Already Selected");
			 }
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
		return NONE;
	}
	
}
