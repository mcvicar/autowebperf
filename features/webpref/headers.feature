Feature: Headers
  In order to avoid silly mistakes
  As a Technical Architect
  I want to be told the headers are set correctly

  Scenario Outline: Check HTML headers 
    Given I visited <url>
    Then the response code should be <response_code>
    Then the "Server" header should contain "<server_name>"
#    Then the "Cache-Control" header should contain "max-age=<max_age>"
    Then the "Content-Encoding" header should contain "gzip"
    Then the "Content-Type" header should contain "charset=<charset>"
    Then the "Content-Type" header should contain "<content_type>"

  Examples:
    | url                     | response_code | server_name | max_age | charset | content_type | gzip   |
    | http://www.menace.co.nz | 200           | Apache      | 120     | UTF-8   | text/html    | should |

@wip
  Scenario Outline: Check asset headers 
    Given I visited <url>
    Then the response code should be <response_code>
    Then the "Server" header should contain "<server_name>"
    Then the Expires header should be no more than one year long
    Then the Expires header should be longer than two weeks
    Then the response should contain the "Etag" header
    Then the "Cache-Control" header should contain "max-age=<max_age>"

  Examples:
    | url                                                                        | response_code | server_name | max_age      |
    | http://www.menace.co.nz/wp-content/themes/gary/headers/header-Thursday.png | 200           | Apache      | 31536000     |
