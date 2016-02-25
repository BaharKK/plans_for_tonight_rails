class Consumer < ActiveRecord::Base
  has_many: transactions

  validates: :user_name, presence: true, uniqueness: true
  validates: :email, presence: true, uniqueness: true
  validates: password: presence: true

  has_secure_password 
end
