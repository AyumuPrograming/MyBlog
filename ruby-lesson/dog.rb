class Dog < Animal
    include CallModule
    include ActionModule
    
  def bark
    puts "Bow wow"
  end
end