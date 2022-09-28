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