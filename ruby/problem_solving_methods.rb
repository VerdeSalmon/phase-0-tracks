# Release 0


# Create a method to search a number in a data structure and return it's index. 
  # Input: It takes an array of integers and an integer as parameters.
  # Iterate through the data structure
    # Do conditional statements to check if the gived number is in the data structure
      # If it's return the index of the number
      # Else return nil 


def search_number(number_list, number)
  number_list.length.times do |index|
    if number_list[index] == number
      return index
    end
  end
  return nil
end

number_list = [1,3,45,67,34,67]
p search_number(number_list, 45)
p search_number(number_list, 4)
puts "-----------------------"


# Release 1

# Method that takes a number, put it in Fibonacci terms and returns an array of the terms.

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


# Release 2

# Pseudocode of Sorting Method


#-Define a method that takes as a parameter an array
  #-Do a loop for each element of the parameter, starting in the second element ending with the last element of parameter.
      #-Do a condition that if the last element of the parameter is bigger than other element of the parameter do: 
    	#-Count down one position and
    	#-if the element is smaller than the one at it's left position, then
				#-switch position 
	#-The loop end when check the last number and this is bigger than the one at it's left position.

	#-The method returns a sorted copy of the given argument 
#  

def insertion_sort(list)
  list.length.times do |item|
    if list[item-1] > list[item]
      item.downto(1) do |x|
        if list[x] < list[x-1]
          list[x-1], list[x] = list[x], list[x-1]
        end
      end
    end
  end
  list
end

number_list = [5, 2, 4, 6, 1, 3]

p insertion_sort(number_list)