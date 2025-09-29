package com.sist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.*;
import com.sist.vo.*;
public class EmpDAO {

	private Connection conn;
	private PreparedStatement ps;
	private static final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	private static EmpDAO dao;
	/*
	 * jdbc : 업체명:@IP : port : 데이터에비스명
	 * jdbc:mysql:@localhost:3306:mydb
	 */
	public EmpDAO()
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex) {}
	}
	//싱글턴 연결
	public static EmpDAO newInstance()
	{
		if(dao==null)
			dao=new EmpDAO();
		return dao;
	}
	//  연결
	public void getConnection()
	{
		try
		{
			conn=DriverManager.getConnection(URL,"hr","happy");
		}catch(Exception ex) {}
	}
	// 해체
	public void disConnection()
	{
		try
		{
			if(ps!=null) ps.close(); // 송수신
			if(conn!=null) conn.close(); // 전화
		}catch(Exception ex) {}
	}
	// JOIN
	public List<EmpVO> empListData()
	{
		List<EmpVO> list=new ArrayList<EmpVO>();
		try
		{
			getConnection();
			String sql="SELECT empno,ename,job,hiredate,sal,dname,loc,grade "
					 + "FROM emp,dept,salgrade "
					 + "WHERE emp.deptno=dept.deptno "
					 + "AND sal BETWEEN losal AND hisal";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				EmpVO vo=new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setHiredate(rs.getDate(4));
				vo.setSal(rs.getInt(5));
				vo.getDvo().setDname(rs.getString(6));
				vo.getDvo().setLoc(rs.getString(7));
				vo.getSvo().setGrade(rs.getInt(8));
				list.add(vo);
			}
			rs.close();
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
	// 페이지 나누기 ROWNUM / ROW_NUMBER()
	public List<String> foodFindData(String type,String fd)
	{
		// 주소 / 음식종류 / 업체명
		List<String> list=new ArrayList<String>();
		try
		{
			// 연결
			getConnection();
			// SQL문장 제작
			String sql="SELECT name "
					 + "FROM menupan_food"
					 + "WHERE "+type+" LIKE '%'||?||'%'";
			// 오라클 전송
			ps=conn.prepareStatement(sql);
			// 필요한 데이터 첨부
			ps.setString(1, fd);
			// 결과값
			ResultSet rs=ps.executeQuery();
			// List에 채우기
			while(rs.next())
			{
				list.add(rs.getString(1));
			}
			// ResultSet 닫기
			rs.close();
		}catch(Exception ex)
		{
			// 오류확인
			ex.printStackTrace();
		}
		finally
		{
			// 해제
			disConnection();
		}
		return list;
	}
}
