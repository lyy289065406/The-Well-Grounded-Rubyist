# 练习4-14 ： 通过继承（而不是混合）Stack 方式实现的 CargoHold
# 对比练习 4-5 （通过混合方式实现）


# 抽象类：栈实现
class Stack

	attr_reader :Stack

	def initialize
		@stack = []
	end

	def add_to_stack(obj)
		@stack.push(obj)
	end

	def take_from_stack
		@stack.pop
	end

end


# 货仓
class CargoHold < Stack

	def load_and_report(obj)
		print "Load object "
		puts obj.object_id
		add_to_stack(obj)
	end

	def unload
		take_from_stack
	end

end



# 占位符： 一个用于模拟货物的类
class Suitcase

end



ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unload = ch.unload
print "The first Suitcase unload from the plane is "
puts first_unload.object_id