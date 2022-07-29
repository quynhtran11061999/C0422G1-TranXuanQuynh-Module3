package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Quỳnh", "11/06/1999", "Quảng Nam", "https://upload.wikimedia.org/wikipedia/commons/7/74/G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg"));
        customerList.add(new Customer("Trí", "12/07/2000", "Đà Nẵng", "https://media-cdn-v2.laodong.vn/storage/newsportal/2019/4/10/727198/Nguoigay_Fvkp.jpg?w=800&crop=auto&scale=both"));
        customerList.add(new Customer("Tâm", "13/08/2001", "Huế", "https://kinhmatbichngoc.vn/wp-content/uploads/2020/04/Deo-kinh-can-lam-mat-dai-scaled.jpg"));
        customerList.add(new Customer("Huy", "14/09/2002", "Đà Nẵng", "https://vinmec-prod.s3.amazonaws.com/images/20190808_064834_141482_beo-phi.max-1800x1800.jpg"));
        customerList.add(new Customer("Hùng", "15/10/2003", "Đà Nẵng", "https://petrotimes.vn/stores/news_dataimages/buithanhcong/042019/03/10/nhung-ngoi-sao-dien-anh-viet-nghien-ma-tuy-dan-toi-tieu-tan-su-nghiep-va-cuoc-doi.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        request.setAttribute("customerList", customerList);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
