using QECCodes
using Documenter

DocMeta.setdocmeta!(QECCodes, :DocTestSetup, :(using QECCodes); recursive=true)

makedocs(;
    modules=[QECCodes],
    authors="nzy1997",
    sitename="QECCodes.jl",
    format=Documenter.HTML(;
        canonical="https://nzy1997.github.io/QECCodes.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/nzy1997/QECCodes.jl",
    devbranch="main",
)
