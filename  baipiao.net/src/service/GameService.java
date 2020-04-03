package service;

import Domain.Game;
import Domain.PageBean;
import Domain.View;

import java.util.Map;

public interface GameService {

    PageBean<Game> findGameByPage(String _currentPage, String _rows, Map<String, String[]> condition);

    Game findGameInfo(String condition);

    void addView(String author, String text, String gameuid);

    PageBean<View> findGameView(String gameuid);
}
