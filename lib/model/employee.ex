defmodule Ecto101MigrationsSchemas.Employee do
  use Ecto.Schema

  schema "employee" do
    field :first_name, :string
    field :last_name, :string
    field :hire_date, :date

    belongs_to :department, Ecto101MigrationsSchemas.Department

    timestamps()
  end
end