package servlet;

import service.GameService;
import service.imp.GameServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addViewServlet")
public class AddViewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // 设置格式
            request.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            //获取cookie
            Cookie[] cookies = request.getCookies();
            String gameuid = request.getParameter("gameuid");
            //判断cookie是否为空
        boolean flag = true;
        for (Cookie cookie : cookies) {
            String name = cookie.getName();
            if ("lasttime".equals(name)) {

                flag = false;
                response.getWriter().write("<script>alert('请勿短时间内重复提交');window.location.href='http://123.57.86.56/game/gameInfoServlet?gameuid="+gameuid+"'</script>");

                //request.getRequestDispatcher("/gameInfoServlet?gameuid=" + gameuid).forward(request, response);

                //response.getWriter().flush();
                //response.sendRedirect("/gameInfoServlet?gameuid="+gameuid);
            }
        }
        if (flag) {
            request.setCharacterEncoding("utf-8");
            String author = request.getParameter("author");
            String text = request.getParameter("text");
            String gamename = request.getParameter("gamename");
            GameService service = new GameServiceImp();
            service.addView(author, text, gameuid);
            Cookie cookie1 = new Cookie("lasttime", "format");
            cookie1.setMaxAge(60);
            response.addCookie(cookie1);
            request.getRequestDispatcher("/gameInfoServlet?gameuid=" + gameuid).forward(request, response);
            //response.sendRedirect("/gameInfoServlet?gameuid="+gameuid);
        }

    }
        //<---------------------------------------------------------------------------------------------------->
//        request.setCharacterEncoding("utf-8");
//        String author = request.getParameter("author");
//        String text = request.getParameter("text");
//        String gameuid = request.getParameter("gameuid");
//        String gamename = request.getParameter("gamename");
//        GameService service = new GameServiceImp();
//        service.addView(author, text, gameuid);
//        //request.getRequestDispatcher("/gameInfoServlet?gamename=" + gamename).forward(request, response);
//        response.sendRedirect("/gameInfoServlet?gameuid=" + gameuid);
//    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

