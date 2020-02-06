When(/^I open google page$/) do
  Pages::Google::GooglePage.new.open_page
end

When(/^I input text "([^"]*)" to search form$/) do |text|
  Pages::Google::GooglePage.new.input_text_to_search_form(text)
end

When(/^I click "([^"]*)" button$/) do |button_name|
  Pages::Google::GooglePage.new.click_button(button_name)
end
