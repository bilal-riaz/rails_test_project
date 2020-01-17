# frozen_string_literal: true

class CreateTimelogs < ActiveRecord::Migration[5.2]
  def change
    create_table :timelogs do |t|
      t.string :no_of_hours_spent
      t.date :date

      t.timestamps
    end
  end
end
