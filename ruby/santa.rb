class Santa
  
attr_reader :age, :ethnicity
attr_accessor :gender, :ranking
  
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
  end
  
  def speak
    puts "Ho, ho, ho! Happy Holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end
  
  def celebrate_birthday
    @age += 1
  end
  
  def get_mad_at(name)
    @ranking.delete(name)
    @ranking << name
  end
end

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

20.times do
  santas = Santa.new(example_genders[rand(7)], example_ethnicities[rand(7)])
  puts "Say hello to our newest Santa!"
  p santas.gender
  p santas.ethnicity
  p santas.ranking[rand(9)]
  puts "___________"
end