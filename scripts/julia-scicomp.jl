# julia-scicomp.jl
import Pkg

# Include base utilities
Pkg.activate("../julia-baseutils")

# Scientific computing packages
Pkg.add("DataFrames")
Pkg.add("Symbolics")
Pkg.add("ModelingToolkit")
Pkg.add("DifferentialEquations")
Pkg.add("OrdinaryDiffEq")
Pkg.add("DiffEqGPU")  # If GPU is available
Pkg.add("DynamicalSystems")
Pkg.add("Turing")

# Build, instantiate, precompile & garbage collect
Pkg.build()
Pkg.instantiate()
Pkg.precompile()
Pkg.gc()
