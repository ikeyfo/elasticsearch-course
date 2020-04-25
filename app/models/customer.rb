# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :invoices, primary_key: 'CustomerId', foreign_key: 'CustomerId'
end
    