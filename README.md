# QECC

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://quantumsavory.github.io/QECC.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://quantumsavory.github.io/QECC.jl/dev/)
[![Build Status](https://github.com/QuantumSavory/QECC.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/QuantumSavory/QECC.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/QuantumSavory/QECC.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/QuantumSavory/QECC.jl)

A repository for *quantum error correction* (QEC) codes.

## Installation

TensorQEC is a &nbsp;
    <a href="https://julialang.org">
        <img src="https://raw.githubusercontent.com/JuliaLang/julia-logo-graphics/master/images/julia.ico" width="16em">
        Julia Language
    </a>
    &nbsp; package. To install TensorQEC,
    please <a href="https://docs.julialang.org/en/v1/manual/getting-started/">open
    Julia's interactive session (known as REPL)</a> and press the <kbd>]</kbd> key in the REPL to use the package mode, and then type:
</p>

```julia
pkg> add https://github.com/QuantumSavory/QECC.jl.git
```

To update, just type `up` in the package mode.

## Contribute

Suggestions and Comments in the [_Issues_](https://github.com/QuantumSavory/QECC.jl/issues) are welcome.

Contributions to the documentation are welcome. To build the documentation, please run:
```
make init init-docs  # or make update-docs
make servedocs
```