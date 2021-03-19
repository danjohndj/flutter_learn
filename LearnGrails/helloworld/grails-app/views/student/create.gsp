<%--
  Created by IntelliJ IDEA.
  User: danjohnson
  Date: 3/3/21
  Time: 10:17 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="main">
</head>

<body>
    <div id="create-student" class="content scaffold-create" role="main">
        <g:form resource="${this.student}" method="POST">
            <fieldset class="form">
                <f:all bean="student"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="Create" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>