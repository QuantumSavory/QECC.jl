"""An arbitrary CSS error correcting code defined by its X and Z checks."""
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
