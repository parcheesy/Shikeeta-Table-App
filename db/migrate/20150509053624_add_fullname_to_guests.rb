class AddFullnameToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :fullname, :string
  end
end
