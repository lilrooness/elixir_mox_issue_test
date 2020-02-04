defmodule DooettTest do
  use ExUnit.Case

  import Mox

  setup :verify_on_exit!

  test "are we right?" do
    ServiceClient.Mock
    |> expect(:foo, 1, fn ->
      IO.inspect("the mock is being called correctly")
    end)

    Dooett.do_foo()
  end
end
