"""
        P16(X::T=0.05, η_max::T=0.5) where T

Default values for constant efficiency as in Pfrommer+ 2016, doi: 10.1093/mnras/stw2941 
"""
struct P16{T} <: AbstractShockAccelerationEfficiency
    X::T
    η_max::T

    P16(X::T = 0.05, η_max::T = 0.5) where {T} = new{T}(X, η_max)
end


"""
    η_Ms_acc(η_model::P16, M::T) where T

Constant efficiency as in Pfrommer+ 2016, doi: 10.1093/mnras/stw2941 
"""
function η_Ms_acc(η_model::P16, M::T) where {T}
    return 0.5
end

"""
    η_Ms_reacc(η_model::P16, M::T) where T

Constant efficiency as in Pfrommer+ 2016, doi: 10.1093/mnras/stw2941 
"""
function η_Ms_reacc(η_model::P16, M::T) where {T}
    return 0.5
end
