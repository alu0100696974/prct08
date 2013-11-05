class Matriz
	
	attr_reader(:alt, :anc)
	
	private_class_method :new

	def initialize(alt, anc, op)
		@alt = (alt-1)
		@anc = (anc-1)
		@M = Array.new(@alt)
		for i in (0..@alt)
			@M[i]=Array.new(@anc)
		end

		if op==1
			for i in (0..@alt)
				for j in (0..@anc)
					if(i == j)
						@M[i][j]=1
					else
						@M[i][j]=0
					end
				end
			end
		end
		
		if op==2
			for i in (0..@alt)
				for j in (0..@anc)
					@M[i][j]=rand(10)
				end
			end
		end
	end

	def [](i)
		@M[i]
	end

	def []=(i,other)
		@M[i]=other
	end

	def Matriz.identidad(alt, anc)
		new(alt, anc, 1)
	end

	def Matriz.random(alt, anc)
		new(alt, anc, 2)
	end

	def to_s
		aux = "["
		for i in(0..@alt)
			aux += "["
			for j in(0..@anc)
				if (j!=@anc)
					aux += "#{@M[i][j]},"
				else
					aux += "#{@M[i][j]}"
				end
			end
			aux += "]"
		end
		aux += "]"
		aux
	end
end
