class Bookmark < ApplicationRecord
    validates :movie_id, :list_id, presence: true
    validates :movie_id, uniqueness: { scope: :list_id }
    belongs_to :movie
    belongs_to :list
end
