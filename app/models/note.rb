# frozen_string_literal: true

class Note < ApplicationRecord
  belongs_to :user
  has_many :comments
end
