defmodule LiveviewTestWeb.LiveController do
  use Phoenix.LiveView

	def render(assigns) do
		~L"""
		<p>Here I can not reference @test defined in router.ex plug, otherwise I will get an error</p>

		"""
	end

	def mount(_session, socket) do
		{:ok, socket}
	end

	def handle_info(:tick, socket) do
		{:noreply, socket}
	end

	def handle_event("nav", _path, socket) do
		{:noreply, socket}
	end
end
