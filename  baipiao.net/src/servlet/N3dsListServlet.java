package servlet;

import Domain.Game;
import Domain.PageBean;
import service.GameService;
import service.imp.GameServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/n3dsListServlet")
public class N3dsListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String currentPage = request.getParameter("currentPage");//当前页码
        String rows = request.getParameter("rows");//每页显示条数

        if(currentPage == null || "".equals(currentPage)){

            currentPage = "1";
        }


        if(rows == null || "".equals(rows)){
            rows = "9";
        }

        //获取条件查询参数
        Map<String, String[]> condition = request.getParameterMap();


        //2.调用service查询
        GameService service = new GameServiceImp();
        PageBean<Game> pb = service.findGameByPage(currentPage,rows,condition);

        System.out.println(pb);
        System.out.println(pb.getList());

        //3.将PageBean存入request
        request.setAttribute("pb",pb);
        //4.转发到list.jsp
        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
