defmodule Practice.Palindrome do
  def check_pal(word) do
    backwards = String.reverse(word)
    String.equivalent?(backwards, word)
  end
end
