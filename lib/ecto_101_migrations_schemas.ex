defmodule Ecto101MigrationsSchemas do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: Ecto101MigrationsSchemas.Worker.start_link(arg1, arg2, arg3)
      # worker(Ecto101MigrationsSchemas.Worker, [arg1, arg2, arg3]),
      supervisor(Ecto101MigrationsSchemas.Repo, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ecto101MigrationsSchemas.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
