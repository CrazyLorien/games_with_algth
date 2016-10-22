#merge sort and quick-sort comparison
class MergeSort
  attr_accessor :_nonSortedArray, :leftBfr, :rightBfr
  def initialize(nonSortedArray)
    @_nonSortedArray = nonSortedArray
  end

  def startSort
   
    printResults @_nonSortedArray, 'Before sort'
    sort(@_nonSortedArray, 0, @_nonSortedArray.length-1)
    printResults @_nonSortedArray, 'After sort'
    
  end

  def printResults array,message
    puts message
    array.each do |index|
      puts index
    end
  end
  
  def sort(array, lo, hi)
    puts "lo#{lo} hi#{hi}"
    puts 'Start sort'
    if( hi - lo   <= 1)
      return array;
    else
      middle = (lo+hi)/2;
      sort(array, lo, middle)
      sort(array,middle+1, hi)
      puts "lo#{lo} middle #{middle} hi#{hi}"
      merge(array, lo, middle, hi)
    end
  end

  def merge(array, lo, middle, hi)
    leftBfr = []
    rightBfr = []
    #first copy initial array in subarrys
    for index in lo..middle do
      leftBfr.push(array[index])
       printResults  leftBfr, 'After filling left sub-array'
    end

    middle += 1
    for item in middle..hi do
      rightBfr.push(array[item])
      printResults rightBfr, 'After filling right sub-array'
    end

    
    indexs = lo    
    while (leftBfr.count > 0) and  (rightBfr.count > 0 ) do
      puts "azaza #{leftBfr.first} - razazaza #{ rightBfr.first}"
      if(!leftBfr.first) or  (!rightBfr.first )
        break;
      end
      puts "@leftBfr.firs #{leftBfr.first} - @rightBfr.first #{ rightBfr.first}"
      if(leftBfr.first <= rightBfr.first)
        array[indexs] = leftBfr.shift
      else
        result = rightBfr.shift
        array[indexs] = result
        puts rightBfr.count
      end
      indexs += 1    
    end

    while leftBfr.length > 0
      array[indexs] = leftBfr.shift
      indexs += 1
    end

     while rightBfr.length > 0
       array[indexs] = rightBfr.shift
       indexs += 1
     end
  end 
end
