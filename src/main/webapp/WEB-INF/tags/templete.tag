<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@tag description="The template for the front-end" pageEncoding="UTF-8" %>
<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="head_area" fragment="true" %>
<%@attribute name="body_area" fragment="true" required="true" %>
<%@attribute name="javascript" fragment="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SK- Cloud HK - Upload de arquivos para o Google Drive</title>
    <meta name="description" content="Enviar arquivos usando URL para o Google Drive da maneira fácil.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="ReTB1LPGTaMBFG8EIW7EoAIXcr3QKu-RibNeVm7WkeM" />
    <meta name="robots" content="all,follow">
    <link rel=apple-touch-icon href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/160px-Anonymous_emblem.svg.png"/>
    <link rel="shortcut icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/160px-Anonymous_emblem.svg.png"/>
    <link rel=apple-touch-icon sizes=180x180 href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/160px-Anonymous_emblem.svg.png">
    <link rel=icon type="image/png" sizes=32x32 href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/160px-Anonymous_emblem.svg.png">
    <link rel=icon type="image/png" sizes=16x16 href="//cdn.jsdelivr.net/gh/ParveenBhadooOfficial/BhadooJS@1.0.14/icons/favicon-16x16.png">
    <link rel=mask-icon href="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/160px-Anonymous_emblem.svg.png" color="#5bbad5">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/css/bootstrap.min.css">
    <!-- Google fonts - Lato | Open Sans | Poppins | Roboto | Work Sans -->
    <link href="https://fonts.googleapis.com/css?family=Roboto|Lato|Open+Sans|Poppins|Work+Sans" rel="stylesheet">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/css/style.default.css" id="theme-stylesheet">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://www.rw-designer.com/icon-image/5775-32x32x8.png">
    <!-- Font Awesome CDN-->
    <script src="https://use.fontawesome.com/99347ac47f.js"></script>
    <!-- Font Icons CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/jscdn/icons/icons.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <jsp:invoke fragment="head_area"/>
    <style>
    .g-login:hover { content: url('https://cdn.jsdelivr.net/gh/jscdn/images@1.0.3/logo/google/signin/btn_google_signin_dark_focus_web.png'); }
        .gbii {
    background-image: url(${user.profilePhotoUrl});
    }
    .gb_Ea {
    -webkit-background-size: 32px 32px;
    background-size: 32px 32px;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    display: block;
    margin: -1px;
    overflow: hidden;
    position: relative;
    height: 32px;
    width: 32px;
    z-index: 0;
    }</style>
</head>
<body>
<div class="page home-page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="/" class="navbar-brand">
                        <div class="brand-text brand-big hidden-lg-down">
			<img border="0" alt="SK Cloud HK" src="https://svgsilh.com/svg_v2/150097.svg" height="30px">
                        </div>
                        <div class="brand-text brand-small"><strong>BCD</strong></div>
                    </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                    <c:choose>
	                    <c:when test='${empty(user)}'>
                        <li class="nav-item">
			<img class="g-login" src="https://cdn.jsdelivr.net/gh/jscdn/images@1.0.3/logo/google/signin/btn_google_signin_light_normal_web.png" title="Fazer Login Google" onclick="location.href = '/api/oauth/google/redirect'">
			</li>
                        </c:when>
                        <c:otherwise>	
                        <li class="nav-item"><a href="/api/oauth/google/redirect">Mudar De Usuario</a></li>
                        </c:otherwise>
	                </c:choose>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar" style="min-height: 100%">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <c:choose>
                    <c:when test='${empty(user)}'>
                        <div class="avatar"><img src="https://cdn0.iconfinder.com/data/icons/people-12/24/Anonymous-2-512.png" alt="Usuario"
                                                 class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <p>Welcome</p>
                            <h1 class="h4">Usuario</h1>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="avatar"><img src="${user.profilePhotoUrl}"
                                                 alt="Avatar of <c:out value='${user.name}' />"
                                                 class="img-fluid rounded-circle"></div>
                        <div class="title">
                            <p>Welcome</p>
                            <h1 class="h4"><c:out value='${user.name}'/></h1>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- Sidebar Navidation Menus --><span class="heading">Main</span>
            <ul class="list-unstyled">
                <li><a href="/"><i class="fa fa-home"></i>Inicio</a></li>
                <li><a href="/new_upload"><i class="fa fa-cloud-upload"></i>Novo Upload</a></li>
                <li><a href="/uploads"> <i class="fa fa-tachometer"></i>Seus Uploads</a></li>
                <!-- <li><a href="https://t.me/Nyan_SK"> <i class="fa fa-thumbs-o-up"></i>Sugestões e Idéias</a></li> -->
                <!-- <li><a href="https://github.com/jessikp/SK-Cloud-HK"> <i class="fa fa-bug"></i>Reportar Bug</a></li> -->
                <li><a href="https://t.me/SakerDev_Sec_InFo"> <i class="fa fa-envelope-o "></i>Contato</a></li>
            </ul>
        </nav>
        <div class="content-inner" id="content-inner">

            <jsp:invoke fragment="body_area"/>

            <div class="push"></div>
        </div>
    </div>
</div>
<!-- Javascript files-->
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/tether.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/jquery.cookie.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/front.js"></script>
<script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/sticky-footer.js"></script>
<jsp:invoke fragment="javascript"/>
</body>
</html>
