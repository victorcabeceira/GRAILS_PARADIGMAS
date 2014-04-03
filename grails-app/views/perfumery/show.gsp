
<%@ page import="entities.Perfumery" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'perfumery.label', default: 'Perfumery')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-perfumery" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.manufacturer.label" default="Manufacturer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "manufacturer")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.quantity.label" default="Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "quantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.price.label" default="Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "price")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.stock.label" default="Stock" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "stock")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.type.label" default="Type" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "type")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="perfumery.fragrancy.label" default="Fragrancy" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: perfumeryInstance, field: "fragrancy")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
