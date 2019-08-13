<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div>
        <@l.logout/>
    </div>
    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="text" name="text" placeholder="Enter text">
            <input type="text" name="tag" placeholder="Enter tag">
            <input type="file" name="file">
            <button type="submit">Add</button>
        </form>
        <div>Filter</div>
        <form method="get" action="/main">
            <input type="text" name="filter" value="${filter?ifExists}">
            <button type="submit">Search</button>
        </form>
    </div>

    <div>All Messages</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</@c.page>