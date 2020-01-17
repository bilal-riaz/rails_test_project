# frozen_string_literal: true

class RenameDateToPaidAt < ActiveRecord::Migration[5.2]
  def change
    rename_column :payments, :date, :paid_at
  end
end
