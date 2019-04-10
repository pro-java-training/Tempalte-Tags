<%@ tag body-content="scriptless" dynamic-attributes="dynamicAttributes"
        trimDirectiveWhitespaces="true" %>
<%@ attribute name="htmlTitle" type="java.lang.String" rtexprvalue="true"
              required="true" %>
<%@ include file="/WEB-INF/jsp/base.jspf" %>

<!doctype html>
<html <c:forEach items="${dynamicAttributes}" var="attr">
            <c:out value='${attr.key}="${fn:escapeXml(attr.value)}"' escapeXml="false"/>
      </c:forEach>
<head>
    <title><c:out value="${fn:trim(htmlTitle)}" /></title>
</head>
<body>
    <jsp:doBody />
</body>
</html>