
class Waiter

  attr_accessor :name,:years 
  @@all =[ ]
  def initialize(name,year)
    @name=name 
    @years=year
    
    
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
  def new_meal(customer,total,tip)
    Meal.new(self, customer,total,tip)

  end
  
  def meals 
    Customer.all.select do | right_waiter | 
      right_waiter.meal== self 
    end  

end