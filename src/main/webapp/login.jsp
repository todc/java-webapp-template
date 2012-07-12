<%@ include file="/common/taglibs.jsp"%>

<head>
  <title><fmt:message key="page.login.title"/></title>
</head>
<body id="login">

  <form accept-charset="UTF-8" action="<c:url value="/j_spring_security_check"/>" method="POST" class="well login-form">
    <fieldset>
      <h2><fmt:message key="page.login.title"/></h2>

      <c:if test="${param.invalid}">
      <div class="error"><fmt:message key="page.login.invalid_credentials"/></div>
      </c:if>

      <label for="username"><strong><fmt:message key="page.login.username"/></strong></label>
      <input type="text" id="username" name="j_username" />
      <label for="password"><strong><fmt:message key="page.login.password"/></strong></label>
      <input type="password" id="password" name="j_password" />

      <input class="btn btn-primary" name="submit" type="submit" value="Login" />
      <label class="checkbox">
        <input type="checkbox" id="remember_me" value="1" />
        <fmt:message key="page.login.remember"/>
      </label>
    </fieldset>
  </form>

<script type="text/javascript">
  $(function() {
    $("#username").focus();
  });
</script>

</body>