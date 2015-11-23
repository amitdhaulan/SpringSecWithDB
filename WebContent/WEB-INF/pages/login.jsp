<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>spring security database login demo</title>
</head>
<body>
	<table>
		<tr>
			<td valign="top"><c:if test="${not empty param.login_error}">
					<font color="red"> Invalid user name or password, try again.<br />
						<br />
					</font>
				</c:if>
				<form name="login_form"
					action="<c:url value='j_spring_security_check'/>" method="POST">
					<div>
						<table width="40%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td valign="top">
									<table border="0" cellspacing="0" cellpadding="4" width="40%">
										<tr>
											<td colspan="2">Login
												<hr width="100%" size="1" noshade align="left">
											</td>
											<td></td>
										</tr>
										<tr>
											<td width="80">Username</td>
											<td valign="top" align="left"><input type='text'
												id='username' size="30" maxlength="40" name='j_username'
												value='<c:if test="${not empty param.login_error}">
                                                     <c:out value="${SPRING_SECURITY_LAST_USERNAME}"/>
                                                     </c:if>' />
											</td>
										</tr>
										<tr>
											<td width="80">Password</td>
											<td valign="top" align="left"><input type='password'
												name='j_password' size="30" maxlength="30"></td>
										</tr>
										<tr>
											<td></td>
											<td><input type="submit" value="Submit" /></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</form></td>
		</tr>
	</table>
</body>
</html>