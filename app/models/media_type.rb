# frozen_string_literal: true

class MediaType < ApplicationRecord
  has_many :tracks, primary_key: 'MediaTypeId', foreign_key: 'MediaTypeId'
end
  