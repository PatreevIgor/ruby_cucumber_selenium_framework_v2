module Pages
  module Base
    class BasePage
      def open_page
        driver.navigate.to(url)
      end

      def type(element, text, delayms = nil)
        if delayms.nil?
          # 3.times { element.send_keys(:backspace) }
          element.send_keys(text)
        else
          text.split('').each do |char|
            sleep delayms.to_f / 1000
            element.send_keys(char)
          end
        end
      end
    end
  end
end
