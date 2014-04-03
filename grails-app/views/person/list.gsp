
<%@ page import="entities.Person" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-person" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="firstName" title="${message(code: 'person.firstName.label', default: 'First Name')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'person.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'person.cpf.label', default: 'Cpf')}" />
			
				<g:sortableColumn property="age" title="${message(code: 'person.age.label', default: 'Age')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${personInstanceList}" status="i" var="personInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "firstName")}</g:link></td>
			
				<td>${fieldValue(bean: personInstance, field: "lastName")}</td>
			
				<td>${fieldValue(bean: personInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: personInstance, field: "age")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${personInstanceTotal}" />
	</div>
</section>

</body>

</html>
