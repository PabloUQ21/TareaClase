defmodule Main do
  def main do
    Escritor.escribir("Juan")
    Escritor.escribir("Pedro")
    Escritor.escribir("Maria")

    IO.puts("Datos guardados\n")

    Lector.leer()
  end
end

Main.main()
