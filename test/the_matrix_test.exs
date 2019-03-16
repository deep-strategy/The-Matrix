defmodule TheMatrixTest do
  use ExUnit.Case
  doctest TheMatrix

  test "greets the world" do
    assert TheMatrix.hello() == :world
  end
end
