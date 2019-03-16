defmodule TheMatrix.Repo do
  use Ecto.Repo,
    otp_app: :the_matrix,
    adapter: Ecto.Adapters.MySQL
end
