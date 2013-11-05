class User < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_s
    "#{full_name}: #{email}"
  end
end
