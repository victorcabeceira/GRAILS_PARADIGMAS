<%@ page import="entities.Client" %>



			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'firstName', 'error')} required">
				<label for="firstName" class="control-label"><g:message code="client.firstName.label" default="First Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="firstName" maxlength="25" required="" value="${clientInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'lastName', 'error')} required">
				<label for="lastName" class="control-label"><g:message code="client.lastName.label" default="Last Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="lastName" maxlength="25" required="" value="${clientInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label"><g:message code="client.cpf.label" default="Cpf" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cpf" required="" value="${clientInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'age', 'error')} required">
				<label for="age" class="control-label"><g:message code="client.age.label" default="Age" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="age" required="" value="${clientInstance.age}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'age', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="client.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="email" name="email" required="" value="${clientInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'email', 'error')}</span>
				</div>
			</div>

