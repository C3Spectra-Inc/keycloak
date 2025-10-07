<#import "template.ftl" as layout>
<@layout.registrationLayout>
  <div class="wrap" role="main">
    <div class="logo" aria-hidden="true"
         style="background-image:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPgAAACMCAIAAADeAPOLAAABCGlDQ1BJQ0MgUHJvZmlzZQAAeJxjYGA8wQAELAYMDLl5JUVB7k4KKgYGBgYmBiYGBgYGBg4GNgYGBQkI0Dk4y0wAAeJxjYGAAgwA0l7g6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAABfJJREFUeF7t3Y1u2zYcwPHr7xP7v3pnZ0kU1bqJ4k4gQWZJq6q7q6q6q7q7u7u7u7u7u7u7u7t5Pj/5g9kS0k5QAAIgwYh8C0Zg1kAABgAAAGAAAAAAgAAACAAAAgAAABgAAAAIAAAAIAAAAIgAAACYgAAAIgAAACIAAAAmJc9gAABw3QAAAAAAAAAICgk9t/0x3tS5c3h5E8kJJ3n4u9q8v3a6g3x2k3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6b1bqZ1H0mQv0nQ3y3g6t3f6fAqV8o1V1YmkAAAAASUVORK5CYII=');"></div>
    <div class="card" role="region" aria-labelledby="login-heading">
      <h1 id="login-heading">Welcome back!</h1>
      <form id="kc-form-login" action="${url.loginAction}" method="post" aria-label="Sign in form">
        <div class="field">
          <label for="username">Email or Username</label>
          <input id="username" name="username" type="text" value="${login.username!}" placeholder="Enter your email or username" autocomplete="username" autofocus />
        </div>
        <div class="field pw">
          <label for="password">Password</label>
          <input id="password" name="password" type="password" placeholder="Password" autocomplete="current-password" />
          <span class="eye" aria-hidden="true">
            <svg viewBox="0 0 24 24" width="18" height="18" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
              <path d="M1 12s4-7 11-7 11 7 11 7-4 7-11 7S1 12 1 12z" stroke="#9CA3AF" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
              <circle cx="12" cy="12" r="3.1" stroke="#9CA3AF" stroke-width="1.6" />
            </svg>
          </span>
        </div>
        <div class="row">
          <label class="checkbox">
            <input type="checkbox" id="rememberMe" name="rememberMe" <#if login.rememberMe?? && login.rememberMe>checked</#if> />
            <span style="font-size:13px;color:#374151;font-weight:500">Keep me signed in</span>
          </label>
          <#if realm.resetPasswordAllowed>
            <a href="${url.loginResetCredentialsUrl}" class="forgot">Forgot your password?</a>
          </#if>
        </div>
        <button class="btn" type="submit" id="kc-login" aria-label="Sign in">Sign in</button>
        <#if social.providers?has_content>
          <div class="spacer"></div>
          <div class="sso">Sign in with SSO</div>
          <#list social.providers as p>
            <button class="btn secondary" type="button" onclick="window.location='${p.loginUrl}'" aria-label="Sign in with ${p.displayName}">${p.displayName}</button>
          </#list>
        </#if>
      </form>
    </div>
  </div>
</@layout.registrationLayout>
