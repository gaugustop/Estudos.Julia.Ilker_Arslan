#primitive types
#primitive type <name> <bits> end 
#primitive type <name> <: <supertype> <bits> end
#se nao definido, supertype será Any

#composite types
#other languages: struct, record or object
#em Julia: struct

struct Retangulo
    width::Float64
    length::Float64
end

fieldnames(Retangulo)

#chamando o construtor
retangulo1 = Retangulo(4, 7)
#fields
retangulo1.length, retangulo1.width

#Structs mutáveis
mutable struct MutRetangulo
    width::Float64
    length::Float64
end

retangulo2 = MutRetangulo(3, 4)
retangulo2.width = 5

#Abstract type
abstract type Shape end
mutable struct ShapeRetangulo
    width::Float64
    length::Float64
end

#Union
intstr = Union{Integer,String}
x, y, z = 123, "123", 1.2;
x::intstr
y::intstr
z::intstr

#Parametric types
struct NumRetangulo{T<:Real}
    width::T
    height::T
end

r1 = NumRetangulo{Float64}(1.0, 2.0)
r2 = NumRetangulo{Integer}(1, 2)
subtypes(Real)

NumRetangulo{AbstractFloat} <: NumRetangulo
NumRetangulo{String} <: NumRetangulo

#subtipo do tipo
struct Racional{T<:Integer} <: Real
    num::T
    den::T
end

#varios subtipos nos campos
struct Casa{T<:String,P<:Number}
    nome::T
    rua::T
    area::P
    altura::P
end
casa1 = Casa("Ybiraçuoka", "Burle Max", 1504, 5)
