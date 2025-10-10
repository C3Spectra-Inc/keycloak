<#--
  Default error.ftl for Keycloak themes. You can customize this as needed.
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${message!"Error"}</title>
    <link rel="stylesheet" href="resources/css/styles.css">
</head>
<body>
    <div class="kc-error">
        <h1>${message!"An error occurred"}</h1>
        <p>${error!""}</p>
        <a href="${url.loginUrl}">Back to login</a>
    </div>
</body>
</html>
