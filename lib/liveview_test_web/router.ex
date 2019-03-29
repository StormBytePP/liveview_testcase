defmodule LiveviewTestWeb.Router do
  use LiveviewTestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug LiveviewTestWeb.ConfigurePlug
    plug :put_layout, {LiveviewTestWeb.LayoutView, :app}
    plug Phoenix.LiveView.Flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveviewTestWeb do
    pipe_through :browser

    get "/normal", PageController, :index
    live "/live", LiveController
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveviewTestWeb do
  #   pipe_through :api
  # end
end
