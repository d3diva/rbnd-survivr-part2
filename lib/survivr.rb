require_relative "game"
require_relative "tribe"
require_relative "contestant"
require_relative "jury"
require 'artii'
require 'colorize'
require_relative 'results'
include Results


#After your tests pass, uncomment this code below
#=========================================================
 # Create an array of twenty hopefuls to compete on the island of Borneo
 @contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
 @contestants.map!{ |contestant| Contestant.new(contestant) }.shuffle!

 # Create two new tribes with names
 @coyopa = Tribe.new(name: "Pagong", members: @contestants.shift(10))
 @hunapu = Tribe.new(name: "Tagi", members: @contestants.shift(10))

 # Create a new game of Survivor
 @borneo = Game.new(@coyopa, @hunapu)
#=========================================================

@a = Artii::Base.new

# rounds count
def round
  @round = 1
end

def footer(phase)
  display_phase_footer(phase)
  display_will_go_to_phase if phase == "PHASE ONE"
  display_final_phase(Artii::Base.new.asciify("FINAL PHASE")) if phase == "PHASE THREE"
end


#This is where you will write your code for the three phases
def phase_one
  display_phase_title(Artii::Base.new.asciify("PHASE ONE"))
  round
  8.times do
    display_round_number(@round)
    losing_tribe =  @borneo.immunity_challenge
    display_losing_tribe(losing_tribe)
    voted_out_member = losing_tribe.tribal_council
    display_voted_out_member(voted_out_member)
    @round += 1
    footer("PHASE ONE") if @round > 8
  end
end

def member_immunity
  immune_member = @borneo.individual_immunity_challenge
  display_immune_member(immune_member)
  @merge_tribe.tribal_council(immune: immune_member)
end

def phase_two
  round
  display_phase_title(Artii::Base.new.asciify("PHASE TWO"))
  3.times do
    display_round_number(@round)
    voted_out_member = member_immunity
    display_voted_out_member(voted_out_member)
    @round += 1
    footer("PHASE TWO") if @round > 3
  end
end

def phase_three
  round
  display_phase_title(Artii::Base.new.asciify("PHASE THREE"))
  7.times do
    display_round_number(@round)
    add_to_jury = member_immunity
    @jury.add_member(add_to_jury)
    display_added_to_jury(add_to_jury)
    @round += 1
    footer("PHASE THREE") if @round > 7
  end
end




#note - added display_winner to the last line
# If all the tests pass, the code below should run the entire simulation!!
#=========================================================
 phase_one #8 eliminations
 @merge_tribe = @borneo.merge("Cello") # After 8 eliminations, merge the two tribes together
 phase_two #3 more eliminations
 @jury = Jury.new
 phase_three #7 elminiations become jury members
 finalists = @merge_tribe.members #set finalists
 vote_results = @jury.cast_votes(finalists) #Jury members report votes
 @jury.report_votes(vote_results) #Jury announces their votes
 display_winner(@a.asciify(@jury.announce_winner(vote_results).to_s.upcase)) #Jury announces final winner
