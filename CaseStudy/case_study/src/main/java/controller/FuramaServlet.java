package controller;

import model.Facility;
import model.FacilityType;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FuramaServlet", urlPatterns = "/furama")
public class FuramaServlet extends HttpServlet {
    IFacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "showDisplayService":
                showDisplayService(request, response);
                break;
            case "showAddService":
                showAddService(request, response);
                break;
            case "showEditService":
                showEditService(request, response);
                break;
            default:
                displayHome(request, response);
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
            case "addService":
                addService(request, response);
                break;
            case "editService":
                editService(request, response);
                break;
            case "deleteService":
                deleteService(request, response);
                break;
        }
    }

    private void showEditService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idService"));
        Facility facility = facilityService.searchById(id);
        List<FacilityType> facilityTypes = facilityService.listFacilityType();
        request.setAttribute("facility", facility);
        request.setAttribute("facilityTypes", facilityTypes);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddService(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDisplayService(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.displayListFacility();
        request.setAttribute("facilityList", facilityList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayHome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/home.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        boolean check = facilityService.deleteFacility(id);
        String message = "";
        if (check) {
            message = "Xóa thành công!";
        } else message = "Xóa không thành công!";
        List<Facility> facilityList = facilityService.displayListFacility();
        request.setAttribute("facilityList", facilityList);
        request.setAttribute("message", message);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) {
        int facilityId = Integer.parseInt(request.getParameter("facilityId"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int serviceTypeId = Integer.parseInt(request.getParameter("serviceTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOfAmenities = request.getParameter("descriptionOfAmenities");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        String freeService = request.getParameter("freeService");
        Facility facility = new Facility(facilityId, name, area, cost, maxPeople,
                rentTypeId, serviceTypeId, standardRoom, descriptionOfAmenities, poolArea, numberOfFloors, freeService);
        facilityService.editFacility(facility);
        request.setAttribute("mesageEdit", "Sửa thông tin thành công!");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addService(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int serviceTypeId = Integer.parseInt(request.getParameter("serviceTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOfAmenities = request.getParameter("descriptionOfAmenities");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        String freeService = request.getParameter("freeService");
        Facility facility = new Facility(name, area, cost, maxPeople, rentTypeId, serviceTypeId, standardRoom,
                descriptionOfAmenities, poolArea, numberOfFloors, freeService);

        Map<String, String> mapErrors = this.facilityService.add(facility);
        if (mapErrors.size() > 0) {
            for (Map.Entry<String, String> entry : mapErrors.entrySet()) {
                request.setAttribute(entry.getKey(), entry.getValue());
            }
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/service/add.jsp");
            try {
                requestDispatcher.forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        request.setAttribute("mesageAdd", "Thêm mới thành công!");
        request.setAttribute("facilityList", facilityService.displayListFacility());
        try {
            request.getRequestDispatcher("view/service/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
