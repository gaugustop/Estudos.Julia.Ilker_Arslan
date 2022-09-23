#vetor padrão é vetor coluna!
#vetor linha é uma matriz com uma linha!

#definições
cvec = [1, 2, 3, 4, 5]
cvec = [1; 2; 3; 4; 5]
rvec = [1 2 3 4 5]

mat = [1 2 3 4; 1 2 3 4; 1 2 3 4]
mat2 = [1 2 3 4
    5 6 7 8
    9 10 11 12]

#funcoes
ndims(mat)
size(mat)
size(mat, 1)
length(cvec)
length(mat)
reshape(mat, 4, 3)
zeros(2, 3)
ones(4, 3)
ones(Int32, 3, 3)
trues(5, 4)
falses(2, 3)
fill(3, 4, 3)
rand(1:30, 3, 5)
randn(3, 4)
similar(mat2)
similar(mat, 3, 3)

#slicing
mat2[2, 3]
mat2[8]
mat[:, 3]
mat[1, :]

#join
vcat(cvec, cvec)
hcat(cvec, cvec)
[cvec cvec]
[rvec rvec]
[cvec, cvec] #não funciona!

#undef
Matrix(undef, 2, 3)
Matrix{Any}(undef, 2, 3)
Matrix{Float64}(undef, 3, 4)
mat3 = Matrix{Union{Int64,String}}(undef, 2, 3)
mat3[1] = 1
mat3[2] = "eu"
mat3
typeof(mat3)

#nothing
mat4 = Matrix{Union{Integer,Nothing}}(nothing, 3, 4)

#missing
mat5 = Matrix{Union{Integer,Missing}}(missing, 3, 4)

#mais dimensoes
Array{Union{String,Missing},3}(missing, 2, 3, 2)
Array{Union{String,Missing}}(missing, 2, 3, 2)

# ;;; concatenate ;; that concatenate ;
[1; 5;; 2; 6;; 3; 7;; 4; 8;;;
    9; 13;; 10; 14;; 11; 15;; 12; 16]