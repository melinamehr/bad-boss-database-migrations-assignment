class EditingLocation < ActiveRecord::Migration[5.0]
  def up
    change_table :locations do |t|
    t.string :weather
    t.remove :country, :province, :street_number, :street
    end
  end

  def down
    change_table :locations do |t|
    t.remove :weather
    t.string :country, :province, :street_number, :street
    end
  end

end
