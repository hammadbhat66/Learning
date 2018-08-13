class Prime
def check_prime(number)
  	flag=0
	half=number/2
	
  if number==0 || number==1
  	puts "Not a Prime no"
  else
    for x in 2..half
    	num=number%x
    	puts num
    	if num==0
    		puts "not a prime no"
    		flag=1
    		break
    	end
    end
end
    if flag==0
    	puts "Prime No"
    end
  		
end

end

checkit =Prime.new
checkit.check_prime(7)
