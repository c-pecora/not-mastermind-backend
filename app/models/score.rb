class Score < ApplicationRecord

	def self.total_score
		self.all.reduce(0) { |sum, num| sum + num.score }
	end
end
