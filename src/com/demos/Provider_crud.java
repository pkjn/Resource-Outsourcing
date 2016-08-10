package com.demos;

import java.util.ArrayList;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

public class Provider_crud extends ActionSupport{
	private int Js_id;
	public int getJs_id() {
		return Js_id;
	}
	public void setJs_id(int js_id) {
		Js_id = js_id;
	}
	private int Job_id;
	private int Jp_id;
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
public String getAllJobs()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from Jobs where JP_ID=?");
		ArrayList<JobProvider> js=(ArrayList<JobProvider>)ServletActionContext.getRequest().getSession().getAttribute("JobProvider");
		JobProvider jsm=js.get(0);	
		q.setParameter(0, jsm.getJp_id());
		ArrayList<Jobs>job=(ArrayList<Jobs>)q.list();
		ServletActionContext.getRequest().getSession().setAttribute("jobs",job);
		System.out.println(jsm.getJp_id());		
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
public String listOfCondidate()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from JobSeeker where Js_id in (Select Js_id from ApplyJob where Job_id=? and Jp_id=?)");
		q.setParameter(0, Job_id);
		q.setParameter(1, Jp_id);
		ArrayList<JobSeeker>job=(ArrayList<JobSeeker>)q.list();
		ServletActionContext.getRequest().getSession().setAttribute("condidate",job);
		ServletActionContext.getRequest().getSession().setAttribute("Job_id",new Integer(Job_id));
		
		System.out.println(job.size());		
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
public String showEducation()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from JobSeek_Education where Js_id= ?");
		q.setParameter(0, Js_id);
		
		ArrayList<JobSeek_Education>job=(ArrayList<JobSeek_Education>)q.list();
		ServletActionContext.getRequest().getSession().setAttribute("condidate_edu",job);
		
		System.out.println(job.size());		
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

public String showPro()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from JobSeek_Professional where Js_id= ?");
		q.setParameter(0, Js_id);
		
		ArrayList<JobSeek_Professional>job=(ArrayList<JobSeek_Professional>)q.list();
		ServletActionContext.getRequest().getSession().setAttribute("condidate_pro",job);
		
		System.out.println(job.size());		
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
