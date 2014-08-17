class AddImageSrcToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_src, :string
  end
end
