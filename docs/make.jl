using QECC
using Documenter

DocMeta.setdocmeta!(QECC, :DocTestSetup, :(using QECC); recursive=true)

makedocs(;
    modules=[QECC],
    authors="nzy1997",
    sitename="QECC.jl",
    format=Documenter.HTML(;
        canonical="https://nzy1997.github.io/QECC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nzy1997/QECC.jl",
    devbranch="main",
)
