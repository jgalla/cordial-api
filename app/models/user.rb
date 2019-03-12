# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :ingredients, through: :ingredient_user
end
