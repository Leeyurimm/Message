package kh.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.web.dao.MessageDAO;
import kh.web.dto.MessageDTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String requestURI = request.getRequestURI();
			String contextPath = request.getContextPath();
			String realPath = requestURI.substring(contextPath.length());
			
			MessageDAO dao = new MessageDAO();
			MessageDTO dto = new MessageDTO();
			
			if(realPath.equals("/input.do")) {
				
				String name = request.getParameter("name");
				String message = request.getParameter("message");
				
				int result = dao.insertMessage(name,message);
				
				request.setAttribute("result", result);
				
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
				
			}
			else if(realPath.equals("/output.do")) {
				List<MessageDTO> result = dao.getAllData();
				
				request.setAttribute("result", result);
				
				RequestDispatcher rd = request.getRequestDispatcher("output.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
