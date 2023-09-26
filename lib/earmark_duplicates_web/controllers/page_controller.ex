defmodule EarmarkDuplicatesWeb.PageController do
  use EarmarkDuplicatesWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.


    md = """
    # Hello World

    This is my list:

    - one;
    - two;
    - three.
    """

      md_text = transform_markdown(md)

    render(conn, :home, layout: false, md_text: md_text)
  end

  defp transform_markdown(text) do
    {:ok, ast, _ } =  EarmarkParser.as_ast(text)
    Earmark.transform(ast)
  end
end
