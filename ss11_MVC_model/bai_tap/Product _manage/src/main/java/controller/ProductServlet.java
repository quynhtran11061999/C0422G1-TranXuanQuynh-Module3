package controller;

import model.Product;
import service.IProductService;
import service.Impl.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"", "/products"})
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                break;
            case "update":
                break;
            case "delete":
                break;
            case "viewProduct":
                break;
            case "searchByName":
                break;
            default:
                listProduct(request, response);
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/display.jsp");
        List<Product> productList = productService.display();
        request.setAttribute("listProduct", productList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                break;
            case "update":
                break;
            case "delete":
                break;
            case "viewProduct":
                break;
            case "searchByName":
                break;
            default:
                listProduct(request, response);
        }
    }
}
