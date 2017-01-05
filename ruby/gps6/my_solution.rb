# Virus Predictor

# I worked on this challenge [by myself, with: Joel Lebron].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Looks directly in the same folder that this Ruby file exists for reference.
# It differs from relative in that we don't need to go to a different directory for that file.
require_relative 'state_data'

class VirusPredictor

# Initializes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls the two other methods below in order to run them together
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Predicts the deaths 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Returns 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


STATE_DATA.each {|state, stat|
  p state
  p stat

states = VirusPredictor.new(state, stat[:population_density], stat[:population])
states.virus_effects
}

#=======================================================================
# Reflection Section
# Hash syntax: The entire State hash contained another set of hashes to hold the values for population density and population.

# EXPLANATION OF require_relative
# Looks directly in the same folder that this Ruby file exists for reference.
# It differs from relative in that we don't need to go to a different directory for that file.

# Iterating through a hash can be accomplished using loops, .each

# The variables didn't need to be repeated throughout each argument.

# Concept: iterating through a hash! I needed practice.