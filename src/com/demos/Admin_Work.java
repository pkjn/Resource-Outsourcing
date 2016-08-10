package com.demos;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

public class Admin_Work extends ActionSupport{
	public String allAdmin()
	{
		Configuration cfg=new Configuration();
		SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
		Session ses=sfg.openSession();
		try{
			Transaction tc=ses.beginTransaction();
			Query q=ses.createQuery("from Admin");
			ArrayList<Admin>ar=(ArrayList<Admin>)q.list();
			System.out.println(ar.size());
			ServletActionContext.getRequest().getSession().setAttribute("alladmin", ar);
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
	public String allJs()
	{
		Configuration cfg=new Configuration();
		SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
		Session ses=sfg.openSession();
		try{
			Transaction tc=ses.beginTransaction();
			Query q=ses.createQuery("from JobSeeker");
			ArrayList<JobSeeker>ar=(ArrayList<JobSeeker>)q.list();
			System.out.println(ar.size());
			ServletActionContext.getRequest().getSession().setAttribute("alljs", ar);
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
	public String allJp()
	{
		Configuration cfg=new Configuration();
		SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
		Session ses=sfg.openSession();
		try{
			Transaction tc=ses.beginTransaction();
			
			Query q=ses.createQuery("from JobProvider");
			ArrayList<JobProvider>ar=(ArrayList<JobProvider>)q.list();
			System.out.println(ar.size());
			ServletActionContext.getRequest().getSession().setAttribute("alljp", ar);
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
