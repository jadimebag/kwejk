class Mem < ApplicationRecord
  belongs_to :user

  scope :get_active, -> {where active: true}
  scope :get_inactive, -> {where active: false}

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :rates

  def get_rate
    rates.count <= 0 ? 0 : (rates.sum(:rate) / rates.count).to_i
    # if rates.count <= 0
    #   0
    # else
    #
    # end
  end
end
