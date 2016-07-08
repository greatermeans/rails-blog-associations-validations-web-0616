class Post < ActiveRecord::Base
	belongs_to :user
	has_many :post_tags
	has_many :tags, through: :post_tags
	validates :name, presence: true, uniqueness: true
	validates :content, presence: true
	# accepts_nested_attributes_for :tags

	def tag_ids=(tags)
		tags.each {|tag| self.tags << Tag.find(tag.to_i) if tag.present?}
	end
  
end
