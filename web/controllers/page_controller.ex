defmodule ReactChan.PageController do
  use ReactChan.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

end
