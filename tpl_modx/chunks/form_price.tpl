<form id="price_download" action="{$_modx->resource.id | url}" method="post" class="section-consultation__form" enctype="multipart/form-data">
    <input type="hidden" name="page" value="{$_modx->resource.pagetitle | htmlent}">
    <input type="hidden" name="pageid" value="{$_modx->resource.id}">
    <input type="hidden" name="form_name" value="Скачал прайс лист">
    <div class="form-group position-relative">
        <i class="user-icon position-absolute"></i>
        <input type="text" name="name" class="form-control mt-4"
               placeholder="Имя">
    </div>
    <div class="form-group position-relative">
        <i class="phone-icon position-absolute"></i>
        <input type="text" name="phone" class="form-control mt-4"
               placeholder="Телефон">
    </div>
    <div class="form-group position-relative">
        <i class="email-icon position-absolute"></i>
        <input type="text" name="email" class="form-control mt-4" placeholder="Почта">
    </div>

    <button type="submit" class="btn btn-warning w-100 mt-4">
            Скачать прайс-лист
    </button>

    <p class="text-center text-muted mt-4 mb-0">Нажимая на кнопку “Получит консультацию” вы
        даёте согласие на обработку <a href="">
            персональных данных
        </a></p>
</form>


