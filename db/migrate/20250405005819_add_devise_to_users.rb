class AddDeviseToUsers < ActiveRecord::Migration[6.0]
  def change
    # Only add the email column if it doesn't already exist
    unless column_exists?(:users, :email)
      add_column :users, :email, :string, null: false, default: ""
    end

    # Only add the encrypted_password column if it doesn't already exist
    unless column_exists?(:users, :encrypted_password)
      add_column :users, :encrypted_password, :string, null: false, default: ""
    end

    change_table :users, bulk: true do |t|
      # Only add columns if they don't already exist
      t.string :reset_password_token unless column_exists?(:users, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:users, :reset_password_sent_at)
      t.datetime :remember_created_at unless column_exists?(:users, :remember_created_at)
      # If you're using confirmable
      # t.string :confirmation_token unless column_exists?(:users, :confirmation_token)
      # t.datetime :confirmed_at unless column_exists?(:users, :confirmed_at)
      # t.datetime :confirmation_sent_at unless column_exists?(:users, :confirmation_sent_at)
      # t.string :unconfirmed_email unless column_exists?(:users, :unconfirmed_email) # Only if using reconfirmable
    end

    add_index :users, :email, unique: true unless index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
    # add_index :users, :confirmation_token, unique: true unless index_exists?(:users, :confirmation_token) # If using confirmable
  end
end