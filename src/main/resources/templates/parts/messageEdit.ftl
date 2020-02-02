<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Message editor
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group col-md-6">
                <input type="text" name="text" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" placeholder="Введите сообщение" />
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
            </div>
            <div class="form-group col-md-6">
                <input type="text" name="tag" class="form-control ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.tag}</#if>" placeholder="Тэг">
                <#if textError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group col-md-3">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
            <div class="form-group col-md-6">
                <button type="submit" class="btn btn-primary">Save message</button>
            </div>
        </form>
    </div>
</div>