#### Selection Sort
#<dl>
#<dt>Best Case</dt>
#<dd><code>O(n^2)</code></dd>
#<dt>Worst Case</dt>
#<dd><code>O(n^2)</code></dd>
#</dl>
#
# Of all the sorts, selection sort is probably the easiest to understand.  
#
# The algorithm works by first, going through all elements of the array
# and finding the minimum, then switching it with the element at its correct
# position. Then repeating through all the elements.
#
# This sort can also be done by finding the maximum and moving it to the end of
# the array.
#
# This sort is incredibly inneficient as each element is swapped at least once.
selection_sort = ( array )->
	for index in [0...array.length]
		min = array[ index ]
		minIndex = index
		for j in [index + 1...array.leng]
		  if array[ j ] < min
		  	minIndex = j
		  	min = array[ j ]
		 
		 if(min < nums[ index ])
		 	temp = nums[ index ]
		 	nums[ index ] = min
		 	nums[ minIndex ] = temp



#### Insertion Sort
#<dl>
#<dt>Best Case</dt>
#<dd><code>O(n)</code></dd>
#<dt>Worst Case</dt>
#<dd><code>O(n^2)</code></dd>
#</dl>
#
#Insertion sort works by going through each elements in the array and moving them
#to the right location.
#
#This is done by taking each element and swapping with the elements to the left
#of it until it is in the correct position.
insertion_sort = ( array )->	
	for i in [1...array.length]
		key = array[ i ]
		j = i - 1
		while( j >= 0 and array[ j ] > key )
			array[ j + 1 ] = array[ j ]
			j = j - 1
		array[ j + 1 ] = key
	return array


#### Merge Sort
#<dl>
#<dt>Best Case</dt>
#<dd><code>O(n)</code></dd>
#<dt>Worst Case</dt>
#<dd><code>O(n^2)</code></dd>
#</dl>
merge_sort = ( array, lb = 0, ub = array.length ) ->
	if lb >= ub
		return
	
	mid = (lb + ub) / 2
	merge_sort( array, lb, mid )
	merge_sort( array, mid + 1, ub )

	low_wall = mid
	high_cursor = mid + 1

	while( low < low_wall and high_cursor <= ub )
		if( array[ low ] < array[ high_cursor ])
			low++
		else
			temp = array[ high_cursor ]
			for k in [high_cursor - 1...low] by -1
				array[ k + 1 ] = array[ k ]
			array[ low ] = temp
			low++
			low_wall++
			high_cursor++
