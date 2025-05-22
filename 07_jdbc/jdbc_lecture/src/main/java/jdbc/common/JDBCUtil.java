package jdbc.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtil {
    //싱글톤 패턴
    static Connection conn = null;

    public static Connection getConnection() {
        //이미 conn 객체가 있다면 존재하는 객체 반환
        if(conn!=null) return conn;

        //Properties 파일 읽어오기 위한 객체 준비
        Properties prop = new Properties();

        try {
            // prop.load: key-value 형태로 스트림으로 읽어온 데이터 저장
            // getResourceAsStream : 파일 내용을 InputStream으로 가져옴
            prop.load(JDBCUtil.class.getResourceAsStream("/application.properties"));

            System.out.println("props" + prop);

            String driver = prop.getProperty("driver");
            String url = prop.getProperty("url");
            String user = prop.getProperty("user");
            String password = prop.getProperty("password");

            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }

            try {
                conn = DriverManager.getConnection(url, user, password);

                System.out.println("연결 성공 연결 객체 : " + conn);

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return conn;
    }

    // 연걸을 닫을 때 사용하는 메서드
    public static void close() {
        try {
            if(conn != null) {
                conn.close();
                conn = null;
            }
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
