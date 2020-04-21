
{$_modx->runSnippet("!AjaxForm", [
'snippet' => 'FormIt',
'form' => '@FILE chunks/form_phone.tpl',
'hooks' => 'spam,email,FormItSaveForm',
'emailTpl' => '@FILE chunks/mail_mail.tpl',
'emailSubject' => 'Заказать звонок',
'emailTo' => $_modx->getPlaceholder('+conf_to_email'),
'emailFrom' => $_modx->config.emailsender,
'formName' => 'Заказать звонок',
'validate' => 'page:required,name:required,username:blank',
'validationErrorMessage'=>'Пожалуйста, исправьте ошибки!',
'successMessage' =>'Ваше сообщение успешно отправлено',
])}