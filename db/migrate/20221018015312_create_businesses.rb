class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :email
      t.string :site_web

      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
