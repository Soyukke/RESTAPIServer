FROM julia:1.4.2

RUN mkdir /Application
WORKDIR /Application

# Julia Project Setup
COPY ./Application/Project.toml /Application
COPY ./Application/Manifest.toml /Application
RUN julia --project=. -e "using Pkg; Pkg.instantiate(); Pkg.precompile();"

ENV PORT "8080"
# Copy application
COPY ./Application /Application

CMD ["/usr/local/julia/bin/julia", "--project=.", "main.jl"]
