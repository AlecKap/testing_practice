require "rspec"
require "./lib/food.rb"

describe Food do
  describe "it exists" do
    it "is an instance of food" do
      salad = Food.new("salad", 5)

      expect(salad).to be_a(Food)
    end
  end
  
  describe "attributes" do
    it "has a type" do
      salad = Food.new("salad", 5)

      expect(salad.type).to eq("salad") 
    end

    it "has calories" do
      starburst = Food.new("candy", 75)
      
      expect(starburst.type).to eq("candy")
      expect(starburst.cal).to eq(75)
    end
    
    it "has amount_eaten" do
      starburst = Food.new("candy", 75)
      
      expect(starburst.amount_eaten).to eq(0)
    end
  end

  describe "instance methods" do
    describe "#eat" do
      it "can be eaten" do
        starburst = Food.new("candy", 75)

        starburst.eat
        starburst.eat
        starburst.eat
        
        expect(starburst.amount_eaten).to eq(3)
      end
    end
  end
end