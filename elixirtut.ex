defmodule M do

  #source: https://www.youtube.com/watch?v=pBNOavRoNL0

  # Run functions with M.<func name> in iex-terminal
  # > M.main # runs whatever is in main()
  def main do
    #data_stuff()
    #do_stuff()
    #do_logic()
    #do_logicops()
    #do_more()
    #do_tuples()
    #more_data_stuff()
    #do_maps()
    pattern_matching()
  end

  def data_stuff do
    IO.puts "Atom #{is_atom(:Pittsburgh)}"
    # list of numbers
    one_to_ten = 1..10
  end

  def do_stuff do
    # Basic om Strings
      my_str = "My Sentence"
      IO.puts "Length : #{String.length(my_str)}" # 11
      longer_str = my_str <> " " <> "is longer"
      IO.puts "My ? #{String.contains?(my_str, "My")}" # true

      IO.puts "First : #{String.first(my_str)}" # M

      IO.puts "Index 4 : #{String.at(my_str, 4)}" # e

      IO.puts "Substring : #{String.slice(my_str, 3, 8)}" # Sentence

      # Split string to list
      IO.inspect String.split(longer_str, " ") # ["My", "Sentence", "is", "longer"]

      IO.puts String.reverse(longer_str) # regnol si ecnetneS yM
      IO.puts String.upcase(longer_str) # MY SENTENCE IS LONGER
      IO.puts String.downcase(longer_str) # my sentence is longer
      IO.puts String.capitalize(longer_str) # My sentence is longer

      4 * 10 |> IO.puts # 40
  end

  def do_logic do
    IO.puts "4 == 4.0 : #{4 == 4.0}"
    IO.puts "4 === 4.0 : #{4 === 4.0}"
    IO.puts "4 != 4.0 : #{4 != 4.0}"
    IO.puts "4 !== 4.0 : #{4 !== 4.0}"

    IO.puts "5 > 4 : #{5 > 4}"
    IO.puts "5 >= 4 : #{5 >= 4}"
    IO.puts "5 < 4 : #{5 < 4}"
    IO.puts "5 <= 4 : #{5 <= 4}"
  end

  def do_logicops do
    age = 16

    #IO.puts "Vote & drive : #{(age >= 16) and (age >= 18)}"
    #IO.puts "Vote or drive : #{(age >= 16) or (age >= 18)}"

    #IO.puts not true

    if age >= 18 do
      IO.puts "Can vote"
    else
      IO.puts "Can't vote"
    end

    unless age === 18 do
      IO.puts "You're not 18"
    else
      IO.puts "You are 18"
    end

    # Cond stopper på første treff
    cond do
      age >= 18 -> IO.puts "You can vote"
      age >= 16 -> IO.puts "You can drive"
      age >= 14 -> IO.puts "You can wait"
      true -> IO.puts "Default"
    end
  end

  def do_more do
    age = 16

    case 2 do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"
    end

    IO.puts "Ternary : #{if age > 18, do: "Can vote", else: "Can't vote"}"
  end

  def do_tuples do
    my_stats = {175, 6.25, :Derek}

    IO.puts "Tuple : #{is_tuple(my_stats)}"

    my_stats2 = Tuple.append(my_stats, 42)

    IO.puts "Age: #{elem(my_stats2, 3)}"
    IO.puts "Size: #{tuple_size(my_stats2)}"

    my_stats3 = Tuple.delete_at(my_stats2, 0)
    my_stats4 = Tuple.insert_at(my_stats3, 0, 1974)

    many_zeroes = Tuple.duplicate(0, 5)

    {weight, height, name} = {175, 6.25, :Derek}

    IO.puts "Element: #{elem(many_zeroes, 4)}"
    IO.puts "Weight: #{weight}"
  end

  def more_data_stuff do
    list1 = [1,2,3]
    list2 = [4,5,6]

    list3 = list1 ++ list2

    list4 = list3 -- list1

    IO.puts 6 in list4

    [head | tail] = list3
    IO.puts "Head : #{head}"

    IO.write "Tail : "
    IO.inspect tail

    # Rare inspect-resultater, merk: whatever siste verdien i en funksjon er, printes når funksjonen er ferdig
    IO.inspect [97,98], char_lists: :as_lists

    Enum.each tail, fn item ->
      IO.puts item
    end

    words = ["random", "words", "in a ", "list"]
    Enum.each words, fn word ->
      IO.puts word
    end

    display_list(words)

    IO.puts display_list(List.delete_at(words, 1))
    IO.puts display_list(List.insert_at(words, 4, "Yeah"))

    IO.puts List.first(words)
    IO.puts List.last(words)

    _my_stats = [name: "Derek", height: 6.25]

  end

  def display_list([word|words]) do
    IO.puts word
    display_list(words)
  end
  def display_list([]), do: nil

  def do_maps() do
    capitals = %{"Alabama" => "Montegomery",
      "Alaska" => "Juneau",
      "Arizona" => "Phoenix"}

    capitals2 = %{:alabama => "Montegomery",
      :alaska => "Juneau",
      :arizona => "Phoenix"}

    IO.puts "Capital of Alaska is #{capitals["Alaska"]}"
    IO.puts "Capital of Arizona is #{capitals2.arizona}"

    capital3 = Dict.put_new(capitals, "Arkansas", "Little Rock")
  end

  def pattern_matching do
    [length, width] = [20, 30]
    IO.puts "Width : #{width}"

    # "_" to indicate an unused variable
    [_, [_, a]] = [20, [30, 40]]
    IO.puts "Get Num : #{a}"
  end

end
