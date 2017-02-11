<html xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Salesforce Lightning Design System Trailhead Module</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="../styles/salesforce-lightning-design-system-vf.min.css"  type="text/css">
</head>
<body>

  <!-- REQUIRED SLDS WRAPPER -->
  <div class="TDJ">

    <!-- MASTHEAD -->
    <p class="slds-text-heading--label slds-m-bottom--small">
      Salesforce Lightning Design System Trailhead Module
    </p>
    <!-- / MASTHEAD -->

    <!-- PAGE HEADER -->
    <!-- HEADING AREA -->
<div class="slds-media slds-media--top slds-no-space slds-grow">
  <div class="slds-media__figure">
    <span class="slds-avatar slds-avatar--medium">
      <img src="../SLDS221/assets/images/avatar1.jpg" alt="Deepa" />
    </span>
  </div>
  <div class="slds-media__body">
    <p class="slds-text-heading--label">Accounts</p>
    <h1 class="slds-page-header__title slds-truncate" title="My Accounts">My Accounts</h1>
  </div>
</div>
<!-- / HEADING AREA -->
    <!-- / PAGE HEADER -->
<!-- PRIMARY CONTENT WRAPPER -->
<div class="myapp">

  <!-- CREATE NEW ACCOUNT -->
  <div aria-labelledby="newaccountform">

    <!-- CREATE NEW ACCOUNT FORM -->
    <form class="slds-form--stacked" id="add-account-form">
      <!-- BOXED AREA -->
      <fieldset class="slds-box slds-theme--default slds-container--small">

        <legend id="newaccountform" class="slds-text-heading--medium slds-p-vertical--medium">Add a new account</legend>

        <div class="slds-form-element">
          <label class="slds-form-element__label" for="account-name">Name</label>
          <div class="slds-form-element__control">
            <input id="account-name" class="slds-input" type="text" placeholder="New account"/>
          </div>
        </div>
        <button class="slds-button slds-button--brand slds-m-top--medium" type="submit">Create Account</button>
      </fieldset>
      <!-- / BOXED AREA -->
    </form>
    <!-- CREATE NEW ACCOUNT FORM -->

  </div>
  <!-- / CREATE NEW ACCOUNT -->


<!-- PRIMARY CONTENT WRAPPER -->
<div class="myapp">

  <!-- ACCOUNT LIST TABLE -->
  <div id="account-list" class="slds-p-vertical--medium"></div>
  <!-- / ACCOUNT LIST TABLE -->
<table class="slds-table slds-table--bordered slds-table--cell-buffer slds-no-row-hover">
  <thead>
    <tr class="slds-text-heading--label">
      <th scope="col">Account ID</th>
      <th scope="col">Account name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">123</th>
      <td>Account 1</td>
    </tr>
    <tr>
      <th scope="row">456</th>
      <td>Account 2</td>
    </tr>
  </tbody>
</table>
</div>
<!-- / PRIMARY CONTENT WRAPPER -->
<div class="myapp">

  <ul class="slds-list--dotted slds-m-top--large">
    <li>Account 1</li>
    <li>Account 2</li>
    <li>Account 3</li>
    <li>Account 4</li>
    <li>Account 5</li>
    <li>Account 6</li>
    <li>Account 7</li>
    <li>Account 8</li>
    <li>Account 9</li>
    <li>Account 10</li>
  </ul>

</div>
<!-- / PRIMARY CONTENT WRAPPER -->   <!-- FOOTER -->
    <!-- / FOOTER -->


  <!-- / REQUIRED SLDS WRAPPER -->

<!-- JAVASCRIPT -->
<!-- / JAVASCRIPT -->
</body>
</html>