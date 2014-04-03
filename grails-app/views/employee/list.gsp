
<%@ page import="entities.Employee" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-employee" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="firstName" title="${message(code: 'employee.firstName.label', default: 'First Name')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'employee.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'employee.cpf.label', default: 'Cpf')}" />
			
				<g:sortableColumn property="age" title="${message(code: 'employee.age.label', default: 'Age')}" />
			
				<g:sortableColumn property="s_code" title="${message(code: 'employee.s_code.label', default: 'Scode')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "firstName")}</g:link></td>
			
				<td>${fieldValue(bean: employeeInstance, field: "lastName")}</td>
			
				<td>${fieldValue(bean: employeeInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: employeeInstance, field: "age")}</td>
			
				<td>${fieldValue(bean: employeeInstance, field: "s_code")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${employeeInstanceTotal}" />
	</div>
</section>

</body>

</html>
