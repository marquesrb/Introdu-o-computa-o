function próximaLinha(v)
  tam = length(v)
  u = zeros(Int, tam + 1)
  u[1] = 1
  u[tam + 1] = 1
  for i in 2:tam
     u[i] = v[i] + v[i - 1]
  end
  return u
end


function próximaLinha2(v)
  tam = length(v)
  push!(v, 1)
  i = tam
  while i > 1
     v[i] = v[i] + v[i - 1]
     i = i - 1
  end
end


function imprime(n)
  v = [1]
  for i in 1:n
    println(v)
    próximaLinha2(v) 
  end
end

function main()
   imprime(20)
end

main()

#Potência
function potencia(b, ex)
  res = 1
  while ex > 0
   res = res * b
   ex = ex - 1
  end
  return res
end
