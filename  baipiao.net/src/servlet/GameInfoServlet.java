package servlet;

import Domain.Game;
import Domain.PageBean;
import Domain.View;
import service.GameService;
import service.imp.GameServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/gameInfoServlet")
public class GameInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
       //获取查询所需要的参数
        String gamename = request.getParameter("gamename");
        String gameuid = request.getParameter("gameuid");
        GameService service = new GameServiceImp();
        //使用方法查询游戏详细信息
        Game game = service.findGameInfo(gameuid);
       //设置个pb来储存使用查询评论方法查询来的评论
        PageBean<View> pb = service.findGameView(gameuid);
        System.out.println(pb);
        request.setAttribute("game", game);
        request.setAttribute("pb",pb);
        request.getRequestDispatcher("/game_inf.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
