defmodule ErrorReportingEcto404.Router do
  use ErrorReportingEcto404.Web, :router
  # comment the following line to have tests pass
  use Plug.ErrorHandler

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ErrorReportingEcto404 do
    pipe_through :api # Use the default browser stack

    get "/:id", PageController, :show
  end

  # comment the following method to have tests pass
  defp handle_errors(_conn, _) do
    # report or something
  end

  # Other scopes may use custom stacks.
  # scope "/api", ErrorReportingEcto404 do
  #   pipe_through :api
  # end
end
