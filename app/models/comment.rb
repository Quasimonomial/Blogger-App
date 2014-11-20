class Comment < ActiveRecord::Base
  validates :author_name, :body, :article_id, presence: true

  belongs_to(
    :article,
    class_name: "Article",
    foreign_key: :article_id,
    primary_key: :id
  )
end
