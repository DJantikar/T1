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
    <div class="slds-page-header" role="banner">
  <div class="slds-grid">
    <div class="slds-col slds-has-flexi-truncate">
      <!-- HEADING AREA -->
      <p class="slds-text-title--caps slds-line-height--reset">Accounts</p>
      <h1 class="slds-page-header__title slds-truncate" title="My Accounts">My Accounts</h1>
      <!-- / HEADING AREA -->
    </div>
    <div class="slds-col slds-no-flex slds-grid slds-align-top">
      <button class="slds-button slds-button--neutral">New Account</button>
    </div>
  </div>
  <div class="slds-grid">
    <div class="slds-col slds-align-bottom slds-p-top--small">
      <p class="slds-text-body--small page-header__info">COUNT items</p>
    </div>
  </div>
</div>
    <!-- / PAGE HEADER -->

<!-- PRIMARY CONTENT WRAPPER -->
<div class="myapp">

  <!-- ACCOUNT LIST TABLE -->
  <div id="account-list" class="slds-p-vertical--medium"></div>
  <!-- / ACCOUNT LIST TABLE -->

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
<!-- / PRIMARY CONTENT WRAPPER -->
    

    <!-- FOOTER -->
    <footer role="contentinfo" class="slds-p-around--large">
  <!-- LAYOUT GRID -->
  <div class="slds-grid slds-grid--align-spread">
    <p class="slds-col">Salesforce Lightning Design System Example</p>
    <p class="slds-col">&copy; Your Name Here</p>
  </div>
  <!-- / LAYOUT GRID -->
</footer>
    <!-- / FOOTER -->

  </div>
  <!-- / REQUIRED SLDS WRAPPER -->

<!-- JAVASCRIPT -->
<script>
  (function() {
    var account = new SObjectModel.Account();
    var outputDiv = document.getElementById('account-list');

    var updateOutputDiv = function() {

      account.retrieve(
        { orderby: [{ LastModifiedDate: 'DESC' }], limit: 10 },
        function(error, records) {
          if (error) {
            alert(error.message);
          } else {
            // create data table
            var dataTable = document.createElement('table');
            dataTable.className = 'slds-table slds-table--bordered slds-table--cell-buffer slds-no-row-hover';

            // add header row
            var tableHeader = dataTable.createTHead();
            var tableHeaderRow = tableHeader.insertRow();

            var tableHeaderRowCell1 = tableHeaderRow.insertCell(0);
            tableHeaderRowCell1.appendChild(document.createTextNode('Account name'));
            tableHeaderRowCell1.setAttribute('scope', 'col');
            tableHeaderRowCell1.setAttribute('class', 'slds-text-heading--label');

            var tableHeaderRowCell2 = tableHeaderRow.insertCell(1);
            tableHeaderRowCell2.appendChild(document.createTextNode('Account ID'));
            tableHeaderRowCell2.setAttribute('scope', 'col');
            tableHeaderRowCell2.setAttribute('class', 'slds-text-heading--label');

            // build table body
            var tableBody = dataTable.appendChild(document.createElement('tbody'))
            var dataRow, dataRowCell1, dataRowCell2, recordName, recordId;
            records.forEach(function(record) {
              dataRow = tableBody.insertRow();

              dataRowCell1 = dataRow.insertCell(0);
              recordName = document.createTextNode(record.get('Name'));
              dataRowCell1.appendChild(recordName);

              dataRowCell2 = dataRow.insertCell(1);
              recordId = document.createTextNode(record.get('Id'));
              dataRowCell2.appendChild(recordId);
            });

            if (outputDiv.firstChild) {
              // replace table if it already exists
              // see later in tutorial
              outputDiv.replaceChild(dataTable, outputDiv.firstChild);
            } else {
              outputDiv.appendChild(dataTable);
            }
          }
        }
      );
    }
    updateOutputDiv();
  })();
</script>
<!-- / JAVASCRIPT -->
</body>
</html>
