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
	   finalists.each { |member| @finalists[member] = 0}
     @members.each do |member|
		     vote = finalists.sample
		     @finalists[vote] += 1
		     puts "#{member.to_s.capitalize} voted for #{vote.to_s.capitalize}."
	  end
	  return @finalists
  end

  def report_votes(final_votes)
    final_votes.each { |e, v|  puts "#{final_votes[e].to_s} received {final_votes[v] votes."}
  end

  def announce_winner(final_votes)
    final_votes.max_by{|k, v| v}[0] # 0 -> key, 1 -> value
  end



end
