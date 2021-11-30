using Documenter
using DSAModels

makedocs(
    sitename = "DSAModels",
    format = Documenter.HTML(),
    modules = [DSAModels]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.

deploydocs(
    repo = "github.com/LudwigBoess/DSAModels.jl.git",
    devbranch = "main"
)
