<?php include '../php_default/controle_login.php'; ?>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Sobre Nós | Mascot</title>

        <!-- Bootstrap -->
        <link href="../ferramentas_externas/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">

        <link rel="stylesheet" type="text/css" href="../css/layout_default.css" />
    </head>
    <body>
        <div class="container mycontainer">
            <header>
                <?php
                $linkLogo = "../img/logo_test.png";
                $linkInicio = "../index.php";
                $linkCaes = "lista_caes.php";
                $linkAdocao = "adocao.php";
                $linkApadrinhamento = "apadrinhamento.php";
                $linkDoacoes = "doacoes.php";
                $linkVoluntarios = "voluntarios.php";
                $linkLogin = "login_usuario.php";
                $linkCadastro = "cadastro_usuario.php";
                $linkLogout = "../php_default/deslogar_usuario.php";
                $linkMeusDados = "meus_dados.php";

                $linkControleCaes = "admin/editar_lista_caes.php";
                $linkPedidosAdocao = "admin/pedidos_adocao.php";
                $linkPedidosVoluntario = "admin/pedidos_voluntario.php";
                $linkControleUsuarios = "admin/controle_usuarios.php";
                
                $linkAreaPadrinho = "padrinho/area_padrinho.php";
                $linkAreaVoluntario = "voluntario/area_voluntario.php";

                include('../php_default/header_e_footer/header.php');
                ?>
            </header>

            <article>

                <div class="cabecalho center">
                    <h2>Sobre Nós<br/><small>Uma trajetória de sonhos que realizamos para nossos melhores amigos!</small></h2>
                </div>

                <div class="center">
                    <img src="../img/imgs_site/img_6.jpg" class="img-polaroid" style="width: 30%; margin-bottom: 15px;">

                    <h3> Conheça um pouco mais sobre nós</h3>
                    <p>---------------------------------------------------------------------.</p> 
                                       
                    
                    <div id="integrantes" class="well" style="width: 60%; margin: auto; margin-bottom: 25px; margin-top: 25px;">
                        <h4>Integrantes da Equipe</h4>
                        <ul style="text-align: left;">
                            <li>Pedro Henrique (ossunap21@gmail.com)</li>
                        </ul>
                    </div>
                    
                    --><b>Curta-nos no Facebook: </b><button class="btn btn-primary"><i class=" icon-thumbs-up icon-white"></i> Mascot</button>
                </div>
            </article>

            <footer>
                <?php
                $linkSobre = "sobre_nos.php";
                $linkLocalizacao = "localizacao.php";
                $linkDenuncie = "denuncie.php";

                include('../php_default/header_e_footer/footer.php');
                ?>
            </footer>
        </div>

        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../ferramentas_externas/bootstrap/js/bootstrap.js"></script>
    </body>
</html>