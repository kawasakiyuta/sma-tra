class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :service_name,              null: false
      t.integer :req_email_address,              null: false
      t.integer :req_password,              null: false
      t.integer :req_phone,              null: false
      t.integer :req_birth_date,              null: false
      t.integer :req_contract_number,         null: false

      t.timestamps
    end
  end
end
