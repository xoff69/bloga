class Comment < ApplicationRecord
    # un article a plusieurs commentaires, un commentaire appartient a un seul article
    belongs_to :article
    validates :body, presence: true
end
