class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.float :latitude
      t.float :longitude
      t.datetime :when

      t.timestamps
    end
  end
end
