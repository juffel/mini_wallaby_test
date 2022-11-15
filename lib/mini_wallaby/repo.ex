defmodule MiniWallaby.Repo do
  use Ecto.Repo,
    otp_app: :mini_wallaby,
    adapter: Ecto.Adapters.Postgres
end
