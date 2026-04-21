defmodule Clientes do

  def iniciar do
    ingresar_datos()
  end

  def ingresar_datos do
    nombre = IO.gets("Ingrese nombre: ") |> String.trim()
    edad = IO.gets("Ingrese edad: ") |> String.trim()
    altura = IO.gets("Ingrese altura: ") |> String.trim()

    linea = nombre <> "," <> edad <> ", " <> altura <> "\n"

    if !File.exists?("clientes.csv") do
      File.write("clientes.csv", "nombre, edad, altura\n")
    end

    File.write("clientes.csv", linea, [:append])

    continuar = IO.gets("¿Ingresar otro cliente? (si/no): ") |> String.trim()

    if continuar == "s" do
      ingresar_datos()
    else
      IO.puts("Datos guardados correctamente")
    end
  end

end

Clientes.iniciar()
