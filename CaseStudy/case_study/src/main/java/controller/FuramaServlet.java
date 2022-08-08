package controller;

import model.Facility;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FuramaServlet", value = "/furama")
public class FuramaServlet extends HttpServlet {
    IFacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "displayService":
                displayService(request,response);
                break;
            case "addService":
                addService(request,response);
                break;
            case "editService":
                editService(request,response);
                break;
            default:
                displayHome(request,response);
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher =  request.getRequestDispatcher("view/service/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addService(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/add.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayService(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.displayListFacility();
        request.setAttribute("facilityList",facilityList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/list.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/home.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
