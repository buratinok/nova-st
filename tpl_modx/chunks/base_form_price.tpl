
{$_modx->runSnippet("!AjaxForm", [
'snippet' => 'FormIt',
'form' => '@FILE chunks/form_price.tpl',
'hooks' => 'spam,email,FormItSaveForm,FormItAutoResponder',
'emailTpl' => '@FILE chunks/mail_mail.tpl',
'emailSubject' => 'Скачан прайс-лист',
'emailTo' => $_modx->getPlaceholder('+conf_to_email'),
'emailFrom' => $_modx->config.emailsender,
'formName' => 'Заказать звонок',
'validate' => 'page:required,name:required,username:blank',
'validationErrorMessage'=>'Пожалуйста, исправьте ошибки!',
'successMessage' =>'Спасибо Прайс-лист отправлен Вам на почту',

'fiarTpl'=>'@FILE chunks/mail_client.tpl',
'fiarSubject'=>'Прайс-лист "Nova stroy"',
])}