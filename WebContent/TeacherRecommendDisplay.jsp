<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher System</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/System.css"/>
</head>
<body class="systemback">
	<div class="top" style="display:block;">
		<div class="logo">
			<div class="topright">
				<div class="welcome">
				<br>您好！  <s:property value="Name"  default="ls"/>老师<br>
	    
				邮箱：<s:property value="Email"  default="344545"/>
				电话：<s:property value="Telephone"  default="435455"/>
				
				</div>
				<div id="taskbar_right">
				
				<a class="btnedit" href=<s:url value="toTeacherEdit.action">
	    			<s:param name="Id" value="getId()"></s:param>
	    			</s:url>>编辑
				</a>
				
				<a class="btnhome" href=<s:url value="teacherpagedisplay.action">
	    			<s:param name="Id" value="getId()"></s:param>
	    			</s:url>>主页
				</a>
				<a class="btnquit" href=<s:url value="return.action"></s:url>>退出
				</a>
				
				</div>
			</div>
		</div>
	</div>
	
	<div class="top-nav">
		<div class="navlist">
		<a class="nav-btn" href=
		      <s:url action="TeacherCompletePersonalInformation">
		      <s:param name="Id" value="getId()"></s:param>
			  </s:url>>信息完善</a>
		
		<a class="nav-btn" href=
		      <s:url action="toTeacherInquiry">
		      <s:param name="Id" value="getId()"></s:param>
			  </s:url>>查询信息</a>
		
		
		<a class="nav-btn" href=
			<s:url action="TeacherRecommendation">
			<s:param name="Id" value="getId()"></s:param>
			 </s:url>>系统推荐</a>
		<s:if test="getApplyStation()=='0'.toString()">
			<a class="nav-btn" href=<s:url action="TeacherList">
		        <s:param name="Id" value="getId()"></s:param>
			    </s:url>>申请列表</a>
		</s:if>
		<s:else> 
		        <a class="nav-btn" href=<s:url action="TeacherList">
			    <s:param name="Id" value="getId()"></s:param>
				</s:url>><span title="申请列表有更新">申请列表<span style="color:red;font-size: 15px">！</span></span></a>
		</s:else>
		</div>
	</div>
	
	<div class="Contentbox">
		<table border="1" width="50%" cellpadding="0" cellspacing="0" align="center">  
			<tr style="background-color: #D1E9E9">
				<td align="center">学生姓名</td>
				<td align="center">性别</td>
				<td align="center">专业</td>
				<td align="center">学分绩</td>			
				<td align="center">经历</td>
				<td align="center">获奖荣誉</td>				
				<td align="center">英语等级</td>		
				<td align="center">系统评分</td>		
			</tr>  
			<s:iterator  value="#request.StudentList">
				<tr>
				<td class="name" align="center">
				<a href=<s:url action="StudentDetail.action">
					<s:param name="StudentId" value="Id"></s:param>
					<s:param name="TeacherId" value="%{#request.Id}"></s:param>
				</s:url>
				>
				<s:property value="Name"/>
				</a>
				</td>	
				
				<td align="center">					
						<s:property value="Sex"/>
				</td>
				
				<td align="center">					
						<s:property value="Academy"/>
				</td>				
				
				<td align="center">					
						<s:property value="Point"/>
				</td>
				
				<td align="center">					
						<s:property value="Experience"/>
				</td>
				
				<td align="center">					
						<s:property value="Honor"/>
				</td>	
				
				<td align="center">					
						<s:property value="English"/>
				</td>	
				
				<td align="center">					
						<s:property value="SystemPoint"/>
				</td>	
											
				</tr>
           </s:iterator> 
       </table>
	</div>
</body>
</html>