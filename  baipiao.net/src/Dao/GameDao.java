package Dao;

import java.util.List;
import java.util.Map;

public interface GameDao {

    int findTotalCount(Map<String, String[]> condition);

    List findByPage(int start, int rows, Map<String, String[]> condition);

    List findGameInfo(String condition);

    void addview(String author, String text, String gameuid, String time);

    List findGameView(String gameuid);
}
