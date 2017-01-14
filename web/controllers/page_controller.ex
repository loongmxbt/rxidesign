defmodule RxiDesign.PageController do
  use RxiDesign.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"slug" => slug}) do
    case slug do
      "case" -> render conn, "case.html"
      "about" -> render conn, "about.html"
      "service" -> render conn, "service.html"
      "contact" -> render conn, "contact.html"
      _ -> render conn, RxiDesign.ErrorView, "404.html"
    end
  end

end
