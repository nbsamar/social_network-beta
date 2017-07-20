class Friendship < ApplicationRecord
	belongs_to :user
	belongs_to :friend, :class_name => "User"
	validates :friend_id, uniqueness: {scope: [:friend,:user]} #prevents adding same friend again
end
