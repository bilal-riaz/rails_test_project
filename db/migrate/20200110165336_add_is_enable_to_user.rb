# frozen_string_literal: true

class AddIsEnableToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :isEnable, :boolean, default: true
  end
end
