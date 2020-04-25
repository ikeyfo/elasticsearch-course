# frozen_string_literal: true

class SearchBarIndex < Chewy::Index
  define_type Album.includes(:artist, :tracks) do
    field :title, type: 'text', value: ->(album) { album.Title }
    field :artist, type: 'text', value: ->(album) { album.artist.Name }

    field :tracks, type: 'nested', value: ->(album) { album.tracks } do
      field :name, type: 'text', value: ->(track) { track.Name }
      field :miliseconds, type: 'integer', value: ->(track) {track.Milliseconds }
    end
  end
end