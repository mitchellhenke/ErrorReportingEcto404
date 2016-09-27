defmodule ErrorReportingEcto404.PageControllerTest do
  use ErrorReportingEcto404.ConnCase

  test "GET /", %{conn: conn} do
    assert_error_sent 501, fn ->
      conn
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")
      |> get("/0")

    end
  end
end
