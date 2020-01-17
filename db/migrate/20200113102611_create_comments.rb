# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :commentable_id
      t.string :commentable_type
      t.references :project, foreign_key: true
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
