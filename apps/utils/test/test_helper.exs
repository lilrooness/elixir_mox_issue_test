ExUnit.start()

defmodule Utils.ServiceClientBehaviour do
  @callback foo() :: :ok
end

Mox.defmock(ServiceClient.Mock, for: ServiceClientBehaviour)
