defmodule OrcasiteWeb.Types.Detection do
  @moduledoc """
  GraphQL types for feeds
  """
  use Absinthe.Schema.Notation

  object :detection do
    field :id, :id
    field :feed, :feed
    field :playlist_timestamp, :integer
    field :source_ip, :string
    field :player_offset, :decimal
  end

  object :detection_with_lockout do
    field :detection, :detection
    field :lockout_initial, :float
    field :lockout_remaining, :float
  end
end
