class Game
  attr_accessor :tribes

  def initialize(*tribes)
    @tribes = tribes
  end

  def add_tribe(new_tribe)
    @tribes << new_tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes.clear
  end

  def combine_members
    all_members = []
    @tribes.each { |tribe| all_members << tribe.members }
    all_members.flatten!
  end

  def merge(combined_tribe)
    new_tribe = Tribe.new({name: combined_tribe, members: combine_members})
    clear_tribes
    add_tribe(new_tribe)
    return @tribes[0]
  end

  def individual_immunity_challenge
    combine_members.sample
  end

end
