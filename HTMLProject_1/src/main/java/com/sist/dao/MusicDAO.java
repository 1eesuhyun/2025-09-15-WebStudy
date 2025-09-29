package com.sist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MusicDAO {
    // ====== DB 접속 정보 ======
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE"; // 환경에 맞게 변경
    private static final String USER = "hr";
    private static final String PASS = "happy";

    // ====== JDBC 객체 ======
    private Connection conn;
    private PreparedStatement ps;

    // ====== 싱글턴 ======
    private static MusicDAO dao;

    private MusicDAO() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static MusicDAO newInstance() {
        if (dao == null) {
            dao = new MusicDAO();
        }
        return dao;
    }

    // ====== 연결/해제 ======
    private void getConnection() {
        try {
            conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void disConnection() {
        try {
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // ====== 기능 메서드 ======
    /**
     * 지니뮤직 테이블에서 제목 리스트 조회 (mno 오름차순)
     * @param type 미사용 파라미터 (필요 시 WHERE 조건에 사용)
     * @param fd   미사용 파라미터 (필요 시 WHERE 조건에 사용)
     */
    public List<String> MusicListData(int cno) {
        List<String> list = new ArrayList<>();
        try {
            getConnection();

            String sql = "SELECT title "
                       + "FROM genie_music "
                       + "WHERE cno="+cno
                       + " ORDER BY no ASC";

            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) 
            {
                list.add(rs.getString(1)); // or rs.getString("title")
            }
            rs.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            disConnection();
        }
        return list;
    }
}
