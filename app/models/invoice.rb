# frozen_string_literal: true

class Invoice < ApplicationRecord
  has_many :invoice_items, primary_key: 'InvoiceId', foreign_key: 'InvoiceId'
end
    