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


pq = PriorityQueue.new

pq_init pq;

items_scroll = [2,3,7,15,8,4,9, 23,11,1]

make_heap pq, items_scroll

pq.q.each do |p|
  puts p.to_s
end


  

  
  
  



  

  
  
  
    
    
    
