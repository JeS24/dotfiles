# julia-baseutils.jl
import Pkg

# Essential utility packages
Pkg.add("OhMyREPL")
Pkg.add("Term")
Pkg.add("UnicodePlots")
Pkg.add("Markdown")
Pkg.add("ProgressMeter")
Pkg.add("Revise")
Pkg.add("BenchmarkTools")
Pkg.add("PrecompileTools")
Pkg.add("PackageCompiler")
Pkg.add("Documenter")
Pkg.add("JSON")

# Notebooks and interactive environments
Pkg.add("Pluto")
Pkg.add("IJulia")

# Visualization packages
Pkg.add("Plots")
Pkg.add("Makie")
Pkg.add("Gadfly")
Pkg.add("Javis")

# Build, instantiate, precompile & garbage collect
Pkg.build()
Pkg.instantiate()
Pkg.precompile()
Pkg.gc()
