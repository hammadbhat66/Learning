class Pallandrome

def pall_check(number)
	@flag=0
	sum=0
	num=number
	while number>0
	  rem=number%10
	  sum=(sum*10)+rem
	  number=number/10
	  
	  if sum==num
	    puts "Pallandrome"
	    @flag=1		
	  end	
	end
	if @flag==0
		puts " Not a Pallandrome"
	end
end


end

plndr=Pallandrome.new
plndr.pall_check(454)
