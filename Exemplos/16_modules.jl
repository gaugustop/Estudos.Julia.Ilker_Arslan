# "modules can be made of a lot of files and
# files can be made of a lot of modules"

# criar 

# module MyModule
# export myFunc
# myVar
# myStruct
# myFunc
# end

# quatro formas de importar

# 1)
# using MyModule
# myFunc()
# MyModule.myStruct

# 2)
# import MyModule
# MyModule.myStruct
# ou
# import MyModule as mm
# mm.myStruct
import LinearAlgebra as LA 
methods(LA.svd)

# 3) 
# import MyModule: myFunc
# using MyModule: myStruct

# 4)
# include("MyModule.jl")
# using .MyModule

#PULO DO GATO!
#adicionar o caminho dos módulos para o LOAD_PATH
LOAD_PATH
pwd()
push!(LOAD_PATH,pwd())

# Obs: Se mudar algo nos módulos, terá que resetar o REPL!
# para não precisar fazer isso, instale e use o Revise Package
using Pkg
Pkg.add("Revise")
using Revise