			# Compter les mots #


# Création de hash
def hash_add(hash, key)

    if (hash.key?(key))
      hash[key] += 1
    else
      hash[key] = 1
      
    end
end
  
# Définition du fonction 'word_counter' qui prend en paramètre 2 data types :
        # Le corpus, un string dans lequel tu devras checker le nombre d'occurence de différents strings
        # Le dictionnaire, une array de mots pour qui tu vas compter les occurences dans le corpus
def word_counter(str, dictionnary)
    corpus = str.split(" ")
    res = {}
  
    for word in corpus do
      	for known_word in dictionnary do
  
        	if (word.downcase.include?(known_word.downcase))
          	hash_add(res, known_word)
        	end
  
      	end
    end
  
    return (res)
end
  
# Définition d'une methode 'count' qui affiche le nombre d'occurence de chaque string qui est dans le dictionnary
def count(corpus)

    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy",
    "it", "i", "low", "own", "part", "partner", "sit"]
    print word_counter(corpus, dictionnary)
    puts
    
end
  
  
  
