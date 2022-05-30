function inverte(v)
u = []
i = length(v)
while i >= 1
push!(u,v[i])
i = i - 1
end
return u
end
println(inverte([1,2,3,4]))




       


