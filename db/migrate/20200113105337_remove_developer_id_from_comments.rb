# frozen_string_literal: true

class RemoveDeveloperIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :developer, index: true, foreign_key: true
  end
end
