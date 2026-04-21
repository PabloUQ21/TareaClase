defmodule Escritor do
  def escribir(texto) do
    File.write("archivo.txt", texto <> "\n", [:append])
  end
end
