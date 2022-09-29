#Callable objects or Functors
mutable struct model{R}
    coefficients::Vector{R}
end
function (m::model)(x)
    coeffs = m.coefficients
    s = 0
    for i ∈ 1:length(x)
        s += x[i]*coeffs[i]
    end
    return s
end
m = model([1,2,5])
m([3,1])
m([1,1,1])
m([3,2,1,4])

#Constructors
mutable struct ModelVars
    x₁::Float64
    x₂::Float64
end
fieldnames(ModelVars)
# 2 construtores são criados automaticamente,
# o segundo permite a entrada de tipos "Any" e 
# ele tenta converter para Float64
methods(ModelVars) 
m1 = ModelVars(2.3,1.2)
ModelVars(2,3) 
#acesso aos campos:
m1.x₁
m1.x₂
#mutação dos campos:
m1.x₁ = 2
m1.x₁
# Obs) Imutable types são mais rápidos e melhores para multi threadings,
# porque não requer sincronização entre os campos

#Abstract type
abstract type Student end
mutable struct CSStudent <: Student
    name::String
    student_id::Int64
    programming_language::String
end
methods(CSStudent)
cs1 = CSStudent("George", 1, "Julia")

#set default values, create a new constructor:
CSStudent(name, id) = CSStudent(name, id, "Julia")
methods(CSStudent)
cs2 = CSStudent("Maria", 2)

#não se pode criar subtipos de tipos concretos!
mutable struct DSStudent <: CSStudent
end #Erro!

# keyword arguments
# note que também é possível definir valores padrões assim!
function CSStudent(; name, student_id, programming_language = "Python")
    return CSStudent(name, student_id, programming_language)
end
methods(CSStudent)
cs3 = CSStudent(name = "João", student_id = 3)

#array of students
students = CSStudent[]
push!(students,cs1,cs2)
push!(students, cs3)

#até aqui foram feitos outer Constructors
#Inner constructors (new function)
mutable struct MathStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64

    MathStudent(name, student_id, gpa) = gpa < 0 ? throw("gpa cannot be negative") : new(name, student_id,gpa)

end

math1 = MathStudent("Carlos",4,-1)
math1 = MathStudent("Carlos",4,3)

#outro exemplo
mutable struct EconStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64
    function EconStudent(name, student_id, gpa)
        if name == ""
            throw("Student name cannot be empty")
        elseif student_id ≤ 0
            throw("Enter valid student_id")
        elseif gpa < 0 || gpa > 5
            throw("Enter valid gpa")
        else
            new(name,student_id,gpa)
        end
    end
end
ec1 = EconStudent("",5,1.2)
ec1 = EconStudent("Lucas",-1,7)
ec1 = EconStudent("Lucas",5,9)
ec1 = EconStudent("Lucas",5,3.6)

#initialize empty structs
#Julia give arbitrary values
mutable struct PhysStudent <: Student
    name::String
    student_id::Int64
    gpa::Float64

    PhysStudent() = new()
end
ps1 = PhysStudent()
ps1.student_id

#type with array of students
mutable struct Course
    name::String
    students::Array{Union{CSStudent, MathStudent, EconStudent}, 1}
    opened::Bool
    
    Course(name::String) = new(name::String, String[], false)
    Course(name::String, members) = new(name, members, length(members) ≥ 5)
end

course1 = Course("Programming with Julia",[cs1,cs2,cs3,math1,ec1])

