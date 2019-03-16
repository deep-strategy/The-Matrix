defmodule TheMatrix.DatabaseTestCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias TheMatrix.Repo

      import Ecto
      import Ecto.Query
      import TheMatrix.DatabaseTestCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(TheMatrix.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(TheMatrix.Repo, {:shared, self()})
    end

    :ok
  end
end