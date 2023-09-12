# frozen_string_literal: true

class Product < ApplicationRecord
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged

  # rails_money
  monetize :price_cents, allow_nil: true

  # associations
  belongs_to :user

  # validations
  validates :name, presence: true, uniqueness: { scope: :user_id, case_sensitive: false  }

  def draft?
    !published?
  end
end
