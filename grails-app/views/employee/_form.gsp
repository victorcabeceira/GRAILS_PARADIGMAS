<%@ page import="entities.Employee" %>



			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} required">
				<label for="firstName" class="control-label"><g:message code="employee.firstName.label" default="First Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="firstName" maxlength="25" required="" value="${employeeInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} required">
				<label for="lastName" class="control-label"><g:message code="employee.lastName.label" default="Last Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="lastName" maxlength="25" required="" value="${employeeInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'cpf', 'error')} required">
				<label for="cpf" class="control-label"><g:message code="employee.cpf.label" default="Cpf" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="cpf" maxlength="14" required="" value="${employeeInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'age', 'error')} required">
				<label for="age" class="control-label"><g:message code="employee.age.label" default="Age" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="age" min="0" required="" value="${employeeInstance.age}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 'age', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 's_code', 'error')} required">
				<label for="s_code" class="control-label"><g:message code="employee.s_code.label" default="Scode" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="s_code" min="0" required="" value="${employeeInstance.s_code}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 's_code', 'error')}</span>
				</div>
			</div>

