FROM chocolatey/choco
RUN choco install -y elixir
ENTRYPOINT [ "iex.bat" ]
