v = Vector(1:5)
n = 7
v + n #erro!

#formas de fazer o broadcast
v + repeat([n], size(v, 1))
broadcast(+, v, n)
v .+ n
n .+ v

#comparacao elementwise
a = [4 7 3 11 15]
b = [4 3 3 12 15]
a == b
a .== b

#funções
ℯ .^ a
exp.(a)
sqrt.(a)
.√a
3 .* a .^ 2 .+ 2 .* a .+ 5

#filter
a[[true false true false false]]
a .> 5
a[a.>5]
cond = b .% 2 .== 0
b[cond]

#mais complexo, usando bitwise boolean operation
mat = rand(1:100, 200, 10)
cond1 = mat[:, 1] .% 3 .== 0
cond2 = mat[:, 2] .% 4 .== 0
mat[cond1.&cond2, :]