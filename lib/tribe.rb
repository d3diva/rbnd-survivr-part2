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
    elemenated = @members.reject{|member| member == options[:immune]}.sample
    return @members.delete(elemenated)
	end

end
