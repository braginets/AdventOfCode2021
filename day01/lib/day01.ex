defmodule Day01 do





  def count_increases(file) do


    # |> Integer.parse()
    # |> elem(0)

    numbers = FileReader.read_numbers(file)

    Enum.zip(numbers, tl(numbers))
    |> Enum.count(fn x -> elem(x,0) < elem(x, 1) end)


  end

  def count_triplles(file) do
    numbers = FileReader.read_numbers(file)
    tails = tl(numbers)
    tails2 = tl(tails)

    result = Enum.chunk_every(numbers, 3)
    |> Enum.map(fn x -> Enum.sum(x) end)

    result2 = Enum.chunk_every(tails, 3)
    |> Enum.map(fn x -> Enum.sum(x) end)

    result3 = Enum.chunk_every(tails2, 3)
    |> Enum.map(fn x -> Enum.sum(x) end)


    # result = Enum.reduce(chunks, 0, fn x, acc -> Enum.sum(x) + acc end)
    IO.inspect(result)
    IO.inspect(result2)
    IO.inspect(result3)

    merged_numbers = Enum.zip([result, result2, result3])
    |> Enum.flat_map(fn {x, y, z} -> [x, y, z] end)

    Enum.zip(merged_numbers, tl(merged_numbers))
    |> Enum.count(fn x -> elem(x,0) < elem(x, 1) end)

    # IO.puts("b:")
    # IO.inspect(chunks2)
    # IO.puts("....")
    # Enum.zip(chunks, chunks2)
    # |> Enum.count(fn x -> elem(x,0) < elem(x, 1) end)

  end

  def puzzle1() do
    count_increases("input.txt")
  end

  def puzzle2() do
    count_triplles("input.txt")
  end

end
