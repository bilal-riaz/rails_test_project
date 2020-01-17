# frozen_string_literal: true

class ChangePaidAtToBeDateTimeInPayments < ActiveRecord::Migration[5.2]
  def change
    change_column :payments, :paid_at, :datetime
  end
end
