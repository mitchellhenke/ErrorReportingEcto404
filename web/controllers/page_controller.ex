defmodule ErrorReportingEcto404.PageController do
  use ErrorReportingEcto404.Web, :controller
  alias ErrorReportingEcto404.Thing

  def show(conn, %{"id" => id}) do
    Repo.get!(Thing, id)
    render conn, "index.html"
  end
end
