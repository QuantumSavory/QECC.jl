using Test
using QECC

@testset "CSS" begin
    h = QECC._steane_mat()
    c = CSS(h, h)
    @test parity_matrix(c) == parity_matrix(Steane7())
    @test parity_matrix_x(c) == h
    @test parity_matrix_z(c) == h
end