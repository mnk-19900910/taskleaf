class Task < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validate :validate_name_not_including_exclamation

  belongs_to :user

  private
  def validate_name_not_including_exclamation
    errors.add(:name, 'に！を加えることはできません') if name&.include?('!')
  end
end
