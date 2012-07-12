<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
  <title><decorator:title default="Address Book Demo" /></title>

  <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-2.0.4.css"/>" />
  <link rel="stylesheet" type="text/css" href="<c:url value="/css/google-bootstrap.css"/>" />
  <link rel="stylesheet" type="text/less" href="<c:url value="/css/app-styles.less"/>" />

  <script src="<c:url value="/js/vendor/jquery-1.7.2.min.js"/>"></script>
  <script src="<c:url value="/js/vendor/bootstrap-dropdown.js"/>"></script>
  <script src="<c:url value="/js/vendor/less-1.3.0.min.js"/>"></script>

  <decorator:head/>
</head>
<body<decorator:getProperty property="body.id" writeEntireProperty="true"/><decorator:getProperty property="body.class" writeEntireProperty="true"/>>

<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="brand" href="<c:url value="/" />"><fmt:message key="app.name"/></a>
      <ul class="nav">
        <sec:authorize access="isAuthenticated()">
        <li class=""><a href="#">Menu 1</a></li>
        <li class=""><a href="#">Menu 2</a></li>
        </sec:authorize>
      </ul>
      <ul class="nav pull-right">
        <li class="divider-vertical"></li>
        <li class="dropdown">
          <sec:authorize access="isAuthenticated()">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <sec:authentication property="principal.username" />
            <i class="caret"></i>
          </a>
          <ul class="dropdown-menu">
            <li><a href=""><fmt:message key="topbar.settings"/></a></li>
            <li class="divider"></li>
            <li><a href="<c:url value="/logout"/>"><fmt:message key="topbar.logout"/></a></li>
          </ul>
          </sec:authorize>
          <sec:authorize access="isAnonymous()">
          <a href="<c:url value="/login"/>"><fmt:message key="topbar.login"/></a>
          </sec:authorize>
        </li>
      </ul>
    </div>
  </div>
</div>

<decorator:body />

<div class="ft clearfix">
  <span class="copyright"><fmt:message key="app.copyright"/></span>
  <span class="app"><fmt:message key="app.name"/> (build <fmt:message key="app.buildNumber"/>)</span>
  <span class="contact"><a href="#">Report a problem</a></span>
</div>

</body>
</html>
