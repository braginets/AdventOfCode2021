defmodule FileReader do
  def read_text(file) do
    {:ok, data} = File.read(file)

    data
    |> String.split("\n")
  end

  def read_numbers(file) do
    read_text(file)
    |> Enum.map(&String.to_integer/1)
  end
end
