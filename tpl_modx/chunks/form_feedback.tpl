<form action="{$_modx->resource.id | url}" method="post" class="section-consultation__form" onsubmit="ym(21115507,'reachGoal','tnx_call'); return true;"
      enctype="multipart/form-data">
    <input type="hidden" name="page" value="{$_modx->resource.pagetitle | htmlent}">
    <input type="hidden" name="pageid" value="{$_modx->resource.id}">
    <input type="hidden" name="form_name" value="Перезвоните мне">
       <div class="form-group position-relative d-none">
        <label for="callbackform_username">Ваше имя</label>
        <input type="text" name="username" class="form-control mt-4"
                id="callbackform_username"
               placeholder="пользователь">
    </div>
    <div class="form-group position-relative">
        <i class="user-icon position-absolute"></i>
        <input type="text" name="name" class="form-control mt-4"
               placeholder="Имя">
    </div>
    <div class="form-group position-relative">
        <i class="phone-icon position-absolute"></i>
        <input type="tel" name="phone" class="form-control mt-4"
               placeholder="Телефон">
    </div>
    <button type="submit" class="btn btn-warning w-100 mt-4">Заказать звонок</button>


    <p class="text-center text-muted mt-4 mb-0">Нажимая на кнопку “Заказать звонок” вы
        даёте согласие на обработку <a href="">
            персональных данных
        </a></p>
</form>
