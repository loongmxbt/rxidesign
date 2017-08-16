defmodule RxiDesign.Router do
  use RxiDesign.Web, :router

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

  scope "/", RxiDesign do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/page/:slug", PageController, :show
    get "/case/:slug", CaseController, :show
    get "/price/:slug", PriceController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", RxiDesign do
  #   pipe_through :api
  # end
end
