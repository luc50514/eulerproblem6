defmodule Eulerproblem6 do
  @moduledoc """
  Documentation for `Eulerproblem6`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Eulerproblem6.hello()
      :world

  """
  def hello do
    :world
  end

  def getdifferenceofthenumbersquaredandsumsquared(firstnumberinset) do
    getsumofnumberssquared(firstnumberinset) - getsumofsqaureofnumbers(firstnumberinset)
  end

  def getsumofsqaureofnumbers(firstnumberinset) do
    listofnumbers = Enum.to_list firstnumberinset..1
    _getsumofsquareofnumbers(listofnumbers, 0)
  end

  def getsumofnumberssquared(firstnumberinset) do
    listofnumbers = Enum.to_list firstnumberinset..1
    _getsumofnumberssquared(listofnumbers, 0)
  end

  defp _getsumofsquareofnumbers([], addedvalue), do: 1 + addedvalue

  defp _getsumofsquareofnumbers([h | t], addedvalue) when h == 1,
  do: _getsumofsquareofnumbers(t, addedvalue)

  defp _getsumofsquareofnumbers([h | t], addedvalue) do
    multipliedandaddedvalue = (h * h + addedvalue)
    _getsumofsquareofnumbers(t, multipliedandaddedvalue)
  end


  defp _getsumofnumberssquared([], addedvalue), do: (1 + addedvalue) * (1 + addedvalue)

  defp _getsumofnumberssquared([h | t], addedvalue) when h == 1,
  do: _getsumofnumberssquared(t, addedvalue)

  defp _getsumofnumberssquared([h | t], addedvalue) do
    multipliedandaddedvalue = (h + addedvalue)
    _getsumofnumberssquared(t, multipliedandaddedvalue)
  end
end
