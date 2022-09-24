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
arr = [3, "Julia", 2022, 3.42, 'a', 23.1]
arrfloat = [1.2, 1.3, 3.4]
arrdouble = Float64[2, 2, 5]
typeof(arrdouble)

#slicing
arr[1:2:end]

#mutation
arr[2] = "Julia lang"
arr[3:4] = [1, 2]

#pertencimento
'a' ∈ arr
issubset(['a', 23.1], arr)
['a', 23.1] ⊆ arr #\subseteq TAB
['a', 23.1] ⊊ arr #\subsetneq TAB

#funcoes
eltype(arr)
push!(arr, "α")
pop!(arr)
popfirst!(arr)
append!(arr, [1, 2])
deleteat!(arr, [1, 3, 5])
insert!(arr, 1, "β")

#strings are arrays of chars
str = "Julia Language"
str[1]
str[begin]
str[end]
str[end-1]
str[end÷2]
str[3:7]
firstindex(str)
lastindex(str)
split(str)
length(str)

#Sets
tup = (3, 5, 7, 7, 8, 9, 10, 10, 11, 12, 12)
arr = [1, 2, 3, 3, 4, 5, 6, 6, 9, 9, 10, 10, 10]
A = Set(tup)
B = Set(arr)
#funcoes, funcionam para tuplas e arrays também!
union(tup, arr)
union(A, B)
intersect(A, B)
setdiff(A, B)
setdiff(B, A)
symdiff(tup, arr) #não dá erro, mas o resultado é errado!
symdiff(A, B) #resultado correto!
symdiff(tup, arr) == symdiff(Set(tup), Set(arr))
