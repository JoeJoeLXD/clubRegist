/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import club.business.Book;
import club.data.BookIO;

/**
 *
 * @author xd18
 */
@WebServlet(name = "SXYXXLAddBookServlet", urlPatterns = {"/SXYXXLAddBook"})
public class SXYXXLAddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SXYXXLAddBookServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SXYXXLAddBookServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         String quantityAsString = request.getParameter("quantity");
        int quantity = 0;

        // If quantity is blank, default it to "0"
        if (quantityAsString == null || quantityAsString.trim().isEmpty()) {
            quantity = 0;
        } else {
            try {
                quantity = Integer.parseInt(quantityAsString);
            } catch (NumberFormatException e) {
                // Show custom error page for non-numeric quantity
//                response.sendRedirect("SXYXXLError.jsp?message=Invalid+quantity+value");
//                return;
                   String message = "For input string: \""+quantityAsString+"\"";
                  
                  request.setAttribute("message", message);
                  request.getRequestDispatcher("SXYXXLError.jsp")
                  .forward(request, response);
            }
        }
       String url = "/SXYXXLAddBook.jsp";
       getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String code = request.getParameter("code");
        String description = request.getParameter("description");
        String quantityAsString = request.getParameter("quantity");
        int quantity = 0;

        // If quantity is blank, default it to "0"
        if (quantityAsString == null || quantityAsString.trim().isEmpty()) {
            quantity = 0;
        } else {
            try {
                quantity = Integer.parseInt(quantityAsString);
            } catch (NumberFormatException e) {
                // Show custom error page for non-numeric quantity
//                response.sendRedirect("SXYXXLError.jsp?message=Invalid+quantity+value");
//                return;
                   String message = "For input string: \""+quantityAsString+"\"";
                  
                  request.setAttribute("message", message);
                  request.getRequestDispatcher("SXYXXLError.jsp")
                  .forward(request, response);
            }
        }

        List<String> errors = new ArrayList<>();

        // Validate input parameters
        if (code == null || code.trim().isEmpty()) {
            errors.add("Book code is required.");
        }
        if (description == null || description.trim().length() < 3) {
            errors.add("Description must have at least 3 characters.");
        }
        if (quantity <= 0) {
            errors.add("Quantity must be a positive number.");
        }

        // If there are errors, store the Book object and error messages in request scope and forward to the JSP
        if (!errors.isEmpty()) {
            Book book = new Book(code, description, quantity);
            request.setAttribute("book", book);
            request.setAttribute("errors", errors);
            getServletContext().getRequestDispatcher("/SXYXXLAddBook.jsp").forward(request, response);
            
        }else{

        // If the input fields are valid, add the book to the text file and forward to SXYXXLDisplayBooks servlet
        Book book = new Book(code, description, quantity);
        BookIO.insert(book, getServletContext().getRealPath("/WEB-INF/books.txt"));
        request.getRequestDispatcher("/SXYXXLDisplayBooks").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
