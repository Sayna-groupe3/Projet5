			# Algorithme de Trading #


# Définition d'une methode 'day_trader' qui va afficher le  bénéfice entre le jour d'achat et du jour de vente d'un client
def day_trader(arr)
    hash = {}
  	b=arr.length
  	arr.each_with_index{|x,i| 
    a=1
    
    	while a < b-i
     		hash[[i, i+a]] = (arr[i+a])-x
      		a += 1
    	end
    	
  	}
  	
  return hash.sort_by{|id,value|-value}[0][0]
end
