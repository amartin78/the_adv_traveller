class ChangeFeaturedToProducts < ActiveRecord::Migration
  def change
      change_column :products, :featured, :boolean, :default=>false
  end
end
