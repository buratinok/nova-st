<form action="{$_modx->resource.id | url}" method="post" class="section-form-questions__form row flex-column flex-md-row" enctype="multipart/form-data" onsubmit="ym(21115507,'reachGoal','tnx_call'); return true;">
    <input type="hidden" name="page" value="{$_modx->resource.pagetitle | htmlent}">
    <input type="hidden" name="pageid" value="{$_modx->resource.id}">
    <input type="hidden" name="form_name" value="Перезвоните мне">
    <div class="form-group position-relative d-none">
        <label for="callbackform_username">Ваше имя</label>
        <input type="text" name="username" class="form-control mt-4"
                id="callbackform_username"
               placeholder="пользователь">
    </div>
    <div class="col form-group position-relative align-self-start">
        <i class="icon user-icon position-absolute"></i>
        <input type="text" name="name" class="form-control"
               placeholder="Имя">
    </div>
    <div class="col form-group position-relative align-self-start">
        <i class="icon phone-icon position-absolute"></i>
        <input type="tel" name="phone" class="form-control"
               placeholder="Телефон">
    </div>
    <div class="col">
        <button type="submit" class="btn btn-warning w-100">Перезвонить мне</button>
        <p class="text-center text-muted mt-4 mb-0">Нажимая на кнопку “Получить консультацию” вы
            даёте согласие на обработку <a href="">
                персональных данных
            </a></p>
    </div>
</form>