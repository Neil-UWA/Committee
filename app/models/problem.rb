class Problem < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

  validates :title, presence: true
  validates :details, presence: true
end
