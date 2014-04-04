
<%@ page import="entities.Employee" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-employee" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employee.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employee.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employee.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employee.age.label" default="Age" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "age")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employee.s_code.label" default="Scode" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "s_code")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
