<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control mr-2" placeholder="Search by tag" value="${filter?ifExists}">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />
</@c.page>