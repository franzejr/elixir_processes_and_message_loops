# Store with Message Loops

This simple project aims to demonstrate how simple message loops can be done in Elixir.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `simple_message_loops` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:store_with_message_loops, "~> 0.1.0"}
  ]
end
```


## Usage

`Store.start(%{})`

`Store.get(pid, :one)`

`Store.put(pid, :one, 1)`
