# frozen_string_literal: true

class Product < ApplicationRecord
  # friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged

  # rails_money
  monetize :price_cents, allow_nil: true

  # associations
  belongs_to :user
  has_rich_text :description
  has_many :contents, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: { scope: :user_id, case_sensitive: false  }

  def draft?
    !published?
  end
end
