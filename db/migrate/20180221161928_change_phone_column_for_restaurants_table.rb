class ChangePhoneColumnForRestaurantsTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
