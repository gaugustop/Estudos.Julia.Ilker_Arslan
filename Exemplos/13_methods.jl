#multiple dispatch
methods(*)

f(x::Number, y::Number) = x^2 - y^2
f(x::Float64, y::Float64) = x^2 + y^2
f(x::Int64, y::Int64) = x*y
f(3f0, 6f0) #x^2 -y^2 
f(3.,6.) #x^2 + y^2
f(3,6) #x*y
f(3.0,6)
f(x,y) = "I couldn't find the correct method." #same as 'any'
f(x::Any,y::Any) = "I couldn't find the correct method."
f(3,"xyz")

#Optional arguments
h(x = 3, y = 4) = x + y
h() #7
h(x::Int, y::Int) = x - y
h() #-1
h(3.0,4)
#Obs1) optional arguments are tied to the function, not specific methods!
#Obs2) methods are dispatched only with positional arguments!

#Parametric methods
test_types(x::T, y::T) where {T} = "Arguments have the same type"
test_types(3,2)
test_types(3,3.)
test_types(x,y) = "Argument types are different"
test_types(2,3.)
test_types_number(x::T, y::T) where {T <: Number} = "Same type numbers!"
test_types_number(3,2)
test_types_number(3.,4.)
test_types_number(x::Number, y::Number) = "Both number but different types"
test_types_number(3,4.)
find_types(x::T, y::P) where {T <:String, P<:Number} = "$x is String and $y is Number"
find_types("abc",3//2)
check_types(a::Array{T},x::T) where {T} = "$x has the same type with the array"
check_types(Vector(1:20), 20)

abstract type Shape end
struct Circle <: Shape
    radius::Float64
end
struct Square <: Shape
    side::Float64
end
get_area(s::Circle) = π * s.radius^2
get_area(s::Square) = s.side^2
circle1 = Circle(2)
square1 = Square(2)
get_area(circle1)
get_area(square1)

#limit number of arguments
two_args(x::Vararg{Number, 2}) = maximum(x)
two_args(4,3.2)
two_args(2) #Erro!
two_args(2,3,1) #Erro!

