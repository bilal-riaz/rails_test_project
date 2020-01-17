# frozen_string_literal: true

class ChangeAmountToBeStringInPayments < ActiveRecord::Migration[5.2]
  def change
    change_column :payments, :amount, :string
  end
end
