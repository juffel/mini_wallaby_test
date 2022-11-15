defmodule MiniWallabyWeb.TestTestTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "test test test", %{session: session} do
    session
    |> visit("/")
    |> find(Query.css(".user", count: 3))
    |> List.first()
    |> assert_has(Query.css(".user-name", text: "Chris"))
  end
end
