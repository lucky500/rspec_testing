require('car')

describe('Car') do

  describe('attributes')do
    it "allows reading and writing for make" do
      car = Car.new()
      car.make = 'Fiat'
      expect(car.make).to(eq('Fiat'))
    end

    it("allows reading and writing for :years") do
      car = Car.new()
      car.year = 1999
      expect(car.year).to(eq(1999))
    end

    it("allows reading and writing for :color") do
      car = Car.new()
      car.color = "Blue"
      expect(car.color).to(eq("Blue"))
    end

    it("allows reading for :wheels") do
      car = Car.new() #don't have to set wheels in this example, since I am already setting it on my Car class.
      expect(car.wheels).to(eq(4))
    end

  end

  describe('.colors') do
    it("return an array of color names") do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to(eq(c)) #again, my array is already set on my class Car, so I can just initiate a simple array here and compare directly to my Car.colors.
    end
  end

  describe('#full_name') do
    it("returns a string in the expected format") do
      honda = Car.new(:make => 'Honda', :year => 2004, :color => 'blue')
      expect(honda.full_name).to(eq('2004 Honda (blue)'))
    end

    context("when initialized with no arguments") do
      it("returns a string using default values") do
        car = Car.new
        expect(car.full_name).to(eq("2007 Volvo (unknown)"))
      end
    end
  end
end
