<%@ page import="entities.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="client.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="25" required="" value="${clientInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="client.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="25" required="" value="${clientInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="client.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${clientInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="client.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${clientInstance?.email}"/>
</div>

