defmodule EarmarkDuplicates.Repo do
  use Ecto.Repo,
    otp_app: :earmark_duplicates,
    adapter: Ecto.Adapters.Postgres
end
