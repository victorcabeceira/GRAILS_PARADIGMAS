
<%@ page import="entities.Client" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-client" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="firstName" title="${message(code: 'client.firstName.label', default: 'First Name')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'client.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'client.cpf.label', default: 'Cpf')}" />
			
				<g:sortableColumn property="age" title="${message(code: 'client.age.label', default: 'Age')}" />
			
				<g:sortableColumn property="email" title="${message(code: 'client.email.label', default: 'Email')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${clientInstanceList}" status="i" var="clientInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "firstName")}</g:link></td>
			
				<td>${fieldValue(bean: clientInstance, field: "lastName")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "age")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "email")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${clientInstanceTotal}" />
	</div>
</section>

</body>

</html>
