<%-- 
    Document   : Factory
    Created on : May 15, 2024, 10:49:05 AM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:html>
    <html:form action="fact.do" method="POST">
        <p>Number: <html:text name="FactForm" property="number" /> </p>
        <p> <html:submit value="Factory" /></p>     
    </html:form>
    
</html:html>
