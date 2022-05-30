println("\t\t\t\t\t Produto Escalar")
function escalar(v1,v2)
	if length(v1) != length(v2)
    		return "Erro"
	end
	vetor = []
	for i in 1:length(v1)
    		el = v1[i]
	    ob = v2[i]
	    produto = el * ob
	    append!(vetor,produto)
	end
	resultado = 0
	for i in vetor
    		resultado = resultado + i
	end
	return resultado
end
