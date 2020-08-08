defmodule Store do
  @moduledoc """
  Store that handles the Map as the state. It uses a server that handles the connection.
  """

  @doc """
  Starts the server with the initial state

  Returns `pid`.

  ## Examples

    iex> Store.Server.start(%{})
    #PID<0.144.0>

  """
  def start(initial_state) do
    Store.Server.start(initial_state)
  end

  def get(server, key) do
    send(server, {:get, self(), key})

    receive do
      m -> m
    end
  end

  def put(server, key, value) do
    send(server, {:put, key, value})
    :ok
  end
end
