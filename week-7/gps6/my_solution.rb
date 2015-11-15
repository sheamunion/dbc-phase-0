# Virus Predictor

# I worked on this challenge [with Sabrina Unrein].
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# Makes the contents of the specificed file available
# to the file where in require_relative is called.
# It is the preferred way to do this because it is more
# efficient than require. In some cases, require will
# search the whole system for the specified file.
require_relative 'state_data'

class VirusPredictor
  # def initialize initializes the instance variables and the arguments necessary to start the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # def virus_effects will return the predicted_deaths and speed_of_spread when called
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # def predicted_deaths calculates deaths based on population density and population found in the state_data.rb file and rounds down using .floor
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

  #def speed_of_spead calculates how many months it will take for the virus to spread to the state based on population density found in state_data.rb
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |key, value|
  report = VirusPredictor.new(key, value[:population_density], value[:population])
  report.virus_effects
end
=begin======================================================================
Reflection Section

1. What are the differences between the two different hash syntaxes shown in the state_data file?

  The first uses the rocket ship (=>) to assign values
to keys. The second uses colons to do so. The first uses
strings as keys, the second uses symbols as keys.

2. What does require_relative do? How is it different from
require?

    It makes the contents of the specificed file available
  to the file where in require_relative is called.
  It is the preferred way to do this because it is more
  efficient than require. In some cases, require will
  search the whole system for the specified file.

3. What are some ways to iterate through a hash?

    Generally, I prefer to use the #each method. Depending
  on the particulars of a specifc situation, I may explore
  other methods that may have added functionality.

4. When refactoring virus_effects, what stood out to you
about the variables, if anything?

    The variables being passed as arguments were instance
  variables. It seemed silly to pass instance variables as
  arguments because they are naturally available to all
  methods in the class. So, we removed arguments from the two
  methods called within virus_effects.

5. What concept did you most solidify in this challenge

    Accessing values in a nested hash using symbols. I also
  solidified my understanding of public and private methods.

=end