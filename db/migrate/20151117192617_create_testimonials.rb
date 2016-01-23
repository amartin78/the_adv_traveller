class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
			t.string :name
      t.string :email
      t.text :body
      t.string :rate	
      t.references :product, index: true
      
      t.timestamps
    end
  end
end
