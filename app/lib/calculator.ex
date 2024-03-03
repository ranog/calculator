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

  @doc """
  Sum two numbers.

  ## Examples

      iex> App.Calculator.sum(2, 2)
      4

  """
  def sum(a, b) do
    cond do
      is_nil(a) || is_nil(b) -> nil
      true -> a + b
    end
  end
end
