class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def run
    puts @name + " runs"
  end
end