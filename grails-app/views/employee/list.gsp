
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
			
				<g:sortableColumn property="s_code" title="${message(code: 'employee.s_code.label', default: 'Scode')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "s_code")}</g:link></td>
			
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
