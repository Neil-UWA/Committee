class Problem < ActiveRecord::Base
  belongs_to :user, dependent: :destory
end
