# frozen_string_literal: true

class CreateAsds < ActiveRecord::Migration[6.1]
  def change
    create_table :asds do |t|
      t.string :name
      t.integer :money

      t.timestamps
    end
  end
end
