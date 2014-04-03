
<%@ page import="entities.Perfumery" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'perfumery.label', default: 'Perfumery')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-perfumery" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-perfumery" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list perfumery">
			
				<g:if test="${perfumeryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="perfumery.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${perfumeryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${perfumeryInstance?.manufacturer}">
				<li class="fieldcontain">
					<span id="manufacturer-label" class="property-label"><g:message code="perfumery.manufacturer.label" default="Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="manufacturer-label"><g:fieldValue bean="${perfumeryInstance}" field="manufacturer"/></span>
					
				</li>
				</g:if>

				<g:if test="${perfumeryInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="perfumery.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${perfumeryInstance}" field="type"/></span>
					
				</li>
				</g:if>

				<g:if test="${perfumeryInstance?.fragrancy}">
				<li class="fieldcontain">
					<span id="fragrancy-label" class="property-label"><g:message code="perfumery.fragrancy.label" default="Fragrancy" /></span>
					
						<span class="property-value" aria-labelledby="fragrancy-label"><g:fieldValue bean="${perfumeryInstance}" field="fragrancy"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${perfumeryInstance?.id}" />
					<g:link class="edit" action="edit" id="${perfumeryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
