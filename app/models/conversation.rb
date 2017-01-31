class Conversation < ApplicationRecord
  has_many :comments, as: :commentable
end
