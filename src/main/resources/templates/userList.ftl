<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    List of User
    ${message?ifExists}
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th>CommandLine1</th>
            <th>CommandLine2</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
                <td><a href="/user/delete/${user.id}">delete</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>