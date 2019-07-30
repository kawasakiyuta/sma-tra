class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id,              null: false
      t.integer :service_id,              null: false
      t.string :email_address,              null: false
      t.string :password,              null: false
      t.string :phone
      t.datetime :last_login_at
      t.integer :in_use,              null: false
      t.string :contract_number
      t.timestamps
    end
  end
end
