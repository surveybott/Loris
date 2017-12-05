<script src="https://www.google.com/recaptcha/api.js"></script>
<div class="panel panel-default panel-center">
  <div class="panel-heading">
    <h3 class="panel-title">
      {if $success}
        Account requested!
      {else}
        {$page_title}
      {/if}
    </h3>
  </div>
  <div class="panel-body">
  {if $success}
    <div class="success-message">
      <h1>Thank you!</h1>
      <p>Your request for an account has been received successfully.</p>
      <a href="/" class="btn btn-primary btn-block">
        Return to Login Page
      </a>
    </div>
  {else}
    <p class="text-center">
      Please fill in the form below to request a LORIS account.<br/>
      We will contact you once your account has been approved.
    </p>
    <form method="POST"
          name="form1" id="form1">
      <div class="form-group">
        {$form.firstname.html} {$form.firstname.error}
      </div>
      <div class="form-group">
        {$form.lastname.html} {$form.lastname.error}
      </div>
      <div class="form-group">
        {$form.from.html} {$form.from.error}
      </div>
      <div class="form-group">
        {$form.site.html} {$form.site.error}
      </div>
      <div class="form-group">
        {$form.examiner.html}
        {* checkbox's html method in LORISForm seems to automagically add the label *}
      </div>
      <div class="form-group">
        {$form.radiologist.html}
      </div>
      {if $captcha_key}
        {* Google reCaptcha *}
        <div class="form-group">
          <div class="g-recaptcha" data-sitekey="{$captcha_key}"></div>
          <span id="helpBlock" class="help-block">
              <b class="text-danger">{$error_message['captcha']}</b>
            </span>
        </div>
      {/if}
      <div class="form-group">
        <input type="submit" name="Submit" class="btn btn-primary btn-block"
               value="Request Account"/>
      </div>
      <div class="form-group">
        <a href="/">Back to login page</a>
      </div>
    {/if}
  </div>
</div>