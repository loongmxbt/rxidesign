defmodule RxiDesign.CaseController do
  use RxiDesign.Web, :controller

  def show(conn, %{"slug" => slug}) do
    case slug do
      "chuangqingchun" -> render conn, "chuangqingchun.html"
      "beijingda" -> render conn, "beijianda.html"
      "youeryuan" -> render conn, "youeryuan.html"
      "fuhuitong" -> render conn, "fuhuitong.html"
      "shuangchuang" -> render conn, "shuangchuang.html"
      "qingchuang" -> render conn, "qingchuang.html"
      "yiyuanshe" -> render conn, "yiyuanshe.html"
      "huadian" -> render conn, "huadian.html"
      "dachuang" -> render conn, "dachuang.html"

      _ -> render conn, RxiDesign.ErrorView, "404.html"
    end
  end

end
