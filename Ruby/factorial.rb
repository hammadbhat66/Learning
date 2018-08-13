class Factorial
  def calculate_fact
  	number=5
  	@output=1

  	while number>1
      @output=@output*number
      number-=1
    end
    puts @output
  	
  end

end


fact=Factorial.new
fact.calculate_fact