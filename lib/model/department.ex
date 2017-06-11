defmodule Ecto101MigrationsSchemas.Department do
  use Ecto.Schema

  schema "department" do
    field :name, :string

    has_many :employees, Ecto101MigrationsSchemas.Employee

    timestamps()
  end
end