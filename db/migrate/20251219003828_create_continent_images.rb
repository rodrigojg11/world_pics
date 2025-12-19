class CreateContinentImages < ActiveRecord::Migration[7.1]
  def change
    create_table :continent_images do |t|
      t.string :name
      t.boolean :is_public
      t.references :continent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
