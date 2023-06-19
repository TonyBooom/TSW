package Control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Mod.OrdineBean;
import Mod.OrdineDAO;
import Mod.UtenteBean;

/**
 * Servlet implementation class Mostra_ordini_utente
 */
@WebServlet("/Mostra_ordini_utente")
public class Mostra_ordini_utente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mostra_ordini_utente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		OrdineDAO odao = new OrdineDAO();
		UtenteBean ubean = new UtenteBean();
		ArrayList<OrdineBean> var = null;  
		String action = request.getParameter("action");
		
		if(action.equals("mostra")) {
			try {
				ubean = (UtenteBean)request.getSession().getAttribute("Utente loggato");
				var = (ArrayList<OrdineBean>) odao.doRetrieveAllByUtente(ubean.getEmail());
				request.setAttribute("ordini", var);
				RequestDispatcher rs = request.getRequestDispatcher("Profilo_utente.jsp");
				rs.include(request, response);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
