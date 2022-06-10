<?php

    $link = @mysqli_connect('localhost:3306', 'root', '');
    if (!$link) {
        die('Não foi possível conectar com o BD: ' . mysqli_connect_error());
    }

    $db_selected = @mysqli_select_db($link, 'mascot'); //mudar link
    if (!$db_selected) {
        die('Não foi possivel selecionar o esquema: ' . mysqli_error($link));
    }

    mysqli_query($link, "SET NAMES 'utf8'");
    mysqli_query($link, 'SET character_set_connection=utf8');
    mysqli_query($link, 'SET character_set_client=utf8');
    mysqli_query($link, 'SET character_set_results=utf8');

    