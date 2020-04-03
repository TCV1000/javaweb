package service.imp;

import Dao.DaoImp.N3dsGameDaoImp;
import Dao.GameDao;
import Domain.Game;
import Domain.PageBean;
import Domain.View;
import service.GameService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class GameServiceImp implements GameService {
    GameDao dao = new N3dsGameDaoImp();
    @Override
    public PageBean<Game> findGameByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        int currentPage = Integer.parseInt(_currentPage);
        int rows = Integer.parseInt(_rows);


        if(currentPage <=0) {
            currentPage = 1;
        }
        PageBean<Game> pb = new PageBean<>();
        pb.setCurrentPage(currentPage);
        pb.setRows(rows);
        // 利用dao类查询数据总条数
        int totalCount = dao.findTotalCount(condition);
        pb.setTotalCount(totalCount);
        int pages = (totalCount+rows-1)/rows;
        pb.setTotalPage(pages);
        //计算开始页面
        int start = (currentPage-1)*rows;
        //利用dao类查询
        List list = dao.findByPage(start,rows,condition);
        pb.setList(list);
        return pb;
    }

    @Override
    public Game findGameInfo(String gameuid) {
        PageBean<Game> pb = new PageBean<>();
        List list = dao.findGameInfo(gameuid);
        Game game = (Game) list.get(0);
        return game;
    }

    @Override
    public void addView(String author, String text, String gameuid) {
        Date dd=new Date();
        //格式化
        SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=sim.format(dd);
        dao.addview(author,text,gameuid,time);
    }

    @Override
    public PageBean<View> findGameView(String gameuid) {
        PageBean<View> pb = new PageBean<>();
        List list = dao.findGameView(gameuid);
        pb.setList(list);
        return pb;
    }
}
