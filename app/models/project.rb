class Project < ApplicationRecord
  has_many :environments, dependent: :destroy
  validates :name, presence: true
end
