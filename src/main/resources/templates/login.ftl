<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    Login Page
    <@l.login path="/login" buttonName="Login"/>
    <a href="/registration">Add new user</a>
</@c.page>
