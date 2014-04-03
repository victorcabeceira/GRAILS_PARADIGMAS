<%@ page import="entities.Person" %>



			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
				<label for="firstName" class="control-label"><g:message code="person.firstName.label" default="First Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="firstName" maxlength="25" required="" value="${personInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
				<label for="lastName" class="control-label"><g:message code="person.lastName.label" default="Last Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="lastName" maxlength="25" required="" value="${personInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label"><g:message code="person.cpf.label" default="Cpf" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cpf" required="" value="${personInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: personInstance, field: 'age', 'error')} required">
				<label for="age" class="control-label"><g:message code="person.age.label" default="Age" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="age" required="" value="${personInstance.age}"/>
					<span class="help-inline">${hasErrors(bean: personInstance, field: 'age', 'error')}</span>
				</div>
			</div>

