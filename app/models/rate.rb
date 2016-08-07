class Rate < ApplicationRecord
  belongs_to :mem
  belongs_to :user

  def self.get_rate_range
    (1..10)
  end
end
