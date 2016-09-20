defmodule ErrorReportingEcto404.PageControllerTest do
  use ErrorReportingEcto404.ConnCase

  test "GET /", %{conn: conn} do
    assert_error_sent 501, fn ->
      conn
      |> get("/0")

    end
  end
end
