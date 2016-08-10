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

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

@Entity
public class ApplyJob extends ActionSupport{
	@Id
	@SequenceGenerator(name="sm",initialValue=1)
	@GeneratedValue(generator="sm",strategy=GenerationType.SEQUENCE)
private int Ap_id;
	@Column(nullable=false)
private int Job_id;
	@Column(nullable=false)
private int Jp_id;
	@Column(nullable=false)
private int Js_id;
private String Ap_date;
	public String getAp_date() {
	return Ap_date;
}
public void setAp_date(String ap_date) {
	Ap_date = ap_date;
}
	public int getAp_id() {
		return Ap_id;
	}
	public void setAp_id(int ap_id) {
		Ap_id = ap_id;
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
	
	
			/*Transaction tc=ses.beginTransaction();
			 ArrayList<JobSeeker> js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
			 JobSeeker jsm=js.get(0);	
			 System.out.println(jsm.getJs_id());
			 this.setJs_id(jsm.getJs_id());
			 Date curr=new Date();
			 Ap_date=new SimpleDateFormat("MM/dd/YYYY").format(curr).toString();
			 ses.save(this);
			tc.commit();*/
			
			try{
				Transaction tc=ses.beginTransaction();
				 Query q=ses.createQuery("from JobProvider_selected where Js_id=? and Job_id=? and Jp_id=?");
				System.out.println("Job ID"+Job_id);
				 q.setParameter(1, Job_id);
				 ArrayList<JobSeeker> js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
				 JobSeeker jsm=js.get(0);	
				 System.out.println(jsm.getJs_id());
				 this.setJs_id(jsm.getJs_id());
				 q.setParameter(2, Jp_id);
				 q.setParameter(0,Js_id);
				 System.out.println(Jp_id+" "+Js_id+" "+Job_id);
				 ArrayList<JobProvider_selected>sp=(ArrayList<JobProvider_selected>)q.list();
				 System.out.println("sp size"+sp.size());
				 if(sp.size()==0)
				 {
					Date curr=new Date();
					 Ap_date=new SimpleDateFormat("MM/dd/yyyy").format(curr).toString();
					//Ap_date="08/03/2016";
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
