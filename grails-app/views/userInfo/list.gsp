
<%@ page import="net.sigmainfo.eid.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="addr1" title="${message(code: 'userInfo.addr1.label', default: 'Addr1')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'userInfo.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'userInfo.state.label', default: 'State')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'userInfo.country.label', default: 'Country')}" />
					
						<th><g:message code="userInfo.user.label" default="User" /></th>
					
						<g:sortableColumn property="addr2" title="${message(code: 'userInfo.addr2.label', default: 'Addr2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInfoInstanceList}" status="i" var="userInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInfoInstance.id}">${fieldValue(bean: userInfoInstance, field: "addr1")}</g:link></td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "addr2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInfoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
