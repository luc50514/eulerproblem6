defmodule Eulerproblem6Test do
  use ExUnit.Case
  doctest Eulerproblem6

  test "greets the world" do
    assert Eulerproblem6.hello() == :world
  end

  test "Should return sum of set of squared numbers from 1 to 10" do
    assert Eulerproblem6.getsumofsqaureofnumbers(10) == 385
  end

  test "Should return sum of set of numbers squared from 1 to 10" do
    assert Eulerproblem6.getsumofnumberssquared(10) == 3025
  end

  test "Should return difference of the sum of set of numbers squared and sum of set of numbers squared from 1 to 10" do
    assert Eulerproblem6.getdifferenceofthenumbersquaredandsumsquared(10) == 2640
  end


  test "Should return sum of set of squared numbers from 1 to 100" do
    assert Eulerproblem6.getsumofsqaureofnumbers(100) == 338350
  end

  test "Should return sum of set of numbers squared from 1 to 100" do
    assert Eulerproblem6.getsumofnumberssquared(100) == 25502500
  end

  test "Should return difference of the sum of set of numbers squared and sum of set of numbers squared from 1 to 100" do
    assert Eulerproblem6.getdifferenceofthenumbersquaredandsumsquared(100) == 25164150
  end
end
