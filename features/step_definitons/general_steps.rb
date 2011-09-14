Given /^I visited (.*)/ do | url |
  visit(url)
  @url_headers = response.header
  @url_status = response.code
  @url_body = response
end
