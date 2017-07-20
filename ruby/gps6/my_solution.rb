# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
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