defmodule App.Calculator do
  @moduledoc """
  Documentation for `App.Calculator`.
  """

  @doc """
  Multiply two numbers.

  ## Examples

      iex> App.Calculator.multiply(2, 2)
      4

  """
  def multiply(a, b) do
    cond do
      is_nil(a) || is_nil(b) -> nil
      true -> a * b
    end
  end
end
