package com.demos;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.opensymphony.xwork2.ActionSupport;

public class Myhql extends ActionSupport{
	private String type;
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTuser() {
		return tuser;
	}

	public void setTuser(String tuser) {
		this.tuser = tuser;
	}

	public String getTpass() {
		return tpass;
	}

	public void setTpass(String tpass) {
		this.tpass = tpass;
	}

	private String tuser;
	private String tpass;

	@Override
	public String execute() throws Exception {
		Configuration cfg=new Configuration();
		SessionFactory sfg=cfg.configure("hybernate_update.xml").buildSessionFactory();
		if(type.equalsIgnoreCase("Admin"))
		{
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
				Query q=ses.createQuery("from Admin where Ad_uname=? and Ad_pass=?");
				q.setString(0, tuser);
				q.setString(1, tpass);
				ArrayList<Admin>ar=(ArrayList<Admin>)q.list();
				if(ar.size()>0){
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("Admin", ar);
				tc.commit();
				return "AD";
				}
				else
				{
					addActionError("User Name or Password is Incorrect");
					return INPUT;
				}
				
				
			}catch(Exception ex)
			{
				System.out.println(ex);
			}
			finally{
				ses.close();
				sfg.close();
			}
		
		
		}
		else if(type.equalsIgnoreCase("JobProvider"))
		{
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
				Query q=ses.createQuery("from JobProvider where Jp_uname=? and Jp_pass=?");
				q.setString(0, tuser);
				q.setString(1, tpass);
				ArrayList<JobProvider>ar=(ArrayList<JobProvider>)q.list();
				if(ar.size()>0){
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("JobProvider", ar);
				tc.commit();
				return "JP";
				}
				else
				{
					addActionError("User Name or Password is Incorrect");
					return INPUT;
				}
				
				
			}catch(Exception ex)
			{
				System.out.println(ex);
			}
			finally{
				ses.close();
				sfg.close();
			}
		
		}
		else if(type.equalsIgnoreCase("JobSeeker"))
		{
			Session ses=sfg.openSession();
			try{
				Transaction tc=ses.beginTransaction();
				Query q=ses.createQuery("from JobSeeker where Js_uname=? and Js_pass=?");
				q.setString(0, tuser);
				q.setString(1, tpass);
				ArrayList<JobSeeker>ar=(ArrayList<JobSeeker>)q.list();
				if(ar.size()>0){
				System.out.println(ar.size());
				ServletActionContext.getRequest().getSession().setAttribute("JobSeeker", ar);
				tc.commit();
				return "JS";
				}
				else
				{
					addActionError("User Name or Password is Incorrect");
					return INPUT;
				}
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
			sfg.close();
		}
		
		return INPUT;
}
}
