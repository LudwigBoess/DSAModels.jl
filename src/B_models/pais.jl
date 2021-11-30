const δθ = π / 18

"""
    η_B(θ_B::T, θ_crit::T) where {T<:Real}

Calculate B angle dependent efficiency component following Dubois+ 2019, eq. 20, http://arxiv.org/abs/1907.04300 
"""
@inline function η_B(θ_B::T, θ_crit::T) where {T<:Real}
    (tanh((θ_crit - θ_B) / δθ) + 1) / 2
end

"""
    ηB_acc_e(θ_B::T) where T

Magnetic field geometry dependent efficiency for electrons at initial acceleration.
"""
function ηB_acc_e(θ_B::T) where {T<:Real}
    1 - η_B(θ_B, T(π / 4))
end

"""
    ηB_acc_p(θ_B::T) where T

Magnetic field geometry dependent efficiency for protons at initial acceleration.
"""
function ηB_acc_p(θ_B::T) where {T<:Real}
    η_B(θ_B, T(π / 4))
end

"""
    ηB_reacc_e(θ_B::T) where T

Magnetic field geometry dependent efficiency for electrons at reacceleration.
"""
function ηB_reacc_e(θ_B::T) where {T<:Real}
    1 - η_B(θ_B, T(π / 6))
end

"""
    ηB_reacc_p(θ_B::T) where T

Magnetic field geometry dependent efficiency for protons at reacceleration.
"""
function ηB_reacc_p(θ_B::T) where {T<:Real}
    η_B(θ_B, T(π / 3))
end