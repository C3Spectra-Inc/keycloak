<#import "template.ftl" as layout>
<@layout.registrationLayout>
  <div class="wrap" role="main">
    <div class="card" role="region" aria-labelledby="reset-heading">
      <h1 id="reset-heading">${msg("emailForgotTitle")}</h1>
      <#if message?has_content>
        <div class="alert ${message.type}">
          ${kcSanitize(message.summary)?no_esc}
        </div>
      </#if>
      <p class="muted">
        <#if realm.duplicateEmailsAllowed>
          ${msg("emailInstructionUsername")}
        <#else>
          ${msg("emailInstruction")}
        </#if>
      </p>
      <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
        <div class="field">
          <label for="username">${msg("usernameOrEmail")}</label>
          <input id="username" name="username" type="text" value="${auth.attemptedUsername!}" placeholder="${msg("usernameOrEmail")}" autocomplete="username" autofocus />
        </div>
        <button class="btn" type="submit" name="reset" value="${msg("doSubmit")}">${msg("doSubmit")}</button>
        <div style="margin-top:16px;text-align:center">
          <a href="${url.loginUrl}">${msg("backToLogin")}</a>
        </div>
      </form>
    </div>
  </div>
</@layout.registrationLayout>
