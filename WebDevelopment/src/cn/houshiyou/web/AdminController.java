package cn.houshiyou.web;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.houshiyou.jdbc.GetConnectionFuction;
import cn.itcast.jdbc.JdbcUtils;

@Controller
public class AdminController {
	
	public List<Map> fresh() throws SQLException{
		GetConnectionFuction gct=new GetConnectionFuction();
	    List<Map> list=new ArrayList<>();
	    list=gct.query();
	    return list;
		} 
	private List<Map> fresh(String jiangshi) throws SQLException {
		GetConnectionFuction gct=new GetConnectionFuction();
	    List<Map> list=new ArrayList<>();
	    list=gct.query(jiangshi);
	    return list;
	}
	@RequestMapping(value="upload1",method=RequestMethod.POST)
	public String admin(@ModelAttribute("text1")String str1,@ModelAttribute("text2")String str2,@ModelAttribute("text3")String str3,
			@ModelAttribute("text4")String str4,HttpServletRequest req,
			Model model) throws SQLException{
		GetConnectionFuction gct=new GetConnectionFuction();
		List<Map> rs= gct.query(str1,str2,str3);
		if(rs.isEmpty())
		gct.insert(str1, str2, str3,str4);
		List<Map> list=new ArrayList<>();
	    list=fresh();
		model.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String adminrefresh(HttpServletRequest req,
			Model model) throws SQLException{
		    List<Map> list=new ArrayList<>();
		    list=fresh();
			model.addAttribute("list", list);
		    return "index2";
	} 
	@RequestMapping(value="indexs",method=RequestMethod.GET)
	public String adminrefresh1(HttpServletRequest req,@RequestParam("jiangshi")String jiangshi,
			Model model) throws SQLException{
		List<Map> list=new ArrayList<>();
		list=fresh(jiangshi);
		model.addAttribute("list", list);
		return "index2";
	} 

	@RequestMapping(value="del",method=RequestMethod.GET)
	public String delete(@RequestParam("lj")String lj,@RequestParam("mm")String mm, 
			HttpServletRequest req,Model model){
		try {
			GetConnectionFuction gct=new GetConnectionFuction();
			int del= gct.delete(lj, mm);
			List<Map> list=new ArrayList<>();
		    list=fresh();
			model.addAttribute("list", list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return "index";
	} 
}
