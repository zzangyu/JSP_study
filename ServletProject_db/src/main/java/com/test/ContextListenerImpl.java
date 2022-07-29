package com.test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListenerImpl implements ServletContextListener {

    public ContextListenerImpl() {
    	
    }

    // 웹 어플리케이션 제거
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("웹 어플리케이션 제거");
    }

    // 웹 어플리케이션 초기화
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("웹 어플리케이션 초기화");
    }
	
}
