
<%@ page import="entities.Drug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drug" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drug" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drug">
			
				<g:if test="${drugInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="drug.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${drugInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.manufacturer}">
				<li class="fieldcontain">
					<span id="manufacturer-label" class="property-label"><g:message code="drug.manufacturer.label" default="Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="manufacturer-label"><g:fieldValue bean="${drugInstance}" field="manufacturer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="drug.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${drugInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="drug.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${drugInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.register}">
				<li class="fieldcontain">
					<span id="register-label" class="property-label"><g:message code="drug.register.label" default="Register" /></span>
					
						<span class="property-value" aria-labelledby="register-label"><g:fieldValue bean="${drugInstance}" field="register"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="drug.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${drugInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${drugInstance?.id}" />
					<g:link class="edit" action="edit" id="${drugInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
