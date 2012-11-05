<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div class="span6">
    <form action="${postUrl}" method="POST" autocomplete="off" class="form-horizontal well">
        <legend>Please Login</legend>

        <div class="control-group">
            <label class="control-label" for="inputEmail">Email / Username</label>

            <div class="controls">
                <input name="j_username" type="text" id="inputEmail" placeholder="Email / Username">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="password">Password</label>

            <div class="controls">
                <input name="j_password" type="password" placeholder="Password">
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>> Remember me
                </label>
                <button type="submit" class="btn">Sign in</button>
            </div>
        </div>
    </form>

</div>

<div class="span6">

    <form class="form-horizontal well">
        <legend>Register</legend>

        <div class="control-group">
            <label class="control-label" for="email">Email / Username</label>

            <div class="controls">
                <input type="text" id="email" placeholder="Email / Username">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="password">Password</label>

            <div class="controls">
                <input type="password" placeholder="Password">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="confirm_password">Confirm Password</label>

            <div class="controls">
                <input type="password" id="confirm_password" placeholder="Confirm Password">
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn">Register</button>
            </div>
        </div>
    </form>
</div>
<script type='text/javascript'>
    <!--
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>
</body>
</html>
