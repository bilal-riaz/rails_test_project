# frozen_string_literal: true

class AddProjectIdToTimelog < ActiveRecord::Migration[5.2]
  def change
    add_reference :timelogs, :project
  end
end
