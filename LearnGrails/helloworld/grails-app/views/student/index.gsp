<%--
  Created by IntelliJ IDEA.
  User: danjohnson
  Date: 3/3/21
  Time: 10:09 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Grails Student</title>
    <meta name="layout" content="main"/>
</head>

<body>
    <div class="nav" role="navigation">
        <ul>
            <li><g:link class="create" action="create">Create</g:link></li>
        </ul>
    </div>
    <div id="list-student" class="content scaffold-list" role="main">
        <f:table collection="${studentList}" properties="['firstName','lastName']" />
    </div>
</body>
</html>