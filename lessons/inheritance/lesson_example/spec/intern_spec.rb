require './lib/intern'

RSpec.describe Intern do
  describe "setup" do
    it "exists" do
      intern = Intern.new(5)
      expect(intern).to be_a Intern
    end

    it "has a base_salary attribute" do
      intern = Intern.new(5)
      expect(intern.base_salary).to eq(5)
    end

    it "can get coffee" do
      intern = Intern.new(5)
      expect(intern).to respond_to(:get_coffee)
      expect(intern.get_coffee).to eq("Who got the latte?")
    end

    it "has benefits" do
      intern = Intern.new(5)
      expect(intern.benefits).to be_instance_of Array
      expect(intern.benefits.length).to eq(1)
      expect(intern.benefits[0]).to eq(:gets_to_get_me_coffee)
    end
  end

  describe "Ability to have name and ID, like any other Employee" do
    it "can bring in attributes from Employee" do
      intern1 = Intern.new(5, "Garrett III", 3)
  
        # expect(intern1).to be_a(Employee)
        # Specific syntax for ensuring we've inherited correctly...
      expect(intern1.is_a?(Employee)).to eq(true)
      expect(intern1.name).to eq("Garrett III")
      expect(intern1.id).to eq(3)
        # Write tests to prove that an Intern can be an Employee, with name and ID.
        # The Intern should also have the ability to have the "sick_leave" benefit, and not just the one it starts with. 
    end
     
    it "has sick leave benefits as well" do
      intern1 = Intern.new(5, "Garrett III", 3)
        
      expect(intern1.benefits).to eq([:sick_leave, :gets_to_get_me_coffee])
    end
  end
   # Write tests to prove that an Intern can be an Employee, with name and ID.
    # The Intern should also have the ability to have the "sick_leave" benefit, and not just the one it starts with. 
  
end