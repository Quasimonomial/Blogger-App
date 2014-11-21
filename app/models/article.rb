# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  body       :text
#

class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  has_many(
    :comments,
    class_name: "Comment",
    foreign_key: :article_id,
    primary_key: :id
  )
end
