#map
arr = [1,1,2,3,5,8,13];
sqarr = Int64[];
for elem in arr
    append!(sqarr, elem^2)
end
println(sqarr)
map(x -> x^2, arr)
broadcast(x -> x^2, arr)

#com dois argumentos, broadcast é mais forte!
rowvec = [1 2 3 4 5]
colvec = [10,20,30,40,50]
map(+,rowvec,colvec)
broadcast(+,rowvec,colvec)
rowvec .+ colvec

#reduce
reduce(+,arr)

#mapreduce
sqarr = map(x -> x^2, arr)
sumsqr = reduce(+, sqarr)
mapreduce(x -> x^2, +, arr)

#filter
filter(x -> x % 2 == 0 , arr)

struct Course
    subject::Symbol
    area::Symbol
    ncourses::Int
    nstudents::Int
end

course_data = [Course(:Julia, :Programming, 10, 250), 
               Course(:Python, :Programming, 50, 750),
               Course(:Math, :Science, 30, 100),
               Course(:Physics, :Science, 10, 20),
               Course(:R, :Programming, 35, 500)]

n_programming = filter(x -> x.area == :Programming, course_data)
#ou com equivalencia ===
n_programming = filter(x -> x.area === :Programming, course_data)
n_students = map( x -> x.ncoureses * x.nstudents, n_programming)
total_students = reduce( +, n_students)

#com uma função
function nfield(data::Vector{Course}, area::String)::Int64
    f = filter(x -> x.area == Symbol(area), data)
    s = mapreduce(x -> x.nstudents * x.ncourses, +, f)
    return s
end
nfield(course_data, "Programming")
nfield(course_data, "Science")

#do end block
#cria uma função anônima e passa como 
#primeiro argumento da função antes do "do"
vec = 1:10
map(x -> x^3, vec)
map(vec) do x
    x^3
end
