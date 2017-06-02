# Virus Predictor

# I worked on this challenge [by myself, with: @baska].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It is to indicate where to look for files, specificly to indicate look files in the same folder.
# requiere looks in all the paths specified in the $LOAD_PATH array.
require_relative 'state_data'

class VirusPredictor

  # Take three parameters and initialize them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls other two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Present a conditional structure to calculate the nuber of deaths by state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      relative_number = 0.4
    elsif @population_density >= 150
      relative_number = 0.3
    elsif @population_density >= 100
      relative_number = 0.2
    elsif @population_density >= 50
      relative_number = 0.1
    else
      relative_number = 0.05
    end

    number_of_deaths = (@population * relative_number).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # Present a conditional structure to calculate how fast a virus spread

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
state.virus_effects
end

#--------------------------------------------------------------------

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
# One has strings as keys and the other has symbols.

#What does require_relative do? How is it different from require?
# It is to indicate where to look for files, specificly to indicate to look files in the same folder.
# requiere looks in all the paths specified in the $LOAD_PATH array.

#What are some ways to iterate through a hash?
# Using loops such as .each or for, iterating trhough their keys or values, or the pair.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
# even if the instance method is private, the instance variables has the same access like with public methods. 

#What concept did you most solidify in this challenge?
# require_relative and types of variables.