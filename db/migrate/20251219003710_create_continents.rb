class CreateContinents < ActiveRecord::Migration[7.1]
  def change
    create_table :continents do |t|
      t.string :name
      t.boolean :is_public
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
