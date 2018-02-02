class CreateEnvironments < ActiveRecord::Migration[5.2]
  def change
    create_table :environments do |t|
      t.string :name
      t.boolean :docker
      t.boolean :rancher
      t.string :url
      t.text :notes
      t.string :dbhost
      t.string :dbuser
      t.string :dbname
      t.string :dbport
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
