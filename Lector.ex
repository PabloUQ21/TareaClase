defmodule Lector do
  def leer do
    case File.read("archivo.txt") do
      {:ok, contenido} ->
        IO.puts("Contenido del archivo:")
        IO.puts(contenido)

      {:error, _} ->
        IO.puts("Error al leer el archivo")
    end
  end
end
