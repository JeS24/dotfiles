#> NOTE: All comments starting with #> denote custom additions.
#> "C:\Users\<USER>\AppData\Local\Programs\Julia-1.10.4\etc\julia" # CHANGEME: Julia version

# This file should contain site-specific commands to be executed on Julia startup;
# Users may store their own personal commands in `~/.julia/config/startup.jl`.
atreplinit() do repl
    try
        #> For more startup customization options, see: https://docs.julialang.org/en/v1/stdlib/REPL/
        #> NOTE: You have to have these packages installed prior to using this file.
        @eval import Term: termshow
        #> For formatted help text
        @eval help = termshow

        #>  For plots "in" the REPL
        @eval using UnicodePlots

        #> For hot reloading of code (with limitations)
        @eval using Revise

        @eval using OhMyREPL # Can also use ReplMaker.jl
        @eval import OhMyREPL
        @eval OhMyREPL.input_prompt!("∴⟫ ") # ∴ (Unicode) | ⟫ <- Install JuliaMono font to see this
        #> @eval OhMyREPL.output_prompt!("⟪ ") # Makes copying output a tad bit harder
        #> NOTE: Ensure, you are using Windows Terminal if on Windows and not the default terminal / shell.
        @eval OhMyREPL.Passes.RainbowBrackets.activate_256colors()
        @eval OhMyREPL.colorscheme!("Monokai256")
    catch e
        @warn "Error while importing startup packages" e
    end
end
