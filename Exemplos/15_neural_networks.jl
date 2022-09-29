mutable struct Layer
    w::Array{Float64,2}
end
#constructor:
Layer(input::Int,output::Int) = Layer(rand(Float64, (output, input)))
#functor:
(l::Layer)(x) = (l.w * x)

#inicializando:
l1 = Layer(3,4)
l2 = Layer(4,3)
l3 = Layer(3,1)

#input vector:
x = [5,7,9]

#calculo
l1_values = l1(x)
l2_values = l2(l1_values)
ŷ = l3(l2_values)

#Network
mutable struct Network
    layers
    Network(layers...) = new(layers)
end
#functor
(n::Network)(x) = (for l in n.layers; x = l(x); end; x)

nn = Network(l1,l2,l3)
nn.layers[1].w
nn.layers[2].w
nn.layers[3].w

#calcula tudo direto!
nn(x)
nn(x) == ŷ