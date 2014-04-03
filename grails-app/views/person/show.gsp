
<%@ page import="entities.Person" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-person" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.age.label" default="Age" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "age")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
