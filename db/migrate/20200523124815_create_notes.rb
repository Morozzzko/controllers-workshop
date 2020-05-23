# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :content, null: false
      t.belongs_to :user, as: :author, null: false

      t.timestamps
    end
  end
end
