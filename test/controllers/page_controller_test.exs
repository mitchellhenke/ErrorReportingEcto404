defmodule ErrorReportingEcto404.PageControllerTest do
  use ErrorReportingEcto404.ConnCase

  test "GET /", %{conn: conn} do
    assert_error_sent 404, fn ->
      get conn, "/0"
    end
  end
end
