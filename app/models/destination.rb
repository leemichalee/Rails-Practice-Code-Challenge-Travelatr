class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts
    def featured_post
        post = self.posts.max_by do |post|
            post.likes
        end
    end

    def average_age
        ages = self.bloggers.uniq.map {|blogger| blogger.age}
        ages.reduce(:+) / ages.count
    end
end
