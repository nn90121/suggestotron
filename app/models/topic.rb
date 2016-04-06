class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  default_scope { order('votes_count DESC') }
end
