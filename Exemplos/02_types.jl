#subtypes and supertypes
subtypes(Any)
supertype(Number)
subtypes(Number)
subtypes(Complex)

#check if a type is subtype of another
Complex <: Number
Int64 <: Signed
Float64 <: Complex
Int32 <: Real #check all supertypes

#get subtypes
subtypes(Real)
subtypes(Integer)
subtypes(Unsigned)
subtypes(Signed)

#see max and min value of type
typemax(Int8)
typemin(Int8)

x::Int8 = 10

begin
    local x::Int8 = 10
    println("variavel x = $x")
    println("valor maximo de x = $(typemax(x))")
    x = typemax(x)
    println("x agora é = $x")
    println("o type de x é $(typeof(x))")
    # x = x + 1 #dá erro!!!
end

#check system word_size
Sys.WORD_SIZE
Int
UInt

x = typemax(Float64)
x = x + 1

#OVERFLOW
x = typemax(Int64)
x + 1

10^50
big(10)^50

#notacao cientifica
1.42e2
1.42e10

#usar f para Float32
typeof(1e2)
typeof(1.0f2)
x = 3.42
sizeof(x)
Float32(x) |> sizeof

#conversão
Int16(3.0)
Float32(3.0)

#Infinito e NaN
1 / 0
0 / 0
0 * Inf
isinf(1 / 0)
isnan(0 * Inf)

#Epsilon, minimum values!
eps(Float16)
eps(Float32)
eps(Float64)

#Booleans
typeof(true)
true == 1
false == 0

#Complex
z = 3 + 4im
complex(3, 2)
real(z)
imag(z)
conj(z)

#Rational
q = 5 // 7
typeof(q)

#check datatypes
isa(1, Int)
isa("Julia", String)

#chars and strings
chr = 'a'
typeof(chr)
Int(chr)
unichr = '∑'
unichr = '\u03a3'

#com unicode fica estranho, cuidado!
newstr = "αβγ"
length(newstr)
lastindex(newstr)

#adição e potencia
string(str, " ", newstr)
str * " " * newstr
newstr^3
"my language is $str"