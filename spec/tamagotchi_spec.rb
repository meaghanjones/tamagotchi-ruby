require("rspec")
require("tamagotchi.rb")

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the time created, name, food, activity, and sleep levels of a new Tamagochi")do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      expect(my_tamagotchi.food()).to(eq(10))
      expect(my_tamagotchi.activity()).to(eq(10))
      expect(my_tamagotchi.sleep()).to(eq(10))
      expect(my_tamagotchi.name()).to(eq("lil dragon"))
    end
  end
  describe("#eat") do
    it("tops off the food bar") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      sleep(11)
      expect(my_tamagotchi.add_food()).to(eq(10))
    end
  end
  describe("#sleep") do
    it("tops off the sleep bar") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      expect(my_tamagotchi.add_sleep()).to(eq(10))
    end
  end
  describe("#activity") do
    it("tops off the activity bar") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      expect(my_tamagotchi.add_activity()).to(eq(10))
    end
  end
  describe("#alive?") do
    it("returns a boolean true or false for if youre alive") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      expect(my_tamagotchi.alive?()).to(eq(true))
    end
  end
  describe("#eat") do
    it("does our Tamagotchi die?") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      sleep(101)
      my_tamagotchi.add_food()
      expect(my_tamagotchi.alive?()).to(eq(false))
    end
  end
  describe("#sleep") do
    it("does our Tamagotchi die?") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      sleep(201)
      my_tamagotchi.add_sleep()
      expect(my_tamagotchi.alive?()).to(eq(false))
    end
  end
  describe("#activity") do
    it("does our Tamagotchi die?") do
      my_tamagotchi = Tamagotchi.new("lil dragon")
      sleep(301)
      my_tamagotchi.add_activity()
      expect(my_tamagotchi.alive?()).to(eq(false))
    end
  end
end
