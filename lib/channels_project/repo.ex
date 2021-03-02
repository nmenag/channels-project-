defmodule ChannelsProject.Repo do
  use Ecto.Repo,
    otp_app: :channels_project,
    adapter: Ecto.Adapters.Postgres
end
