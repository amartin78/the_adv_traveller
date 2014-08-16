class AddMonthsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :months, :string
  end
end
