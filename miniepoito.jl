function compareByValue(x, y) 
    if length(x) == 3
        x = "10"
    else
        x = string(x[1])
    end
    if length(y) == 3
        y = "10"
    else
        y = string(y[1])
    end
    if x == "A" 
        return false
   elseif y == "A"
       return true
    elseif x == "K" && y != "A"
           return false
    elseif x == "K" && y == "A"
           return true
    elseif y == "K" && x != "A"
           return true
    elseif x == "10" && (y != "A" && y != "K" && y != "Q" && y != "J")
        return false
    elseif y == "10" && (x != "A" && x != "K" && x != "Q" && x != "J")
        return true
    elseif x < y
        return true
        else
        return false
        end
    end
function compareByValueAndSuit(x, y) 
    if y[length(y)] == x[length(x)]
        return compareByValue(x, y)    
        elseif y[length(y)] == '♣' 
            return true
        elseif x[length(x)] == '♣' 
             return false
         elseif x[length(x)] == '♦' 
             return true
          elseif y[length(y)] == '♦'
              return false
          elseif x[length(x)] < y[length(y)]
              return true 
           else
               return false
    end
end
function troca(v, i, j) 
aux = v[i]
v[i] = v[j]
v[j] = aux
end
function insercao(v)
tam = length(v)
for i in 2:tam
j = i
while j > 1
if compareByValueAndSuit(v[j], v[j - 1]) 
troca(v, j, j - 1)
else
    break
    end
    j = j - 1
end
end
return v
end

#Teste das funções
using Test
function testeIns()
    @test insercao(["10♥", "10♦", "K♠", "A♠", "J♠", "A♠"]) == ["10♦","J♠","K♠","A♠","A♠","10♥"] 
    @test insercao(["2♥","K♦","A♦","10♥","J♣","Q♠"]) == ["K♦","A♦","Q♠","2♥","10♥","J♣"]
    @test insercao(["Q♥","A♥","10♦","2♣","K♠","K♦"]) == ["10♦","K♦","K♠","Q♥","A♥","2♣"]
    @test insercao(["Q♠","3♣","10♣","2♥","K♦","A♥"]) == ["K♦","Q♠","2♥","A♥","3♣","10♣"]
    println("Final do teste da função insercao")
end
testeIns()

function testeByValue()
    @test compareByValue("10♣","3♣") == false 
    @test compareByValue("A♥","K♦") == false
    @test compareByValue("Q♥","2♠") == false 
    @test compareByValue("3♣","Q♦") == true
println("Final do teste da função compareByValue")
end
testeByValue()

function testeByValueAndSuit()
    @test compareByValueAndSuit("2♠", "A♠") == true
    @test compareByValueAndSuit("10♥","Q♦") == false
    @test compareByValueAndSuit("3♥","J♣") == true
    @test compareByValueAndSuit("K♥", "10♥") == false
println("Final do teste da função compareByValueAndSuit ")
end
testeByValueAndSuit()
    
    
