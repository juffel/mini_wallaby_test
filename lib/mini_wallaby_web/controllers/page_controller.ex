defmodule MiniWallabyWeb.PageController do
  use MiniWallabyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
