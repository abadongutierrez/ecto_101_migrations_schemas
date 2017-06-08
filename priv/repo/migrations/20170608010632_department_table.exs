defmodule Ecto101MigrationsSchemas.Repo.Migrations.DepartmentTable do
  use Ecto.Migration

  def change do
    create table(:department) do
      add :name, :text

      timestamps()
    end
  end
end
