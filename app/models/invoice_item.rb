# frozen_string_literal: true

class InvoiceItem < ApplicationRecord
  belongs_to :track, primary_key: 'TrackId', foreign_key: 'TrackId'
  belongs_to :invoice, primary_key: 'InvoiceId', foreign_key: 'InvoiceId'
end
  