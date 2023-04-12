require './lib/ceo'

RSpec.describe Ceo do

  describe "setup" do
    it "exists" do
      ceo = Ceo.new(15,20)
    end
    it "has base_salary and bonus attributes" do
      ceo = Ceo.new(15,20)
      expect(ceo.base_salary).to eq(15)
      expect(ceo.bonus).to eq(20)
    end
  end

  describe "Has a name, ID, and total_compensation" do
    it "can bring in attributes from Employee" do
      ceo1 = Ceo.new(15, 20, "Blaine", 11)
  
      expect(ceo1.is_a?(Employee)).to be true
      expect(ceo1.name).to eq("Blaine")
      expect(ceo1.id).to eq(11)
      expect(ceo1.total_compensation).to eq(35)
    end
      # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
      # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
       # Write tests to prove that a Ceo instance can have a Name and ID number, like any other Employee.
    # Also, the CEO should be able to receive a total compensation. Write at least one test that proves they can access this method.
  end

end