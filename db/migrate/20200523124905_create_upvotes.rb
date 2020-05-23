# frozen_string_literal: true

class CreateUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :upvotes do |t|
      t.belongs_to :user, as: :author, null: false
      t.bigint :resource_id, null: false
      t.string :resource_type, null: false

      t.timestamps
    end
  end
end
