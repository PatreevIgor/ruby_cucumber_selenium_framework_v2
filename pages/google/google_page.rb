module Pages
  module Google
    class GooglePage < Base::BasePage
      attr_reader :url, :driver

      def initialize
        @driver = $driver
        @url = 'http://google.com'
      end

      # Methods
      def click_button(button_name)
        button(button_name).click
      end

      def input_text_to_search_form(text)
        type(search_form, text, 200)
      end

      # Elements
      def search_form
        locator = { xpath: "//input[@name='q']" }
        driver.find_element(locator)
      end

      def button(button_name)
        locator = { xpath: "(//input[contains(@value,'#{button_name}')])[1]" }
        driver.find_element(locator)
      end
    end
  end
end
