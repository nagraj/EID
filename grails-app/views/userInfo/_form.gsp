<%@ page import="net.sigmainfo.eid.UserInfo" %>



<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'addr1', 'error')} required">
	<label for="addr1">
		<g:message code="userInfo.addr1.label" default="Addr1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addr1" required="" value="${userInfoInstance?.addr1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="userInfo.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${userInfoInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="userInfo.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${userInfoInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="userInfo.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${userInfoInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="userInfo.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${net.sigmainfo.eid.User.list()}" optionKey="id" required="" value="${userInfoInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'addr2', 'error')} ">
	<label for="addr2">
		<g:message code="userInfo.addr2.label" default="Addr2" />
		
	</label>
	<g:textField name="addr2" value="${userInfoInstance?.addr2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'fax', 'error')} ">
	<label for="fax">
		<g:message code="userInfo.fax.label" default="Fax" />
		
	</label>
	<g:textField name="fax" value="${userInfoInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="userInfo.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" value="${userInfoInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="userInfo.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${userInfoInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'pin', 'error')} ">
	<label for="pin">
		<g:message code="userInfo.pin.label" default="Pin" />
		
	</label>
	<g:textField name="pin" value="${userInfoInstance?.pin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'secondaryEmail', 'error')} ">
	<label for="secondaryEmail">
		<g:message code="userInfo.secondaryEmail.label" default="Secondary Email" />
		
	</label>
	<g:textField name="secondaryEmail" value="${userInfoInstance?.secondaryEmail}"/>
</div>

