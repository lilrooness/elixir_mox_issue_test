defmodule Service do
  @moduledoc """
  Documentation for Service.
  """

  def do_foo do
    client().foo()
  end

  defp client() do
    Application.fetch_env!(:service, :client)
  end
end
