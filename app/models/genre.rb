# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :tracks, primary_key: 'GenreId', foreign_key: 'GenreId'
end
