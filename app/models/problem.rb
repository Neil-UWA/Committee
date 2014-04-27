class Problem < ActiveRecord::Base
  belongs_to :user, dependent: :destory

  validates :title, presence: true
  validates :details, presence: true
end
