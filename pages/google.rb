class Google < BasePage
  def initialize
    @driver  = $driver
    @url     = 'http://google.com'
  end

  def open_page
    driver.navigate.to(url)
  end

  def input_text_to_search_form(text)
    element = driver.find_element(search_form_locator)
    element.send_keys(text)

    element.submit
  end

  def text_of_first_element
    element = driver.find_element(first_element_locator)

    element.text
  end

  private

  attr_reader :url, :driver

  def search_form_locator
    { name: 'q' }
  end

  def first_element_locator
    { xpath: "//h3[contains(.,'Selenium Python - Selenium Python')]" }
  end
end
