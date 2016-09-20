defmodule ErrorReportingEcto404.ErrorView do
  use ErrorReportingEcto404.Web, :view

  def render("501.json", _assigns) do
    %{
      id: "NOT IMPLEMENTED",
      status: 501
    }
  end

  def render("500.json", _assigns) do
    %{
      id: "INTERNAL_SERVER_ERROR",
      title: "500 Internal server error",
      status: 500
    }
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.json", assigns
  end
end
