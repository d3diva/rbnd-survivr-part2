module Results

  def display_phase_title(title)
    puts
    puts @a.asciify(title).blue.on_red
    puts
  end

  def display_phase_footer(title)
    puts
    puts "#{title} ends here".blue.on_red
    puts
  end


  def display_round_number(round)
    puts "Round #{round}"
  end

  def display_voted_out_member(voted_out_member)
    puts "#{voted_out_member.to_s.capitalize}".red + " has been voted out"
    puts ""
  end

  def display_losing_tribe(losing_tribe)
    puts "Losing tribe" + " #{losing_tribe.to_s.capitalize}".light_red
  end

  def display_will_go_to_phase
    puts "Following Will Go thru to Phase Two".green
  end

  def display_immune_member(immune_member)
    puts "#{immune_member.to_s.capitalize}".green + " is immune"
  end

  def display_added_to_jury(add_to_jury)
    puts "#{add_to_jury.to_s.capitalize}".yellow + " has been added to jury"
    puts ""
  end

  def finalists_color(finalists, finalist_name)
    finalists.keys[0] == finalist_name ? "#{finalist_name.to_s.upcase}".green : "#{finalist_name.to_s.upcase}".red
  end

  def display_voted_for(finalists, member, finalist_name)
    puts "#{member.to_s.capitalize}".cyan + " has voted for "+ finalists_color(finalists, finalist_name)
    puts ""
  end

  def display_vote_count(name, votes, index)
    if index == 0
      puts "#{name.to_s.upcase} received #{votes} votes.".white.on_green
      puts ""
    else
      puts "#{name.to_s.upcase} received #{votes} votes.".white.on_red
      puts ""
    end
  end

  def display_winner(winner)
    puts "The Winner is"
    puts @a.asciify(winner.to_s.upcase).cyan.on_light_magenta
  end

end
