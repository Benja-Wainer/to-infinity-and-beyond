class CreateJetpacks < ActiveRecord::Migration[7.0]
  def change
    create_table :jetpacks do |t|
      t.string :title
      t.string :model
      t.float :price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
