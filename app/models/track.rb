# frozen_string_literal: true

class Track < ApplicationRecord
  belongs_to :album, primary_key: 'AlbumId', foreign_key: 'AlbumId'
  belongs_to :genre, primary_key: 'GenreId', foreign_key: 'GenreId'
  belongs_to :media_type, primary_key: 'MediaTypeId', foreign_key: 'MediaTypeId'

  has_many :invoice_items, primary_key: 'TrackId', foreign_key: 'TrackId'
end
