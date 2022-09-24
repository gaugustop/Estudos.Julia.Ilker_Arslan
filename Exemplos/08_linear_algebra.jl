using LinearAlgebra
mat = rand(1:10, 4, 4)
mat2 = rand(1:10, 4, 4)

#functions
tr(mat)
det(mat)
transpose(mat)
mat'
inv(mat)
I(4)

#operations
mat * mat #matrix multiplication
mat .* mat #elementwise multiplication
mat * inv(mat) ≈ I(4)

#Linear systems
A = [1 2; 2 -4]
b = [28; -2]
#Ax = b
x = A \ b
A * x == b

#svd
U, s, Vt = svd(A)