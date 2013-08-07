<%@ page import="net.sigmainfo.eid.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${userInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="user.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${userInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${userInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		
	</label>
	<g:textField name="role" value="${userInstance?.role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userInfo', 'error')} ">
	<label for="userInfo">
		<g:message code="user.userInfo.label" default="User Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.userInfo?}" var="u">
    <li><g:link controller="userInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="userInfo" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'userInfo.label', default: 'UserInfo')])}</g:link>
</li>
</ul>

</div>

