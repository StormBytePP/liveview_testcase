defmodule LiveviewTestWeb.ConfigurePlug do
	import Plug.Conn

	def init(), do: nil

	def init(_), do: nil

	def call(conn, _config) do
		# Assign something for testing
		conn
		|> assign(:test, "test_str")
	end
end
