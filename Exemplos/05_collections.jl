#tuples
subtypes(Tuple)
supertype(Tuple)
tp1 = (2, 3, 4, "Julia", 2.1)
tp1 = 2, 3, 4, "Julia", 2.1
tp1[2:3]
g, p, e = MathConstants.golden, MathConstants.pi, MathConstants.e

#named tuples
tp2 = (name="Julia", Year=2022)
tp2.name

#n tuple
subtypes(NTuple)
supertype(NTuple)
ntuple(x -> x^3, 5)

#pertencimento
in("Julia", tp1)
2 ∈ tp1 #\in TAB
2022 ∈ tp2
"Julia" ∉ tp2 #\notin TAB

#dicionarios
dict_StudentGrades = Dict([("Gabriel", 100), ("Mariana", 100), ("Caio", 90)])
dict_StudentGrades["Gabriel"]
dict_StudentGrades["Sara"] = 60
dict_Cats_Ages = Dict("Nico" => 1, "Nida" => 5)

length(dict_Cats_Ages)
keys(dict_Cats_Ages)
values(dict_Cats_Ages)
get(dict_Cats_Ages, "Gabriel", 34) #retorna 34 se não existe a chave
get!(dict_Cats_Ages, "Frida", 4) #cria se não existe a chave
haskey(dict_Cats_Ages, "Nico")
merge(dict_Cats_Ages, dict_StudentGrades)
mergewith(+, dict_Cats_Ages, dict_StudentGrades)

#collect
collect(range(1, 10))
sizeof(range(1, 10))
sizeof(collect(range(1, 10)))
#range pode ser chamado com start, stops, step e length
#também tem LinRange

#arrays