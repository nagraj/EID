
<%@ page import="net.sigmainfo.eid.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userInfo">
			
				<g:if test="${userInfoInstance?.addr1}">
				<li class="fieldcontain">
					<span id="addr1-label" class="property-label"><g:message code="userInfo.addr1.label" default="Addr1" /></span>
					
						<span class="property-value" aria-labelledby="addr1-label"><g:fieldValue bean="${userInfoInstance}" field="addr1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="userInfo.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${userInfoInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="userInfo.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${userInfoInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="userInfo.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${userInfoInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="userInfo.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${userInfoInstance?.user?.id}">${userInfoInstance?.user?.firstName.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.addr2}">
				<li class="fieldcontain">
					<span id="addr2-label" class="property-label"><g:message code="userInfo.addr2.label" default="Addr2" /></span>
					
						<span class="property-value" aria-labelledby="addr2-label"><g:fieldValue bean="${userInfoInstance}" field="addr2"/></span>
					
				</li>
				</g:if>
			
				<%--<g:if test="${userInfoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="userInfo.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${userInfoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="userInfo.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${userInfoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
				--%>
				
				<g:if test="${userInfoInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="userInfo.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${userInfoInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="userInfo.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${userInfoInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="userInfo.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${userInfoInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.pin}">
				<li class="fieldcontain">
					<span id="pin-label" class="property-label"><g:message code="userInfo.pin.label" default="Pin" /></span>
					
						<span class="property-value" aria-labelledby="pin-label"><g:fieldValue bean="${userInfoInstance}" field="pin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.secondaryEmail}">
				<li class="fieldcontain">
					<span id="secondaryEmail-label" class="property-label"><g:message code="userInfo.secondaryEmail.label" default="Secondary Email" /></span>
					
						<span class="property-value" aria-labelledby="secondaryEmail-label"><g:fieldValue bean="${userInfoInstance}" field="secondaryEmail"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInfoInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
