class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :upvotes, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true

  def vote_score
    upvotes.count
  end

end
