class Artist < ApplicationRecord
	validates :name, presence: true
	validates :age, presence: true

	has_many :songs
	has_many :genres, through: :songs
end
