			# Théories Mathématiques #


# Definition d'une methode pour afficher la somme des multiples de 3 et 5 inferieurs à n
def sum_of_3_or_5_multiples(final_number)
	a = 0
  	b = []

  	# Si le parametre 'final_number' est un entier et qu'il est superieur ou égal à 0
  	if final_number.is_a?(Integer) && final_number >= 0
    		until a == final_number

  	# Et que si 'a' verifie la methode 'is_multiple_of_3_or_5'
      		if is_multiple_of_3_or_5?(a)

  	# Alors met le l' array b
        	b << a
      		end
      		a += 1
    	end

  	# Et calcule la somme des entiers dans l'array b
		return b.inject(0){|sum,x| sum + x }
  	else

  	# Sinon ecrit 'Yo ! Je ne prends que les entiers naturels'
    	return "Yo ! Je ne prends que les entiers naturels. TG"
  	end
end

# Définition d'une methode pour verifier si le nombre à rentrer est bien multiple de 3 et 5
def is_multiple_of_3_or_5?(current_number)
  	if current_number % 3 == 0 || current_number % 5 == 0

    	# Si oui , renvoie 'true'
    	return true
    
    	# Sinon renvoie 'false'
  	else return false
  	end
end

