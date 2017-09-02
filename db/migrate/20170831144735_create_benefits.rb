class CreateBenefits < ActiveRecord::Migration[5.1]
  def change
    create_table :benefits do |t|
      t.references :review, index: { unique: true }, foreign_key: true
      t.boolean :transportation, default: false, null: false
      t.boolean :accommodation, default: false, null: false
      t.integer :wage, default: 0, null: false
      t.boolean :lunch, default: false, null: false

      t.timestamps
    end
  end
end
