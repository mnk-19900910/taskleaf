class Task < ApplicationRecord
  has_one_attached :image

  def self.csv_attributes
    ["name", "description", "created_at", "updated_at"]
  end

  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |task|
        csv << csv_attributes.map{|attr| task.send(attr)}
      end
    end
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[name created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  validate :validate_name_not_including_exclamation

  belongs_to :user

  private
  def validate_name_not_including_exclamation
    errors.add(:name, 'に！を加えることはできません') if name&.include?('!')
  end
end
