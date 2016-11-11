defmodule CH7Test do
  use ExUnit.Case
  doctest CH7

  test "the truth" do
    assert 1 + 1 == 2
  end


  test "for_location_27" do
    test_date = [[1366225622, 26, 15, 0.125], [1366225622, 26, 15, 0.125], [1366225622, 27, 15, 0.45]]
    assert for_location_27(test_date) == [[1366225622, 27, 15, 0.45]]
  end


  test "span" do
    assert span(0, 3) == [0, 1, 2, 3]
  end

  test "keyword list" do
    kw = [{:name, "Dave"}, {:likes, "Programming"}, {:where, "Dallas", "TX"}]
    find_dallas = kw
    assert find_dallas == {:where, "Dallas", "TX"}
  end

  @doc """
   returns a list of elements starting at from - to
   """
   def span(from, to), do: _span(from, to, [])
   defp _span(from, to, list) when from == to do
     list ++ [to]
   end

  @doc """
    returns the list from a list of lists with the second element == 27
  """
  def for_location_27([_|tail]) do
    for_location_27(tail)
  end
  def for_location_27([]), do: []
end
