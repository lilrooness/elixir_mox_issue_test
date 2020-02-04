defmodule ServiceClient do
  @behaviour ServiceClientBehaviour

  def foo() do
    IO.inspect("doing the real foo")
    :ok
  end
end
