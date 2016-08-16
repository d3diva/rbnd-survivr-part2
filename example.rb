@contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
@coyopa = {name: "Pagong", members: @contestants.shift(10)}
@hunapu = {name: "Tagi", members: @contestants.shift(10)}

#puts a =  @coyopa[:members]
#puts b = @hunapu[:members]
#puts a&

@borneo = []
@borneo << @coyopa
@borneo << @hunapu

@tribes =[]
puts @borneo.map { |e| e.values }.flatten!
#puts @tribes

#puts @borneo

#a = @borneo.(&:members).flatten
