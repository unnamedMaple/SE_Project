<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher profile management</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/backround.css"/>
</head>
<body>

<div class="homepage">
   
   
    <div class="header">顶部
    <marquee bgcolor=FF0000></marquee>
    <s:property value="Name"  default="郭延龙"/>
    <i><s:property value="Email"  default="1078530334@qq。com"/></i>
    <br><s:property value="Telephone"  default="18845099586"/>
    <s:property value="Age"  default="23"/>
    <s:property value="Sex"  default="男"/>
    </div>
	<div class="main">
	    
	     <div class="option">
			     <a href=<s:url action="TeacherCompletePersonalInformation">
			     <s:param name="Id" value="getId()"></s:param>
				 </s:url>>个人信息完善</a>
				 <br><a href=<s:url action="TeacherInquiry">
				 </s:url>>查询</a>
				 <br><a href=<s:url action="ApplicationList_Student">
				 </s:url>>申请列表</a>
				 <br><a href=<s:url action="TeacherSystemreCommendation">
				 </s:url>>系统推荐</a>
	     </div>
	     
	     
	     <div class="list"></div>
			    学院       <s:property value="Academy"  default="计算机学院"/><br>
			    研究方向 <s:property value="Research"  default="信息安全 "/><br>
			   论文  <s:property value="Article"  default="网络病毒的研究"/><br>
			   经历  <s:property value="Experience"  default="去MIT做过访问学者"/><br>
			   荣誉  <s:property value="Honor"  default="获得过ACM终身成就奖"/><br> 
			   招生人数 <s:property value="NeedNum"  default="10"/><br>
			  招生需求<s:property value="Needs"  default="有上进心，喜欢研究，有激情的学生"/> 
			  
	</div>
	<div class="footer">底部 </div>
</div>

<img src=WEB-INF/updatabrand.jsp>
</body>