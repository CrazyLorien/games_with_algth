# coding: utf-8
#priority queue
PQ_SIZE = 1000

class PriorityQueue
  attr_accessor  :q #тело очереди
  attr_accessor  :n #количество элементов
end


def pq_parent(n)
  if(n == 1)
    return -1;
  else
    puts (n/2)
    return (n/2)
  end
end

def pq_young_child(n)
  return 2*n
end

def pq_insert( pq, new_item)
  puts 'my item for insert' + new_item.to_s
  if ( pq.n > PQ_SIZE)
    puts "Стэк переполнен - потишена поворотах парниша"
  else
    pq.n = pq.n + 1
    pq.q[pq.n] = new_item
    bubble_up pq, pq.n
  end
end

def bubble_up( q, p)
  if(pq_parent(p) == -1)
    return;
  end
  if(q.q[pq_parent(p)] > q.q[p])
    pq_swap(q, p, pq_parent(p))
    puts 'here is my buuble arg ' + pq_parent(p).to_s
    bubble_up q, pq_parent(p)
  end
end

def pq_swap(pq, first, second)
  puts 'Here is the swap'
  tempo = pq.q[first]
  pq.q[first] = pq.q[second] 
  pq.q[second] = tempo
end


def pq_init(q)
  q.n = 0
  q.q = [];
end

def make_heap(queue, array_with_items)
  array_with_items.each do |i, index|
    puts  "from insert - " + i.to_s
    pq_insert queue, i
  end
end


def extract_min(q)
  min = -1
  if(q.n <= 0)
    puts "priority queu is empty"
  else
    min = q.q[1]
    q.q[1] = q.q[q.n]
    q.n = q.n - 1
    bubble_down(q,1)
  end
  puts "min #{min}"
  min
end

def bubble_down(q, p)
  c = pq_young_child(p)
  min_index = p

  if(c <= q.n)
    if(q.q[min_index] > q.q[c])
      min_index = c
    end
  end
      
  if(c+1 <= q.n)
    if(q.q[min_index] > q.q[c+1])
      min_index = c+1
    end
  end

  if(min_index != p)
        pq_swap(q,p, min_index)
        bubble_down(q,min_index)
  end
end

def heapsort()
  pq = PriorityQueue.new

  pq_init pq;

  items_scroll = [2,3,7,15,8,4,9, 23,11,1]

  make_heap pq, items_scroll

  pq.q.each_with_index do |p,index|
    items_scroll[index] = extract_min(pq)
  end

  items_scroll.each {|item| puts item }
end

heapsort()





  

  
  
  



  

  
  
  
    
    
    
