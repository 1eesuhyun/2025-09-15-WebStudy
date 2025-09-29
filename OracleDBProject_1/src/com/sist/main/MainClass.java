package com.sist.main;
import java.util.*;
import com.sist.dao.*;

public class MainClass {
/*
 *  JSP(main에서 코딩)
 *  ======> DAO
 *  
 *  JSP <=== Model <===> DAO
 *    Model 2 => MVC구조(Spring, Spring-Boot)
 */
	
	public static void main(String[] args) {
		
		// TODO Auto-generated method stub
		// DAO 객체 생성 => JSP / Model
		Scanner scan=new Scanner(System.in);
		TestDAO dao=TestDAO.newInstance();
		System.out.println("카테고리 선택(주소(1),종류(2),업체명(3):");
		int type=scan.nextInt();
		System.out.println("검샋어 입력:");
		String fd=scan.next();
		String[] ss= {"","address","type","name"};
		long start=System.currentTimeMillis();
		List<String> list=dao.foodFindData(ss[type],fd);
		long end=System.currentTimeMillis();
		System.out.println("걸린 시간:"+(end-start));
		for(String s:list)
		{
			System.out.println(s);
		}
	}

}
