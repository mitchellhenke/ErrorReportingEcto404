defmodule ErrorReportingEcto404.PageView do
  use ErrorReportingEcto404.Web, :view

  def render("index.json-api", _) do
    %{
      testing: "render"
    }
  end
end
