# frozen_string_literal: true

class RemoveProjectIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :project, index: true, foreign_key: true
  end
end
