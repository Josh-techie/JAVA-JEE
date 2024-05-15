<%-- 
    Document   : result
    Created on : May 15, 2024, 11:15:54 AM
    Author     : youse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<html:html>
    <bean:message key="title" />
    <h2> The factory of 
        <bean:write name="FactForm" property="number" /> 
        =
        <bean:write name="FactForm" property="result"/>
    </h2>

</html:html>
