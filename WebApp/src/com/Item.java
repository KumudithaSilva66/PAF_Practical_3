/**
 * 
 */
package com;
import java.sql.*;

/**
 * @author PC
 *
 */
public class Item {

	/**
	 * 
	 */
	public Item() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}
	
	public Connection connect()
	{
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			
			System.out.println("Successfully connected");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return con;
	}
	
	
	public String insertItem(String code,String name,String price,String desc)
	{
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to database";
			}
			
			//create a prepared statement
			String query = "INSERT INTO items(`itemCode`, `itemName`, `itemPrice`, `itemDesc`) VALUES (?, ?, ?, ?);";
			
			PreparedStatement preparedStmt = con.prepareStatement(query);
			
			//binding values
			
		
			preparedStmt.setString(1,code);
			preparedStmt.setString(2, name);
			preparedStmt.setDouble(3,Double.parseDouble(price));
			preparedStmt.setString(4,desc);
			
			//execute the statement
			preparedStmt.execute();
			con.close();
			
			output = "Inserted successfully";	
			
		} catch (Exception e) {
			
			output = "Error while inserting";// TODO: handle exception
		    System.err.println(e.getMessage());
		}
		
		return output;
		
	}
	
	public String UpdateItem(String code,String name,String price,String desc)
	{
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to database";
			}
			
			//create a prepared statement
			String query = "UPDATE items SET `itemName` =?, `itemPrice` =?, `itemDesc` =? WHERE `itemCode` =?"; 
			
			
			PreparedStatement preparedStmt = con.prepareStatement(query);
			
			//binding values
			
		
			
			preparedStmt.setString(1, name);
			preparedStmt.setDouble(2,Double.parseDouble(price));
			preparedStmt.setString(3,desc);
			preparedStmt.setString(4,code);
			
			
			//execute the statement
			preparedStmt.execute();
			con.close();
			
			output = "Update successfully";	
			
		} catch (Exception e) {
			
			output = "Error while inserting";// TODO: handle exception
		    System.err.println(e.getMessage());
		}
		
		return output;
		
	}
	
	
	public String DeleteItem(String code)
	{
		String output = "";
		
		try {
			
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to database";
			}
			
			//create a prepared statement
			String query = " DELETE FROM `items` WHERE `itemcode`=?";  
			
			
			PreparedStatement preparedStmt = con.prepareStatement(query);
			
			//binding values
			
		
			
			preparedStmt.setString(1, code);

			
			
			//execute the statement
			preparedStmt.execute();
			con.close();
			
			output = "Delete successfullly";	
			
		} catch (Exception e) {
			
			output = "Error while inserting";// TODO: handle exception
		    System.err.println(e.getMessage());
		}
		
		return output;
		
	}
	
	public String readItems()
	{
		String output = "";
		
		try 
		{
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to the database";
			}
			
			//Prepare the HTML table to be displayed
			
			output = "<table  class = table border ='1'> <thead class= thead-dark ><tr>"
					+"<th scope= col>ItemCode</th><th scope= col>ItemName</th><th scope= col>ItemPrice</th><th scope= col>ItemDesc</th>"
					+"</tr></thead>";
			
			String query = "SELECT * FROM items";
			Statement stmt = con.createStatement();
			ResultSet rs =stmt.executeQuery(query);
			
			// iterate through the rows in the result set
			
			while(rs.next())
			{
				String itemCode = rs.getString("itemCode");
				String itemName = rs.getString("itemName");
				String itemPrice = Float.toString(rs.getFloat("itemPrice"));
				String itemDese = rs.getString("itemDesc");
				
				//Add row into the html table
				
				
				output += "<tr><td>" + itemCode + "</td>";
				output += "<td>" + itemName + "</td>";
				output += "<td>" + itemPrice + "</td>";
				output += "<td>" + itemDese + "</td>";

				
				
			}
			
			con.close();
			
			// complete the table
			output +="</table>";
		}
		
		catch (Exception e)
		{
			output = "Error while reading the items";// TODO: handle exception
		}
		return output;
	}

}
