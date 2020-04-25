# frozen_string_literal: true

class Album < ApplicationRecord
  has_many :tracks, primary_key: 'AlbumId', foreign_key: 'AlbumId'

  belongs_to :artist, primary_key: 'ArtistId', foreign_key: 'ArtistId'
end
