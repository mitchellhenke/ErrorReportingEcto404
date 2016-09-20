defmodule ErrorReportingEcto404.Router do
  use ErrorReportingEcto404.Web, :router
  use Plug.ErrorHandler
  use Sentry.Plug

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
    pipe_through :browser # Use the default browser stack

    get "/:id", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", ErrorReportingEcto404 do
  #   pipe_through :api
  # end
end
