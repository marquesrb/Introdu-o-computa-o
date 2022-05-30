function perfeito(n) # os numeros divisiveis são sempre menores que n...
       a = 0
       divisores = []
       while a < n
       a = a + 1
       if n % a == 0
       push!(divisores,a)
       end
       end
       pop!(divisores)
       println(divisores)
       if sum(divisores) == n
       println("O numero é perfeito")
       else
       println("O numero não é perfeito")
       end
       end

