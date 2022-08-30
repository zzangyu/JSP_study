package mvc;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 명령어와 명령어 처리 클래스를 쌍으로 불러다가 저장

	private Map<String, Object> commandMap = new HashMap<String, Object>();
	// 명령어와 처리 클래스가 매핑되어 있는 Command.properties파일을 읽어와서 Map객체인 commandMap에 저장한다.
	
	public void init(ServletConfig config) throws ServletException {
		// web.xml 파일에서 propertyConfig에 해당하는 init-param의 값을 읽어옴
		String props = config.getInitParameter("propertyConfig");
		
		// 명령어와 처리클래스의 매핑정보를 저장할 Properties 객체를 생성함
		Properties pr = new Properties();
		
		String path = config.getServletContext().getRealPath("/WEB-INF");
		FileInputStream f = null;
		
		try {
			// Command.properties 파일의 내용을 읽어온다.
			f = new FileInputStream(new File(path, props));
			// Command.properties 파일의 정보를 Properties 객체에 저장한다.
			pr.load(f);
		} catch (IOException ie) {
			throw new ServletException(ie);
		} finally {
			if(f != null) try { f.close(); } catch(IOException ex) {}
		}
		
		// Iterator 객체를 이용해서 파일 내용의 키값을 얻어온다.
		// Iterator 객체를 생성한다.
		Iterator<Object> keyIter = pr.keySet().iterator();
		
		while(keyIter.hasNext()) {
			
			String command = (String)keyIter.next();
			String className = pr.getProperty(command);
			
			try {
				
				Class commandClass = Class.forName(className);
				Object commandInstance = commandClass.newInstance();
				// 해당 클래스의 객체를 생성한다.
				
				// Map 객체인 commandMap에 객체를 저장한다.
				commandMap.put(command, commandInstance);
				
			} catch (ClassNotFoundException e1) {
				throw new ServletException(e1);
			} catch (InstantiationException e2) {
				throw new ServletException(e2);
			} catch (IllegalAccessException e3) {
				throw new ServletException(e3);
				
			}
			
		}
		
	}
	
	// 서비스 방식(get)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}

	// 서비스 방식(post)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request, response);
	}
	// 사용자의 요청을 분석해서 해당 작업을 처리하는 기능을 구현
	private void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String view = null;
		CommandProcess com = null;
		try {
			String command = request.getRequestURI();
			if(command.indexOf(request.getContextPath()) == 0) {
				command = command.substring(request.getContextPath().length());
			}
			com = (CommandProcess)commandMap.get(command);
			view = com.requestPro(request, response);
		}catch (Throwable e) {
			throw new ServletException(e);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
		
	}

}
