@contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
@coyopa = {name: "Pagong", members: @contestants.shift(10)}
@hunapu = {name: "Tagi", members: @contestants.shift(10)}

#puts @coyopa
#puts @hunapu
@borneo = []
@borneo << @coyopa
@borneo << @hunapu


puts @borneo.values
