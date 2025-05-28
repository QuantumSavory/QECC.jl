"""The Toric code [kitaev2003fault](@cite).

Illustration of a 2x2 toric code, where qubits are located on the edges:

```
|--1-(Z)-2--|
| (X) 5     6
|--3--|--4--|
|     7     8
|     |     |
```

It is important to note that the toric code has periodic boundary conditions, which means that the top and bottom sides are essentially glued together, as are the left and right sides.
"""
struct Toric <: AbstractCSSCode
    dx::Int
    dz::Int
end

code_n(c::Toric) = 2*c.dx*c.dz

function parity_matrix_xz(c::Toric)
    hx, hz = hgp(parity_matrix(RepCode(c.dz)), parity_matrix(RepCode(c.dx)))
    hx[1:end-1,:], hz[1:end-1,:]
end

parity_matrix_x(c::Toric) = parity_matrix_xz(c)[1]
parity_matrix_z(c::Toric) = parity_matrix_xz(c)[2]

parity_matrix(c::Toric) = parity_matrix(CSS(parity_matrix_xz(c)...))

distance(c::Toric) = min(c.dx, c.dz)
