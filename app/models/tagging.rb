# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Tagging < ActiveRecord::Base
end
