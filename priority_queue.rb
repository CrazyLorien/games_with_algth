# coding: utf-8
#priority queue
PQ_SIZE = 1000

class PriorityQueue
  attr_accessor  :q #тело очереди
  attr_accessor  :n #количество элементов
end


def pq_parent(n)
  if(n ==1)
    return -1
  else
    return n/2
  end
end

def pq_young_child(n)
  return 2*n
end

def pq_insert( pq, new_item)
  if ( pq.n >= PQ_SIZE)
    puts "Стэк переполнен - потишена поворотах парниша"
  else
    pq.n = pq.n + 1
    q.q[pq.n] = new_item
    bubble_up q, q.n
  end
end

def bubble_up( q, p)
  if(pq_parent p == -1)
    return
  end
  if( q.q[pq_parent q] > q.q[p])
      pq_swap(q, p, pq_parent p)
      bubble_up q, pq_parent p
  end
end

def pq_swap(q , first, second)
  tempo = q[first]
  q[firts] = second
  q[second] = tempo
end



  

  
  
  
    
    
    
