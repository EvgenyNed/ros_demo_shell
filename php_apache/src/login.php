<?php require_once("inc/connection.php");?>
<?php
// Страница авторизации

// Функция для генерации случайной строки

// Соединямся с БД

if(isset($_POST['submit']))
{
    // Вытаскиваем из БД запись, у которой логин равняеться введенному
    $real_login = pg_escape_string($_POST['login']);
    $query = pg_query($link,"SELECT user_login, user_password FROM users WHERE user_login='$real_login' LIMIT 1;");
    $data = pg_fetch_assoc($query);

    // Сравниваем пароли
    if($data['user_password'] === $_POST['password'])
    {

  // Переадресовываем браузер на страницу проверки нашего скрипта
        header("Location: check.php");
        pg_close($link);
        exit();
    }
    else
    {
        print "Вы ввели неправильный логин/пароль";
    }
    pg_close($link);
}
?>
<form method="POST">
Логин <input name="login" type="text" required><br>
Пароль <input name="password" type="password" required><br>
<input name="submit" type="submit" value="Войти">
</form>

