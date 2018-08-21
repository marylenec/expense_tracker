class User < ApplicationRecord
  has_many :transactions
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true

  # validates :first_name, presence: true
  # validates :last_name, presence: true

end
