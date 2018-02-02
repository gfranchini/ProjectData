class Project < ApplicationRecord
  has_many :environments, dependent: :destroy
  has_many :servers, through: :environments, dependent: :destroy
  validates :name, presence: true

  def self.search(search)
    where('name LIKE ?', '%' + "#{search}" + '%')
  end
end
