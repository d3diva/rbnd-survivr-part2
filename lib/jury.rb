class Jury
  attr_accessor :members

  def initialize
    @members = []
    @finalists = {}
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
	   finalists.each { |name| @finalists[name] = 0}
     @members.each do |member|
		     vote = finalists.sample
		     @finalists[vote] += 1
         display_voted_for(@finalists, member, vote)
	  end
    return @finalists
  end

  def report_votes(final_votes)
    final_votes.each_with_index { |(name, votes), index|  display_vote_count(name, votes, index)}
  end

  def announce_winner(final_votes)
    final_votes.max_by{|k, v| v}[0] # 0 -> key, 1 -> value
  end

end
