@contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
@coyopa = {name: "Pagong", members: @contestants.shift(10)}
@hunapu = {name: "Tagi", members: @contestants.shift(10)}

#puts a =  @coyopa[:members]
#puts b = @hunapu[:members]
#puts a&

@borneo = []
@borneo << @coyopa
@borneo << @hunapu

#puts @borneo
#puts all = @borneo.map { |e| e.values }.flatten!
#puts "++++++++++++++++++#{all}"
#
#del = "carlos"
#puts "-----------------------------------"
#
#
#@borneo = @borneo.each { |e| e[:members].reject! { |w| w == del  }}
#
#puts " ----------- #{@borneo}"
#del = "walter"
##@borneo = @borneo.each { |e| e[:members].reject! { |w| w == del  }}
#@borneo[:members].map { |e| puts "#{e}" }


#@members = @contestants
#
#puts "#{@contestants}"
##@contestants.each { |e| puts "#{e}"  }
#all.reject{|member| member == "carlos"}.sample
#puts "++++++++++++++++++#{all}"
#puts @members

#puts " ----------- #{@borneo}"
#puts @borneo
#puts @borneos.map { |e| e.values }.flatten!


#@tribes =[]
#puts @tribes

b = @borneo
#a = @borneo.(&:members).flatten
puts "hi" if b[0].values.include? "Tagi"
