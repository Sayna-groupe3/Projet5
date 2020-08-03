			# Chiffrer les données #


# Définition d'une methode qui va faire le decalage d'une chaine par rapport à un argument 'arg' donné
def caesar_cipher(string,arg)
  	arr = []
  	string.split("").map{|i| cipher_letter(i,arg)}.join("")
end

# Definition d'une methode qui va afficher le decalage d'une lettre par rapport à un argument 'arg' donné
def cipher_letter(letter,arg)
  
  	# Si la lettre est comprise entre 92,122 et 65,90
  	if (letter.ord).between?(97,122) || (letter.ord).between?(65,90)
    
    		# Si l'argument 'arg' est un entier
    		if arg > 0 && arg.is_a?(Integer)
      
      		# Si la concatenation entre la lettre et l'argument est supérieur à 122 et comprise entre 97,122 OU elle est supérieur à 90 et comprise entre 65,90
      			if (letter.ord)+arg > 122 && (letter.ord).between?(97,122) || (letter.ord)+arg > 90 && (letter.ord).between?(65,90)
        
        # Alors decale la chaine suivant le sens negatif
        (((letter.ord)+arg)-26).chr
      		else ((letter.ord)+arg).chr
      	end

    
    	# Et Si l'argument 'arg' est inferieur à 0 et est un entier  
    		elsif arg < 0  && arg.is_a?(Integer)
      
      	# Si la concatenation entre la lettre et l'argument est inférieur à 97,122 OU elle est inférieur à 65 et comprise entre 65,90
      			if (letter.ord)+arg < 97 && (letter.ord).between?(97,122) || (letter.ord)+arg < 65 && (letter.ord).between?(65,90)
       
       # Alors decale la lettre oou la chaine suivant le sens positif
        (((letter.ord)+arg)+26).chr
      			else ((letter.ord)+arg).chr
      			end
    		end
  		else return letter
  	end
end


