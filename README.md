# IntermodalContainers


The IntermodalContainers library aims to be a compliant and full featured implementation of ISO 6346. ISO 6346 provides a standardfor for identification of freight containers.

## Features

* Container Number parsing, as specified by [the Identification System](https://en.wikipedia.org/wiki/ISO_6346#Identification_System).
* [Check digit calculation](https://en.wikipedia.org/wiki/ISO_6346#Check_Digit).
* Container Code parsing, as specified by [the Size and Type Codes](https://en.wikipedia.org/wiki/ISO_6346#Size_and_Type_Codes).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `intermodal_containers` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:intermodal_containers, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/intermodal_containers](https://hexdocs.pm/intermodal_containers).

