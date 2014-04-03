<%@ page import="entities.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 's_code', 'error')} required">
	<label for="s_code">
		<g:message code="employee.s_code.label" default="Scode" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="s_code" type="number" value="${employeeInstance.s_code}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="25" required="" value="${employeeInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="25" required="" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstanceemployeeInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="employee.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${employeeInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="employee.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${employeeInstance.age}" required=""/>
</div>