class Assignment < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :description, length: { maximum: 250 }
  validates :class_name, presence: true, length: { maximum: 100 }
  validates :class_code, presence: true, length: { maximum: 10 }
  validates :user_id, presence: true
end
