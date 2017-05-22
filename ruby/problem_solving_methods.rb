#Release 0

number_list = [1,3,45,67,34,67]

#Method to return the index of the searched number or nil if the integer in not present
def search_number(integers_array, number)
	count = 0
	integers_array.each do |index, integer| 
    if number[index] < integers_array.length && number[index] > 0
    	p number[index]
    elsif (number != integer) && (count == (integers_array.length-1))
			count = nil
 			p count
 		else count+=1
    	
    end
  end 
end
  
search_number(number_list, 45)
search_number(number_list, 4)



#Release 1

#Method that takes a number, put it in Fibonacci terms and returns an array of the terms.

def fibo(number)
	fibstring = [0,1]
	(number - 2).times do 
		fibstring << fibstring[-1] + fibstring[-2]
	end
	fibstring
end
  

if fibo(100)[-1] == 218922995834555169026
  p true
end


p fibo(4)


#Release 2

#Pseudocode of Sorting Method


#-Define a method that takes as a parameter an array
  #-Do a loop for each element of the parameter, starting in the second element ending with the last element of parameter.
      #-Do a condition that if the last element of the parameter is bigger than other element of the parameter do: 
    	#-Count down one position and
    	#-if the element is smaller than the one at it's left position, then
				#-switch position 
	#-The loop end when check the last number and this is bigger than the one at it's left position.

	#-The method returns a sorted copy of the given argument 
#  

def insertion_sort(arr)
  for i in (1...(arr.size))
    if arr[i-1] > arr[i]
      i.downto(1) do |el|
        if arr[el] < arr[el-1]
          arr[el-1], arr[el] = arr[el], arr[el-1]
        end
      end
    end
  end
  arr
end

arr = [5, 2, 4, 6, 1, 3]

p insertion_sort(arr)