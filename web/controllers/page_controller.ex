defmodule ErrorReportingEcto404.PageController do
  use ErrorReportingEcto404.Web, :controller
  alias ErrorReportingEcto404.Thing

  def show(conn, %{"id" => id}) do
    IO.inspect conn.private[:phoenix_format]
    raise MyError, "this is an error"
    render conn, "index.json-api"
  end

  def index(conn, _) do
    IO.inspect conn.private[:phoenix_format]
    render conn, "index.json-api"
  end
end

defmodule MyError do
  defexception message: "default message"
end

defimpl Plug.Exception, for: MyError do
  def status(_exception), do: 501
end
