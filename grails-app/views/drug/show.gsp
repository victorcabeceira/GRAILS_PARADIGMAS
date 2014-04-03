
<%@ page import="entities.Drug" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-drug" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.manufacturer.label" default="Manufacturer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "manufacturer")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "type")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.quantity.label" default="Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "quantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.price.label" default="Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "price")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.register.label" default="Register" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "register")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="drug.code.label" default="Code" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: drugInstance, field: "code")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
