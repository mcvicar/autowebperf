Then /^the "(.*)" header should be "(.*)"$/ do | header_name, header_value|
  if @url_headers[header_name]
    @url_headers[header_name].should == header_value
  else
      false
  end
end
 
Then /^the response should contain the "(.*)" header$/ do | header_name |
  @url_headers.should have_key(header_name.downcase)
end
 
### header contains checks
 
Then /^the "(.*)" header should contain "(.*)"$/ do | header_name, header_contains |
  if @url_headers[header_name]
    @url_headers[header_name].should match header_contains
  else
      false
  end
end
 
Then /^the "(.*)" header should not contain "(.*)"$/ do | header_name, header_contains |
  if @url_headers[header_name]
    @url_headers[header_name].should_not match header_contains
  else
      false
  end
end

Then /^the response code should be (\d+)$/ do | response_code |
  @url_status.should match response_code
end

Then /^the Expires header should be no more than one year long$/ do
y1 = DateTime.now >> 12
  if @url_headers["Expires"]
      DateTime.parse(@url_headers["Expires"]) < y1
  else
      false
  end
end

Then /^the Expires header should be longer than two weeks$/ do
  pending # express the regexp above with the code you wish you had
end

