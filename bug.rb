```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20
puts my_object.value # Output: 20

# Uncommon bug: unexpected behavior when modifying the object's internal state through an external variable

external_value = my_object.value
external_value = 30 # Modifying the external variable
puts my_object.value # Output: 20 (Not 30)
```