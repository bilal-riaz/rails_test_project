# frozen_string_literal: true

class Client < ApplicationRecord
  validates :name, :city, :country, presence: true
  has_many :projects
end
