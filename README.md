# choco-elixir

## Build or rebuild

    docker build . -t choco-elixir --no-cache

Installs Elixir and Erlang on Windows using Chocolatey; version 1.13.3 and 24
respectively at the time of writing. The Dockerfile downloads [64-bit
OTP](https://erlang.org/download/otp_win64_24.0.exe).

Shims install to `$env:ChocolateyInstall\bin` mapped to
`C:\ProgramData\chocolatey\bin` as follows. The shims point to `c:\program
files\erl-24.0\erts-12.0\bin` for the installed binaries.

```
Added ...\ct_run.exe shim pointed to '...\ct_run.exe'.
Added ...\erl.exe shim pointed to '...\erl.exe'.
Added ...\werl.exe shim pointed to '...\werl.exe'.
Added ...\erlc.exe shim pointed to '...\erlc.exe'.
Added ...\escript.exe shim pointed to '...\escript.exe'.
Added ...\dialyzer.exe shim pointed to '...\dialyzer.exe'.
Added ...\typer.exe shim pointed to '...\typer.exe'.
```

## Launch interactive Elixir

Once built, you can launch using

    docker run --rm -it choco-elixir
