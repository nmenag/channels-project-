defmodule ChannelsProjectWeb.StoresChannel do
  use ChannelsProjectWeb, :channel

  require Logger


  def join("stores:" <> store_id, _params, socket) do
    user_id = socket.assigns[:user_id]
    Logger.info("User with user_id: #{user_id} checked in the store with store_id: #{store_id}")
    {:ok, socket}
  end

  def handle_in("get_user_info",%{"storeId" => store_id}, socket) do
    user_id = socket.assigns[:user_id]
    Logger.info("<<<<<<GET USER INFO User => #{user_id} with store id: #{store_id}")
    {:noreply, socket}
  end

end