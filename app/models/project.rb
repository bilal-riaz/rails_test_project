# frozen_string_literal: true

class Project < ApplicationRecord
  validates :title, presence: true
  belongs_to :client
  has_many :payments
  has_many :timelogs
  has_many :comments, as: :commentable
end
