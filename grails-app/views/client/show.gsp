
<%@ page import="entities.Client" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-client" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.age.label" default="Age" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "age")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "email")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
