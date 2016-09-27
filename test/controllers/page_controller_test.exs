defmodule ErrorReportingEcto404.PageControllerTest do
  use ErrorReportingEcto404.ConnCase

  test "GET /:id", %{conn: conn} do
    assert_error_sent 501, fn ->
      conn
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")
      |> get("/0")
    end
  end

  test "GET /test", %{conn: conn} do
    conn = conn
           |> put_req_header("accept", "application/vnd.api+json")
           |> put_req_header("content-type", "application/vnd.api+json")
           |> get("/test")

    assert conn.status == 200
    assert conn.private[:phoenix_format] == "json-api"
  end
end
