class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:username], password_length: 1..128

  enum role: {operator: 100, admin: 200}

  ransacker :role, formatter: proc {|v| roles[v]}

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
