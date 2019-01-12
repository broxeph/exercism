defmodule Bob do
  def hey(input) do
    cond do
      # Not saying anything
      String.trim(input) == "" ->
        "Fine. Be that way!"

      # Yelling a question
      Regex.match?(~r/[A-Я]+/, input) and input == String.upcase(input) and
          String.ends_with?(input, "?") ->
        "Calm down, I know what I'm doing!"

      # Yelling
      Regex.match?(~r/[A-Я]+/, input) and input == String.upcase(input) ->
        "Whoa, chill out!"

      # Asking a question
      String.ends_with?(input, "?") ->
        "Sure."

      # Everything else
      true ->
        "Whatever."
    end
  end
end
