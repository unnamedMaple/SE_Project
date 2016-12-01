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
				
				<a class="btnedit" href=<s:url value="teacherpagedisplay.action">
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
		
		
		<a class="nav-btn" href=<s:url action="SystemreCommendation">
			 </s:url>>系统推荐</a>
		<a class="nav-btn" href=<s:url action="TeacherList">
		      <s:param name="Id" value="getId()"></s:param>
			 </s:url>>申请列表</a>
		</div>
	</div>
	
	<div class="Contentbox">
		 <table border="1" width="100%" cellpadding="0" cellspacing="0" align="center">  
			<tr style="background-color: #D1E9E9">
				<td align="center">学生姓名</td>
				<td align="center">申请状态</td>
				<td align="center">操作</td>
				
			</tr>  
			<s:iterator value="#request.StudentList"> 
				<tr>
					<td  class="name" align="center">
						<a href=
							<s:url value="StudentDetail.action">
								<s:param name="StudentId" value="Id"/>
								<s:param name="TeacherId" value="%{#request.Id}"/>
							</s:url>>
							<s:property value="Name"/>
						</a>
					</td>
					<td align="center">					
							<s:property value="%{#request.Map[Status]}"/>
					</td>
					<td class="apply" align="center">
						<s:if test="Status == 'W'.toString()">
							<a  href=
							<s:url value="TeacherAgree.action">
								<s:param name="StudentId" value="Id"/>
								<s:param name="TeacherId" value="%{#request.Id}"/>
							</s:url>>
							同意
							</a>
						</s:if>
						<s:else> </s:else>
						<s:if test="Status == 'W'.toString()"> 
							<a class="apply" href=
							<s:url value="TeacherReject.action">
								<s:param name="StudentId" value="Id"/>
								<s:param name="TeacherId" value="%{#request.Id}"/>
							</s:url>>
							拒绝
							</a>
						</s:if>
						<s:else>
							
						</s:else>
					</td>
				</tr>
			</s:iterator>
		</table>
	</div>
</body>
</html>