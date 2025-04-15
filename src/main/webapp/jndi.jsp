<%@ page import="java.sql.*, javax.naming.*, javax.sql.DataSource" %>
<%@ page errorPage="error.jsp" %>

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // JNDI context 조회
        Context context = new InitialContext();

        // 데이터소스를 조회 (JNDI Name 사용)
        DataSource ds = (DataSource) context.lookup("java:/comp/env/jdbc/mydb");

        // 커넥션을 얻기
        conn = ds.getConnection();

        // 쿼리 실행
        String query = "SELECT * FROM test1234";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);

        // 조회된 데이터 출력
        while (rs.next()) {
            // int id = rs.getInt("id");
             String id = rs.getString("id");
             String name = rs.getString("name");
            out.println("<p>ID: " + id + " - Name: " + name + "</p>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        // 자원 정리
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
