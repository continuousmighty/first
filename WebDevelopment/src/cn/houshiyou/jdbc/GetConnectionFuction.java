package cn.houshiyou.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.itcast.jdbc.JdbcUtils;
public class GetConnectionFuction {
	List<Map> list=new ArrayList<>();
	public  List<Map> query() throws SQLException{
		Connection conn= JdbcUtils.getConnection();
		
			Statement stmt = null;
			ResultSet rs = null;
			try {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from s");
				rs.last();
				int count=rs.getRow();
				rs.first();
				for(int i=0;i<count;i++){
					Map<String, String> map=new HashMap<>();
					map.put("lianjie", rs.getString(1));
					map.put("mima", rs.getString(2));
					map.put("name", rs.getString(3));
					list.add(map);
					if(i<count-1)rs.next();
				}}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					JdbcUtils.releaseConnection(conn);
				} 
			return list;
	}
	public  List<Map> query(String str1,String str2,String str3) throws SQLException{
		Connection conn= JdbcUtils.getConnection();
		
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			String sql="select * from s where plianjie='"+str1+"' and pmima='"+str2+"' and pname='"+str3+"'";
			System.out.println(sql);
			rs = stmt.executeQuery(sql);
			rs.last();
			int count=rs.getRow();
			rs.first();
			for(int i=0;i<count;i++){
				Map<String, String> map=new HashMap<>();
				map.put("lianjie", rs.getString(1));
				map.put("mima", rs.getString(2));
				map.put("name", rs.getString(3));
				list.add(map);
				if(i<count-1)rs.next();
		} 
		}catch (SQLException sqle) {
			sqle.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.releaseConnection(conn);
		} 
		return list;
		
		
	}
	public List<Map> query(String jiangshi) throws SQLException {
		Connection conn= JdbcUtils.getConnection();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from s where jiangshi='"+jiangshi+"'");
			rs.last();
			int count=rs.getRow();
			rs.first();
			for(int i=0;i<count;i++){
				Map<String, String> map=new HashMap<>();
				map.put("lianjie", rs.getString(1));
				map.put("mima", rs.getString(2));
				map.put("name", rs.getString(3));
				list.add(map);
				if(i<count-1)rs.next();
			}}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(conn);
			} 
		return list;
	}
	public  int insert(String lianjie,String pwd,String zhongwen,String jiangshi) throws SQLException{
		Connection conn= JdbcUtils.getConnection();
		  int i=-1;
			try {
				 String sqlInset = "insert into s(plianjie,pmima,pname,jiangshi) values(?,?,?,?)";
				            PreparedStatement stmt = conn.prepareStatement(sqlInset);   //会抛出异常
				           stmt.setString(1, lianjie);    //设置SQL语句第二个“？”的值
				           stmt.setString(2, pwd);        //设置SQL语句第三个“？”的值
				           stmt.setString(3, zhongwen);        //设置SQL语句第三个“？”的值
				           stmt.setString(4, jiangshi);        //设置SQL语句第三个“？”的值
				           i = stmt.executeUpdate();         
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				JdbcUtils.releaseConnection(conn);
			}
			return i;


	}
	public  int delete(String lianjie,String pwd) throws SQLException{
		Connection conn= JdbcUtils.getConnection();
		int i=-1;
		try {
			String sqlInset = "delete from s where plianjie='"+lianjie+"'and pmima='"+pwd+"'";
			System.out.println(sqlInset);
			Statement state=conn.createStatement();   //容器
	        i=state.executeUpdate(sqlInset);     
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtils.releaseConnection(conn);
		}
		return i;
		
		
	}
	
}
