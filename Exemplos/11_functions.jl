#FUNCTIONS ARE OBJECTS!

#definition
    # 1)
    # function function_name (<arguments>::<argument type>)::<return type>
    #     <function body>
    # end
    # 2)
    # function_name(<arguments>) = <function body>


#anonimous FUNCTIONS
x -> 3x^2 + 5x - 4
g = x -> 3x^2 + 5x - 4
g(2)
    #multiple arguments
    (x, y, z) -> (x^2 - y^2) / abs(z)

#recursive functions
fact(n) = n == 1 ? n : n * fact(n - 1)
fact(5)
fibo(n) = n < 2 ? n : fibo(n - 1) + fibo(n - 2)
fibo(6)

#variable number of arguments
#ellipsis operator ...
function printall(x...)
    println(x)
end
printall("Julia","Python")

addall(x) = x
addall(x,y...) = x + addall(y...)
addall(1,2,1,3,4,2)

findmin(x,y) = x < y ? x : y
findmin(x, y...) = findmin(x, findmin(y...))
findmin(3,4,5,1,2)

#Slurping (sugando)
a,b,c... = 1,2,3,4,5,6
c
function printtype(args...)
    for (i, arg) in enumerate(args)
        println("$i: type of $arg is $(typeof(arg))")
    end
end
printtype(1,1.2,.9,1.,"Julia")

#Splatting (espalhando)
(1:10)
(1:10...,)
function printargs(x,y,z)
    println(x)
    println(y)
    println(z)
end
tp1 = ("Julia","Python","Java")
printargs(tp1) #erro!
printargs(tp1...)

#optional arguments
pow(a, b=2) = a^b
pow(10)
pow(10,1)

strange(x,y=x) = x + y
strange(4)
strange(2,1)

#positional arguments
function positionargs(x, y=10, z=20, t=30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end
positionargs(1)
positionargs(1,2)

#diferente de python e R!
positionarg(x = 1) #Erro!
positionargs(1, y = 2) #Erro!

#keyword arguments
function keywordargs(x; y=10, z=20, t=30)
    println("x = $x")
    println("y = $y")
    println("z = $z")
    println("t = $t")
end
keywordargs(1)
keywordargs(1,2) #Erro!
keywordargs(1, t=3, y=999)
keywordargs(5; z=40, y=1)

#Composite functions
f(x) = x^2
g(x) = 5x

#\circ TAB
(g ∘ f)(2)

#pipeline operator
2 |> f |> g
str = "writing functions in Julia is fun!"
str |> split .|> length
str |> split .|> first

#mutating functions (with !)
x = rand(-10:10, 10)
sort(x)
x
sort!(x)
x

#sem mutação
function padwithzeros(vector,n)
    x = [zeros(n);vector;zeros(n)]
    return x
end
padwithzeros(x,4)
x

#com mutação
function padwithzeros!(vector,n)
    for i in 1:n
        insert!(vector,1,0)
    end
    for i in 1:n
        append!(vector,0)
    end
end
padwithzeros!(x, 3)
x
