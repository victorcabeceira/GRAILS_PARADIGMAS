
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
				<td valign="top" class="name"><g:message code="employee.s_code.label" default="Scode" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeeInstance, field: "s_code")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
