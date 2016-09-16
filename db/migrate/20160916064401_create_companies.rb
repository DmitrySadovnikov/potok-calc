class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :money
      t.integer :term
      t.integer :annual_rate
      t.integer :period
      t.integer :default_rate

      t.timestamps
    end
  end
end
