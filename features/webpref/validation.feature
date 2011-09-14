Feature: Validation
  In order to avoid silly mistakes
  As a Technical Architect
  I want to be told documents are valid

  Scenario Outline: Check HTML pages 
    Given I visited <url>
    Then the page should be a valid XHTML document

  Examples:
    | url                     |
    | http://www.menace.co.nz |


  Scenario Outline: Check CSS documents 
    Given I visited <url>
    Then the CSS file should be valid to version 3

  Examples:
    | url                     |
    | http://www.menace.co.nz/wp-content/themes/gary/style.css |

