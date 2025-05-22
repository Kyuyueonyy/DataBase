package jdbc.section01;

import jdbc.common.JDBCUtil;
import java.sql.Connection;
import java.sql.DriverManager;

public class Application {
    public static void main(String[] args) {
        Connection conn = JDBCUtil.getConnection();
    }
}
