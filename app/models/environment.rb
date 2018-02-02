class Environment < ApplicationRecord
  belongs_to :project
  has_many :servers, dependent: :destroy
  accepts_nested_attributes_for :servers, reject_if: proc { |attributes| attributes['ip'].blank? }, allow_destroy: true

  def self.env_validator(project_envs)
    environments = ['Development', 'QA', 'Production', 'Staging', 'Test']
    collector = []

    project_envs.map(&:attributes).each do |x|
       collector.push(x['name'])
    end

    return collector - environments | environments - collector
  end
end