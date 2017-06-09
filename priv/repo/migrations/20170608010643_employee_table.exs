defmodule Ecto101MigrationsSchemas.Repo.Migrations.EmployeeTable do
  use Ecto.Migration

  def change do
    create table(:employee) do
      add :first_name, :text, null: false
      add :last_name, :text, null: false
      add :hire_date, :date, null: false
      add :department_id,
        references(:department,
          on_delete: :delete_all,
          on_update: :update_all),
        null: false

      timestamps()
    end
  end
end
