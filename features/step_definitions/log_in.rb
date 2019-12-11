When(/^I open google page$/) do
  MemoPages.google.open_page
end

When(/^I input text "([^"]*)" to search form$/) do |text|
  MemoPages.google.input_text_to_search_form(text)
end

When(/^I show text "([^"]*)"$/) do |text|
  expect(MemoPages.google.text_of_first_element).to eq(text)
end

When(/^I check base method text$/) do
  expect(MemoPages.google.base_method_text).to eq("text")
end

