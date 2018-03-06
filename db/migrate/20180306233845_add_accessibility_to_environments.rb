class AddAccessibilityToEnvironments < ActiveRecord::Migration[5.2]
  def change
    add_column :environments, :accessibility, :boolean
  end
end
