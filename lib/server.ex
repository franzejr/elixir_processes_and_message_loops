defmodule Store.Server do
  @moduledoc """
  This is the Server
  """

  @doc """
  Starts the server with the initial state.
  It listens for messages

  Returns `pid`.

  ## Examples

    iex> Store.Server.start(%{})
    #PID<0.144.0>

  """
  @spec start(map) :: pid
  def start(initial_map) do
    spawn(fn -> run(initial_map) end)
  end

  @spec run(map) :: no_return
  def run(map) do
    map
    |> listen
    |> IO.inspect()
    |> run
  end

  @spec listen(map) :: map
  def listen(map) do
    receive do
      {:put, key, value} ->
        Map.put(map, key, value)

      {:get, pid, key} ->
        value = Map.get(map, key)
        send(pid, value)
        map
    end
  end
end
