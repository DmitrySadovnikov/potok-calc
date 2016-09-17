class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.float :money
      t.integer :term
      t.float :annual_rate
      t.integer :period
      t.float :default_rate

      t.float :monthly_debt
      t.float :monthly_percent
      t.float :monthly_common
      t.float :payout

      t.float :paid_percent
      t.float :paid_debt

      t.float :yield_pa

      t.timestamps
    end
  end
end
