<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:set var="appName" value="Task Watch" scope="page"/>
    <title>Task Watch | <g:layoutTitle/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}"/>
    <style type="text/css">
    body {
        padding-top: 60px;
    }
    </style>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.countdown.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'timepicker.css')}"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>

    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.8.0.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap-button.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap-timepicker.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.countdown.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
    <g:layoutHead/>
</head>

<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/">Task Watch</a>

            <div class="navbar-search input-append pull-right">
                <input class="span2" id="searchBox" size="16" type="text" placeholder="Search">
                <span class="add-on"><i class="icon-search"></i></span>
            </div>

            <div class="nav-collapse collapse">
                <ul class="nav">
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
                    </g:each>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <g:if test="${flash.error}">
        <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">×</button>
            ${flash.error}
        </div>
    </g:if>
    <g:if test="${flash.success}">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert">×</button>
            ${flash.success}
        </div>
    </g:if>
    <g:layoutBody/>
</div>
<footer>
    <div class="navbar navbar-fixed-bottom">
        <p>&copy;&nbsp;<a href="http://www.intelligrape.com">Intelligrape Software Ltd.</a></p>
    </div>
</footer>

</body>
</html>
