defmodule App.CalculatorTest do
  use ExUnit.Case

  setup do
    {:ok, two: 2, four: 4}
  end

  test "should return 4 when multiply 2 by 2", %{two: number_two, four: number_four} do
    assert App.Calculator.multiply(number_two, number_two) == number_four
  end

  test "should return 6 when multiply 2 by 3", %{two: number_two} do
    assert App.Calculator.multiply(number_two, 3) == 6
  end

  test "should return nil when multiply 2 by nil", %{two: number_two} do
    assert App.Calculator.multiply(number_two, nil) == nil
  end

  test "should return nil when multiply nil by 2", %{two: number_two} do
    assert App.Calculator.multiply(nil, number_two) == nil
  end

  test "shouldn't return 10 when multiply 2 by 4", %{two: number_two, four: number_four} do
    refute App.Calculator.multiply(number_two, number_four) == 10, "This is an error!!"
  end
end
