class AddPhoneNumberAndNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :name, :string
  end
end
