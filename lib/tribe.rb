class Tribe
  attr_accessor :name, :members

  def initialize(hash)
    @name = hash[:name]
    @members = hash[:members]
    puts self.members
  end

  def to_s
    @name
  end

  def tribal_council(options={})
    voted_off = @members.reject{|member| member == options[:immune]}.sample
    return @members.delete(voted_off)
	end

end
