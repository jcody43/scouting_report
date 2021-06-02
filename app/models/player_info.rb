class PlayerInfo < ApplicationRecord
   validates :author, :player_name, :college, :position, :positions_flex, :height, :weight, :athletic_ability, :strengths, :weaknesses, :summary, :grade, presence: true
end






