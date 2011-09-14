include BeValidAsset

Then /^the page should be a valid XHTML document$/ do | |
  @url_body.should be_valid_xhtml
end

Then /^the CSS file should be valid to version 1$/ do | |
pending
  @url_body.should be_valid_css1
end

Then /^the CSS file should be valid to version 2.1$/ do | |
pending
  @url_body.should be_valid_css2
end

Then /^the CSS file should be valid to version 3$/ do | |
  @url_body.should be_valid_css3
end
