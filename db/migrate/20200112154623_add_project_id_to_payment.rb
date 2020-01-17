# frozen_string_literal: true

class AddProjectIdToPayment < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :project
  end
end
