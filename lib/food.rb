class Food
  attr_reader :type, :cal, :amount_eaten

  def initialize(type, calories)
    @type = type
    @cal = calories
    @amount_eaten = 0
  end
  
  def eat
    @amount_eaten += 1
  end
end 
