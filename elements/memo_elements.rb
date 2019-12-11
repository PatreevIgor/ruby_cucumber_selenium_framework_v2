require 'pry'

class Button
  attr_reader :args

  def initialize(args=nil)
    @args = args
  end
end

class Element
  attr_reader :args

  def initialize(args=nil)
    @args = args
  end
end







class DropDown
end

class Methods
  def self.test_method
    instance_variable_set("@#{"button"}", 'returned_value')

    puts @button
    puts instance_variable_get("@#{"button"}")

    puts Object.const_get('Button').new
  end

  define_method("button") do
    instance_variable_set("@#{"button"}", Object.const_get('Button').new)
  end

  def test_memo_method
    @test_memo_method ||= Object.const_get('Button').new
  end
end







Element.define_singleton_method('button') { |args| Object.const_get('Button').new(args) }
Element.define_singleton_method('element') { |args| Object.const_get('Element').new(args) }

  # define_singleton_method(name) do |*args|
  #   args.each do |arg|
  #     block.call(arg)
  #   end
  # end





Element.define_singleton_method('drop_down') { 

  # @instance_method_var ||= Object.const_get('DropDown').new 

    }





# p Methods.new.test_memo_method
# p Methods.test_method

# p Element.drop_down

p Element.button('sssssssssssstr')
p Element.element(nil)





