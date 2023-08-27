# frozen_string_literal: true

class Product < ApplicationRecord
  monetize :price_cents

  # associations
  belongs_to :user
end
