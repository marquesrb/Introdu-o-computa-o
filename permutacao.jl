function testaPermutacao()
    if !permuta([1, 2, 3])
        println("Não funcionou para [1, 2, 3]")
    end
    if permuta([1, 2, 3, 3]) 
        println("Não funcionou para [1, 2, 3, 3]")
    end
    if !permuta([1])
        println("Não funcionou para [1]")
    end
    if !permuta([])
        println("Não funcionou para []")
    end
    println("Final dos testes")
end

# versão 1
function permuta(v)
   tam = length(v)
   for i in 1:tam
      if  !esta(i, v)
        return false
      end
   end
   return true
end

function esta(i, v)
   for el in v
      if i == el
         return true
      end
   end
   return false
end        

# versão 2
# Nessa versão usamos um comando de Julia que verifica se um elemento
# pertence a um vetor (in)
function permuta2(v)
   tam = length(v)
   for i in 1:tam
      if  !(i in v)
         return false
      end
   end
   return true
end

