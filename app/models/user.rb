class User < ActiveRecord::Base
  has_many :articles, foreign_key: :author_id
  has_many :comments, foreign_key: :commenter_id

  has_secure_password
end
