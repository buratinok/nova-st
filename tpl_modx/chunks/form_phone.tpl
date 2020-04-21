<form action="{$_modx->resource.id | url}" method="post" class="section-form-questions__form row flex-column flex-md-row"
      enctype="multipart/form-data">
    <input type="hidden" name="page" value="{$_modx->resource.pagetitle | htmlent}">
    <input type="hidden" name="pageid" value="{$_modx->resource.id}">
    <input type="hidden" name="form_name" value="Перезвоните мне">
    <div class="col form-group position-relative align-self-start">
        <i class="icon user-icon position-absolute"></i>
        <input type="text" name="name" class="form-control"
               placeholder="Имя">
    </div>
    <div class="col form-group position-relative align-self-start">
        <i class="icon phone-icon position-absolute"></i>
        <input type="text" name="phone" class="form-control"
               placeholder="Телефон">
    </div>
    <div class="col">
        <button type="submit" class="btn btn-warning w-100">Перезвонить мне</button>
        <p class="text-center text-muted mt-4 mb-0">Нажимая на кнопку “Получит консультацию” вы
            даёте согласие на обработку <a href="">
                персональных данных
            </a></p>
    </div>
</form>