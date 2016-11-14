<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher message update</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/backround.css"/>
</head>
<body>



   
   
    <div class="header">
	    <a href=<s:url value="teacherpagedisplay.action">
	    		<s:param name="Id" value="getId()"></s:param>
	    		</s:url>><img src="<%=request.getContextPath()%>/css/homea1.jpg">
	</a>
	     姓名：<s:property value="Name"  default=" "/>
	    年龄：<s:property value="Age"  default=" "/>
	    性别：<s:property value="Sex"  default=" "/><br>
	   &nbsp;&nbsp;&nbsp;&nbsp;邮箱：<s:property value="Email"  default=" "/><br>
	    &nbsp;&nbsp;&nbsp;&nbsp;电话：<s:property value="Telephone"  default=" "/>
    </div>
	<div class="main">
	    
	     <div class="option">
			  <div class="tab">
		      <a href=
		      <s:url action="TeacherCompletePersonalInformation">
		      <s:param name="Id" value="getId()"></s:param>
			  </s:url>>个人信息完善</a>
			 </div>
		     <div class="tab">
		     <s:form action="TeacherInquiry" method="post">
			    <s:select name="AcademyId" list="Mylist" label="学院" listValue="Name" listKey="id"></s:select>
			    <s:textfield name="Id" type="hidden" value="%{#request.Id}"></s:textfield>
			    <s:submit class="button" value="查询"></s:submit>
			 </s:form>
			</div>
		      <div class="tab">
		       <a href=<s:url action="TeacherList">
		      <s:param name="Id" value="getId()"></s:param>
			 </s:url>>申请列表</a>
			 </div>

			 <div class="tab">
			 <a href=<s:url action="SystemreCommendation">
			 </s:url>>系统推荐</a>
			 </div>
	     </div>
	     
	     
	    <div class="list">
			<s:form action="TeacherUpdate" method="post">
				<s:textfield name="Id" type="hidden" value="%{#request.Id}"></s:textfield>
			     <s:doubleselect name="Academy" doubleName="Research" label="学院和研究方向"
						         list="Mylist" doubleList="Mymap.get(top.Id)"
						         listKey="Id" listValue="Name"
						         doubleListKey="Id" doubleListValue="Name" 
						         >
				 </s:doubleselect>
					 <s:textfield name="Article" label="论文："></s:textfield>
					 <s:textfield name="Experience" label="经历："></s:textfield>
					 <s:textfield name="Honor" label="荣誉："></s:textfield>
					 <s:textfield name="NeedNum" label="招生人数："></s:textfield>
					 <s:textfield name="Needs" label="招生需求："></s:textfield>
				     <s:submit value="更新"></s:submit>
		   </s:form>
	   </div>
	</div>
	<div class="footer">@版权归 先锋战队所有 <br>详情请咨询454285842@qq.com</div>



</body>