package com.demos;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

public class JobSeeker_crud extends ActionSupport{
	
	private String Job_type,Job_skill;
	private int Job_year;
	public String getJob_type() {
		return Job_type;
	}
	public void setJob_type(String job_type) {
		Job_type = job_type;
	}
	public String getJob_skill() {
		return Job_skill;
	}
	public void setJob_skill(String job_skill) {
		Job_skill = job_skill;
	}
	public int getJob_year() {
		return Job_year;
	}
	public void setJob_year(int job_year) {
		Job_year = job_year;
	}
	public String getJob_loc() {
		return Job_loc;
	}
	public void setJob_loc(String job_loc) {
		Job_loc = job_loc;
	}
	private String Job_loc;
public String getAllJobs()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from Jobs where Job_type=? and Job_skill=? and Job_year=? and Job_loc=?");
		q.setParameter(0,Job_type);
		q.setParameter(1, Job_skill);
		q.setParameter(2, Job_year);
		q.setParameter(3, Job_loc);
		ArrayList<Jobs>job=(ArrayList<Jobs>)q.list();
		ServletActionContext.getRequest().getSession().setAttribute("jobs",job);	
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

public String AppliedJobs()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from Jobs where Job_id in (Select Job_id from ApplyJob where Js_id=?)");
		ArrayList<JobSeeker>js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
		JobSeeker jm=js.get(0);
		q.setParameter(0, jm.getJs_id());
		List<Jobs>job=(List<Jobs>)q.list();
		System.out.println(job.size());
		ServletActionContext.getRequest().getSession().setAttribute("appjobs",job);	
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

public String shortListed()
{
	Configuration cfg=new Configuration();
	SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
	Session ses=sfg.openSession();
	try{
		Transaction tc=ses.beginTransaction();
		Query q=ses.createQuery("from Jobs where Jp_id in (Select Jp_id from JobProvider_selected where Js_id=?)");
		ArrayList<JobSeeker>js=(ArrayList<JobSeeker>)ServletActionContext.getRequest().getSession().getAttribute("JobSeeker");
		JobSeeker jm=js.get(0);
		q.setParameter(0, jm.getJs_id());
		List<Jobs>job=(List<Jobs>)q.list();
		System.out.println(job.size());
		ServletActionContext.getRequest().getSession().setAttribute("shortlist",job);	
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
