<%@ page import="faux_eprint.Eprint" %>



<div class="fieldcontain ${hasErrors(bean: eprintInstance, field: 'repdesc', 'error')} required">
	<label for="repdesc">
		<g:message code="eprint.repdesc.label" default="Repdesc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="repdesc" required="" value="${eprintInstance?.repdesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eprintInstance, field: 'repname', 'error')} required">
	<label for="repname">
		<g:message code="eprint.repname.label" default="Repname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="repname" required="" value="${eprintInstance?.repname}"/>

</div>

