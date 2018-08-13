class Armstrong
  def check_arm(number)
    num=number
    mod=0
    c=0
    while(number>0)
  	  mod=number%10
  	  c+=mod*3
  	  if c==num
  		puts "Its am armstrong no"
  	  end
 	number=number/10 	
  	end

  end

end

arm=Armstrong.new
arm.check_arm(154)
