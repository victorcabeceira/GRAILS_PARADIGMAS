<%@ page import="entities.Perfumery" %>



<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="perfumery.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${perfumeryInstance.constraints.type.inList}" required="" value="${perfumeryInstance?.type}" valueMessagePrefix="perfumery.type"/>
</div>

