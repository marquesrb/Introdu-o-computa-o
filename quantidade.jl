# Dada um vetor de n números, imprimir os números que compõem o vetor e o 
# número de vezes que cada um deles ocorre


function composição(v)
   println(v)
   num = []
   quant = []
   for i in 1:length(v)
      j = 1
      while j <= length(num)
	 if v[i] == num[j]
            break
         end
         j = j + 1
      end
      if j <= length(num)
         quant[j] = quant[j] + 1
      else
         push!(num, v[i])
         push!(quant, 1)
      end
    end
    for j in 1:length(num)
       if quant[j] == 1
          println("O ", num[j], " aparece 1 vez")
       else
          println("O ", num[j], " aparece ", quant[j], " vezes")
       end
    end
end

function main()
   composição([3, 3, 3, 3, 4, 3, 3, 4, 2])
end

main()
