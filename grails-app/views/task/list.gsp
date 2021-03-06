

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Task List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Task</g:link></span>
        </div>
        <div class="body">
            <h1>Task List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="description" title="Description" />
                        
                   	        <th>Quest</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${taskList}" status="i" var="task">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${task.id}">${fieldValue(bean:task, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:task, field:'description')}</td>
                        
                            <td>${fieldValue(bean:task, field:'quest')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Task.count()}" />
            </div>
        </div>
    </body>
</html>
