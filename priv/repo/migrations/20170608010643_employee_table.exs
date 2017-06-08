defmodule Ecto101MigrationsSchemas.Repo.Migrations.EmployeeTable do
  use Ecto.Migration

  def change do
    create table(:employee) do
      add :first_name, :text
      add :last_name, :text
      add :hire_date, :date
      add :department_id,
        references(:department,
          on_delete: :delete_all,
          on_update: :update_all)

      timestamps()
    end
  end
end
