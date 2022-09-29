#1
def sum_to(n)
    return nil if n <= 0
    return 1 if n == 1
    sum_to(n-1) + n
end

  # Test Cases
  # p sum_to(5)  # => returns 15
  # p sum_to(1)  # => returns 1
  # p sum_to(9)  # => returns 45
  # p sum_to(-8)  # => returns nil

  #2
  def add_numbers(nums_array)
    return nums_array[-1] if nums_array.length <= 1
    nums_array[0] + add_numbers(nums_array[1..-1])
  end

    # Test Cases
    # p add_numbers([1,2,3,4]) # => returns 10
    # p add_numbers([3]) # => returns 3
    # p add_numbers([-80,34,7]) # => returns -39
    # p add_numbers([]) # => returns nil

    #3
  def gamma_fnc(n)
    return nil if n < 1
    return 1 if n == 1
    (n-1)*gamma_fnc(n-1)
  end

    # Test Cases
  # p gamma_fnc(0)  # => returns nil
  # p gamma_fnc(1)  # => returns 1
  # p gamma_fnc(4)  # => returns 6
  # p gamma_fnc(8)  # => returns 5040

  #4
  def ice_cream_shop(flavors, favorite)
    return true if flavors[0] == favorite
    return false if flavors.length < 1
    ice_cream_shop(flavors[1..-1], favorite)
  end

  # Test Cases
 # p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
 # p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
 # p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
 # p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
 # p ice_cream_shop([], 'honey lavender')  # => returns false

 #5
 def reverse(str)
    return str[0] if str.length <= 1
    str[-1] + reverse(str[0..-2])
 end

  # Test Cases
  p reverse("house") # => "esuoh"
  p reverse("dog") # => "god"
  p reverse("atom") # => "mota"
  p reverse("q") # => "q"
  p reverse("id") # => "di"
  p reverse("") # => ""