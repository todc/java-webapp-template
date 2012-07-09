<%@ include file="/common/taglibs.jsp"%>

<head>
  <title>Login</title>
</head>
<body id="login">

  <form accept-charset="UTF-8" action="<c:url value="/j_spring_security_check"/>" method="POST" class="well login-form">
    <fieldset>
      <h2>Login</h2>

      <c:if test="${param.invalid}">
      <div class="error">Invalid username or password.</div>
      </c:if>

      <label for="username"><strong>Username</strong></label>
      <input type="text" id="username" name="j_username" />
      <label for="password"><strong>Password</strong></label>
      <input type="password" id="password" name="j_password" />

      <input class="btn btn-primary" name="submit" type="submit" value="Login" />
      <label class="checkbox">
        <input type="checkbox" id="remember_me" value="1" />
        Remember me
      </label>
    </fieldset>
  </form>

<script type="text/javascript">
  $(function() {
    $("#username").focus();
  });
</script>

</body>