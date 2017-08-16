defmodule RxiDesign.PriceController do
  use RxiDesign.Web, :controller

  def show(conn, %{"slug" => slug}) do
    case slug do
      "buganjiao" -> render conn, "buganjiao.html"
      "biaoqian" -> render conn, "biaoqian.html"
      "mingpian" -> render conn, "mingpian.html"
      "pvcbiaozhunka" -> render conn, "pvcbiaozhunka.html"
      "pvcyixingka" -> render conn, "pvcyixingka.html"
      "wutanliandan" -> render conn, "wutanliandan.html"
      "zhuanbandanye" -> render conn, "zhuanbandanye.html"
      "zhuanbanhuace" -> render conn, "zhuanbanhuace.html"
      "hebandanye" -> render conn, "hebandanye.html"
      "shumadanye" -> render conn, "shumadanye.html"
      "shumahuace" -> render conn, "shumahuace.html"

      _ -> render conn, RxiDesign.ErrorView, "404.html"
    end
  end

end
