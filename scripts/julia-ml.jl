# julia-ml.jl
import Pkg

# Include base utilities
Pkg.activate("../julia-baseutils")

# Machine learning packages
Pkg.add("Flux")
Pkg.add("Zygote")
Pkg.add("GraphNeuralNetworks")
Pkg.add("CUDA")  # If GPU is available
Pkg.add("Transformers")

# Build, instantiate, precompile & garbage collect
Pkg.build()
Pkg.instantiate()
Pkg.precompile()
Pkg.gc()
