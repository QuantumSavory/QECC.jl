"""
    CSS <: AbstractCSSCode
    CSS(Hx, Hz)

An arbitrary CSS error correction code defined by its X and Z checks.

### Fields
- `Hx`: The parity check matrix of the X stabilizers.
- `Hz`: The parity check matrix of the Z stabilizers.
"""
struct CSS <: AbstractCSSCode
    Hx::Matrix{Bool}
    Hz::Matrix{Bool}
    function CSS(Hx, Hz)
        n = size(Hx, 2)
        if n != size(Hz, 2) error("When constructing a CSS quantum code, the two classical codes are required to have the same block size") end
        new(Hx, Hz)
    end
end

function parity_matrix(c::CSS)
    extended_Hx = Matrix{Bool}(vcat(c.Hx, zeros(size(c.Hz))))
    extended_Hz = Matrix{Bool}(vcat(zeros(size(c.Hx)), c.Hz))
    return hcat(extended_Hx, extended_Hz)
end

parity_matrix_x(c::CSS) = c.Hx
parity_matrix_z(c::CSS) = c.Hz

# Parity matrix for general CSS codes
parity_matrix(c::AbstractCSSCode) = parity_matrix(CSS(parity_matrix_x(c), parity_matrix_z(c)))