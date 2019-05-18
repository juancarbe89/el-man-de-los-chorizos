class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :address
      t.string :longitude
      t.string :latitude
      t.string :email
      t.string :password
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
