class AddFieldsToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :photo, :string
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
    add_column :customers, :contact_number, :string
    add_column :customers, :address, :string
    add_column :customers, :longitude, :string
    add_column :customers, :latitude, :string
    add_column :customers, :provider, :string
    add_column :customers, :uid, :string
  end
end
