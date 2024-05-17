class Movie < ActiveRecord::Base
    # Validations
    validates :title, presence: true, length: { minimum: 10 }
    validates :rating, presence: true
    validates :description, presence: true
    # Scope or Class methods
    def self.all_ratings
      %w(G PG PG-13 R NC-17)
    end

end
