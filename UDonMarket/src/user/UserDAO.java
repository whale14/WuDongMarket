package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; //자바와 데이터베이스를 연결
	private PreparedStatement pstmt; //쿼리문 대기 및 설정
	private ResultSet rs; //결과값 받아오기
	
	//기본 생성자
	//UserDAO가 실행되면 자동으로 생성되는 부분
	//메소드마다 반복되는 코드를 이곳에 넣으면 코드가 간소화된다
	public UserDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "udon";
			String dbPassword = "udonpw";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 영역
		public int login(String userID, String userPassword) {
			String sql = "select userPassword from MEMBER where MEMBER_ID = ?";
			try {
				pstmt = conn.prepareStatement(sql); //sql쿼리문을 대기 시킨다
				pstmt.setString(1, userID); //첫번째 '?'에 매개변수로 받아온 'userID'를 대입
				rs = pstmt.executeQuery(); //쿼리를 실행한 결과를 rs에 저장
				if(rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
						return 1; //로그인 성공
					}else
						return 0; //비밀번호 틀림
				}
				return -1; //아이디 없음
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //오류
		}
	
	// 회원 가입 정보가 데이터 베이스에 저장 될 수 있게 구현 합니다.
		public int join(User user) {
			  String sql = "insert into MEMBER values(?, ?, ?, ?)";
			  try {
			    pstmt = conn.prepareStatement(sql);
			    pstmt.setString(1, user.getMember_ID());
			    pstmt.setString(2, user.getMember_PW());
			    pstmt.setString(3, user.getMember_NAME());
			    pstmt.setString(4, user.getRegion_ID());
			    return pstmt.executeUpdate();
			  }catch (Exception e) {
			 	e.printStackTrace();
			  }
			  return -1;
			}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
	

