# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  validates :health, numericality: { only_integer: true }
  validates :alcohol, numericality: { only_integer: true }
  validates :happy, numericality: { only_integer: true }
  validates :tired, numericality: { only_integer: true }
  validates :money, numericality: { only_integer: true }

  has_one :stats_record
end
