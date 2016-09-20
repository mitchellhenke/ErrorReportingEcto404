defmodule ErrorReportingEcto404.PageControllerTest do
  use ErrorReportingEcto404.ConnCase

  test "GET /", %{conn: conn} do
    assert_error_sent 501, fn ->
      conn # uncomment me and test will pass |> put_req_header("accept", "application/json")
      |> get("/0")

    end
  end
end
