# Virus Predictor

# I worked on this challenge [by myself, with: @sambok ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# It's to indicate where to look for files, specificly to look files in the same directory.
#
require_relative 'state_data'

class VirusPredictor

  # Inicitialize an instance with three data 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Call two private methods 
    def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # It print the predicted deaths by state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      ratio = 0.4
    elsif @population_density >= 150
      ratio = 0.3
    elsif @population_density >= 100
      ratio = 0.2
    elsif @population_density >= 50
      ratio = 0.1
    else
      ratio = 0.05
    end
    number_of_deaths = (@population * ratio).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # It print speed of the spread based in population density by state
  def speed_of_spread #in months #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed = if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


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

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
# One has strings as keys and the other has symbols. Should use string as a key when it need to print the data in a 
# user friendly way, and should use symbol as a key when it need more efficient data storage

#What does require_relative do? How is it different from require?
# It is to indicate where to look for files, specificly to indicate to look files in the same folder.
# requiere looks in all the paths specified in the $LOAD_PATH array.

#What are some ways to iterate through a hash?
# Using iterator methods or loops, iterating trhough their keys or values, or the pair.

#When refactoring virus_effects, what stood out to you about the variables, if anything?
# even if the instance method is private, the instance variables has the same access like within public methods. 

#What concept did you most solidify in this challenge?
# require_relative and I got side tracked and looked into the difference between private and protected methods.
