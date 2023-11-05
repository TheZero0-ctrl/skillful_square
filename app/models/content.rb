# frozen_string_literal: true

class Content < ApplicationRecord
  belongs_to :product, optional: true

  has_one_attached :file
end
