class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.string :hostname
      t.string :ip
      t.integer :cpu
      t.integer :memory
      t.integer :storage
      t.string :location
      t.text :notes
      t.string :operating_system
      t.references :environment, foreign_key: true

      t.timestamps
    end
  end
end
