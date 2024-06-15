package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	//validate
	public static List<Customer> validate(String userName,String password){
		ArrayList<Customer> cus=new ArrayList<>();
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select*from new_table where username='"+userName+"' and password='"+password+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String userU=rs.getString(5);
				String passU=rs.getString(6);
				
				Customer c= new Customer(id,name,email,phone,userU,passU);
				cus.add(c);
			}
		}
	
		catch(Exception e) {
			e.printStackTrace();
			}
			return cus;
			}
	//insert 
public static  boolean insertcustomer(String name,String email,String phone,String username,String password) {
	boolean isSuccess=false;
	
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		String sql="insert into new_table values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}else {
			isSuccess=false;
		}
	
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	
	}
//update
	public static boolean updatecustomer(String id, String name, String email,String phone, String username,String password){
		boolean isSuccess=false;
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql="update new_table set name='"+name+"',email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
					+"where id='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		}
	//retrive
	public static List<Customer>getCustomerDetails(String Id){
		
		int convertedID=Integer.parseInt(Id);
		
		ArrayList<Customer>cus=new ArrayList<>();
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="select*from new_table where id='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String username=rs.getString(5);
				String password=rs.getString(6);
				
				Customer c=new Customer(id,name,email,phone,username,password);
				cus.add(c);

			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	//delete abs
	public static boolean deleteCustomer(String id) {
		boolean isSuccess=false;
		
		int convId=Integer.parseInt(id);
		try {
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from new_table where id='"+convId+"'";
			int r=stmt.executeUpdate(sql);
			if(r>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
	}
	public static  boolean insertfeed(String Name,String Email,String phone,String problem) {
		
		boolean success =false;
		
		
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql ="insert into contactus values (0,'"+Name+"','"+Email+"','"+phone+"','"+problem+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				success= true;
			}else {
				success=false;
			}
			
			
			}
		
		catch(Exception e) {
			  e.printStackTrace();
			
			
		}
		
		return success;
	}
}


