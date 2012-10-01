
<%@ page import="rgms.publication.TechnicalReport" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'technicalReport.label', default: 'TechnicalReport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-technicalReport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-technicalReport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list technicalReport">
			
				<g:if test="${technicalReportInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="technicalReport.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${technicalReportInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.publicationDate}">
				<li class="fieldcontain">
					<span id="publicationDate-label" class="property-label"><g:message code="technicalReport.publicationDate.label" default="Publication Date" /></span>
					
						<span class="property-value" aria-labelledby="publicationDate-label"><g:formatDate date="${technicalReportInstance?.publicationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.file}">
				<li class="fieldcontain">
					<span id="file-label" class="property-label"><g:message code="technicalReport.file.label" default="File" /></span>
					
						<span class="property-value" aria-labelledby="file-label"><g:fieldValue bean="${technicalReportInstance}" field="file"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.researchLine}">
				<li class="fieldcontain">
					<span id="researchLine-label" class="property-label"><g:message code="technicalReport.researchLine.label" default="Research Line" /></span>
					
						<span class="property-value" aria-labelledby="researchLine-label"><g:link controller="researchLine" action="show" id="${technicalReportInstance?.researchLine?.id}">${technicalReportInstance?.researchLine?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.bibTex}">
				<li class="fieldcontain">
					<span id="bibTex-label" class="property-label"><g:message code="technicalReport.bibTex.label" default="Bib Tex" /></span>
					
						<span class="property-value" aria-labelledby="bibTex-label"><g:fieldValue bean="${technicalReportInstance}" field="bibTex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.institution}">
				<li class="fieldcontain">
					<span id="institution-label" class="property-label"><g:message code="technicalReport.institution.label" default="Institution" /></span>
					
						<span class="property-value" aria-labelledby="institution-label"><g:fieldValue bean="${technicalReportInstance}" field="institution"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${technicalReportInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="technicalReport.members.label" default="Members" /></span>
					
						<g:each in="${technicalReportInstance.members}" var="m">
						<span class="property-value" aria-labelledby="members-label"><g:link controller="member" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${technicalReportInstance?.id}" />
					<g:link class="edit" action="edit" id="${technicalReportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
