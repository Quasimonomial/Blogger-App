# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  author_name :string(255)
#  body        :text
#  article_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Comment < ActiveRecord::Base
  validates :author_name, :body, :article_id, presence: true

  belongs_to(
    :article,
    class_name: "Article",
    foreign_key: :article_id,
    primary_key: :id
  )
end
