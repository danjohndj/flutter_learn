<%--
  Created by IntelliJ IDEA.
  User: danjohnson
  Date: 3/3/21
  Time: 10:22 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="list" action="index">Students list</g:link> </li>
        </ul>
    </div>
    <div id="show-student" class="content scafford-show" role="main">
        <f:display bean="student"/>
        <g:form resource="${this.student}" method="DELETE">
            <fieldset class="buttons">
                <input class="delete" type="submit" value="delete"/>
            </fieldset>
        </g:form>
    </div>
</body>
</html>