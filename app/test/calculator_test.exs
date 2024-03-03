defmodule App.CalculatorTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, two: 2, four: 4}
  end

  @tag :multiply_function
  test "should return 4 when multiply 2 by 2", %{two: number_two, four: number_four} do
    assert App.Calculator.multiply(number_two, number_two) == number_four
  end

  @tag :multiply_function
  test "should return 6 when multiply 2 by 3", %{two: number_two} do
    assert App.Calculator.multiply(number_two, 3) == 6
  end

  @tag :multiply_function
  test "should return nil when multiply 2 by nil", %{two: number_two} do
    assert App.Calculator.multiply(number_two, nil) == nil
  end

  @tag :multiply_function
  test "should return nil when multiply nil by 2", %{two: number_two} do
    assert App.Calculator.multiply(nil, number_two) == nil
  end

  @tag :multiply_function
  test "shouldn't return 10 when multiply 2 by 4", %{two: number_two, four: number_four} do
    refute App.Calculator.multiply(number_two, number_four) == 10, "This is an error!!"
  end

  @tag :sum_function
  test "should return 4 when sum 2 and 2", %{two: number_two, four: number_four} do
    assert App.Calculator.sum(number_two, number_two) == number_four
  end

  @tag :sum_function
  test "should return 5 when sum 2 and 3", %{two: number_two} do
    assert App.Calculator.sum(number_two, 3) == 5
  end

  @tag :sum_function
  test "should return nil when sum 2 and nil", %{two: number_two} do
    assert App.Calculator.sum(number_two, nil) == nil
  end

  @tag :sum_function
  test "should return nil when sum nil and 2", %{two: number_two} do
    assert App.Calculator.sum(nil, number_two) == nil
  end

  @tag :sum_function
  test "shouldn't return 10 when sum 2 and 4", %{two: number_two, four: number_four} do
    refute App.Calculator.sum(number_two, number_four) == 10, "This is an error!!"
  end
end
