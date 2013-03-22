<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>Address Book Demo :: Login</title>
  <link rel="stylesheet" type="text/css" href="${ctx}/css/app/login.css" />
</head>
<body>

<div class="container-fluid">

  <div class="signin">
    <div class="signin-box">
      <h2 class="form-signin-heading">Sign in</h2>

      <c:if test="${param.invalid}">
        <div class="alert alert-error">
          <strong>Invalid username or password.</strong>
        </div>
      </c:if>

      <form accept-charset="UTF-8" action="<c:url value='j_spring_security_check'/>" method="post">
        <fieldset>
          <label for="username">Username</label>
          <input type="text" class="input-block-level" name="j_username" id="username">
          <label for="passwd">Password</label>
          <input type="password" class="input-block-level" name="j_password" id="passwd">

          <input type="submit" class="btn btn-primary" value="Sign in">
          <label class="remember">
            <input type="checkbox" name="rememberMe" value="yes">
            <strong class="remember-label">Stay signed in</strong>
          </label>
        </fieldset>
      </form>

      <!--
      <ul>
        <li>
          <a id="link-forgot-pwd" href="#">Can't access your account?</a>
        </li>
      </ul>
      -->
    </div>
  </div>

</div>

<script type="text/javascript">
  $(function() {
    $("#username").focus();
  });
</script>

</body>
</html>