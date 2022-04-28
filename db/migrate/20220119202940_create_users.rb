# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.integer :health
      t.integer :alcohol
      t.integer :happy
      t.integer :tired
      t.integer :money

      t.timestamps
    end
  end
end
