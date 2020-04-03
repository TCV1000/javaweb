package Dao.DaoImp;

import Dao.GameDao;
import Domain.Game;
import Domain.View;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import util.JDBCUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class N3dsGameDaoImp implements GameDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());
    @Override
    public int findTotalCount(Map<String, String[]> condition) {
        String sql = "select count(*) from 3ds where 1 = 1 ";
        StringBuilder sb = new StringBuilder(sql);
        //2.遍历map
        Set<String> keySet = condition.keySet();
        //定义参数的集合
        List<Object> params = new ArrayList<Object>();
        for (String key : keySet) {

            //排除分页条件参数
            if("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }

            //获取value
            String value = condition.get(key)[0];
            //判断value是否有值
            if(value != null && !"".equals(value)){
                //有值
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%");//？条件的值
            }
        }
        return template.queryForObject(sb.toString(),Integer.class,params.toArray());
    }

    @Override
    public List findByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from 3ds where 1 = 1 ";

        StringBuilder sb = new StringBuilder(sql);
        //2.遍历map
        Set<String> keySet = condition.keySet();
        //定义参数的集合
        List<Object> params = new ArrayList<Object>();
        for (String key : keySet) {

            //排除分页条件参数
            if("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }

            //获取value
            String value = condition.get(key)[0];
            //判断value是否有值
            if(value != null && !"".equals(value)){
                //有值
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%");//？条件的值
            }
        }

        //添加分页查询
        sb.append(" limit ?,? ");
        //添加分页查询参数值
        params.add(start);
        params.add(rows);
        sql = sb.toString();
        System.out.println(sql);
        System.out.println(params);

        return template.query(sql,new BeanPropertyRowMapper<Game>(Game.class),params.toArray());
    }

    @Override
    public List findGameInfo(String gameuid) {
        String sql = "select * from 3ds where gameuid = ?";
        int i = Integer.parseInt(gameuid);
        List<Game> list = template.query(sql, new BeanPropertyRowMapper<Game>(Game.class), i);
        return list;
    }

    @Override
    public void addview(String author, String text, String gameuid, String time) {
        String sql ="INSERT INTO views VALUES (?, ?, ?,?);";
        int i = Integer.parseInt(gameuid);
        template.update(sql,text,i,author,time);
    }

    @Override
    public List findGameView(String gameuid) {
        String sql = "select * from views where gameuid = ?";
        return template.query(sql,new BeanPropertyRowMapper<View>(View.class),gameuid);
    }
}
