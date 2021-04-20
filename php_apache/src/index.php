<?php

if(isset($_POST['reg_btn']))
{
  // Переадресовываем браузер на страницу регистрации
      header("Location: register.php"); exit();
}
if(isset($_POST['log_btn']))
{
  // Переадресовываем браузер на страницу входа
      header("Location: login.php"); exit();
                  }

?>

<form method="POST">
<input name="reg_btn" type="submit" value="Регистрация">
<input name="log_btn" type="submit" value="Вход">
</form>
