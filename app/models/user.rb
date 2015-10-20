class User < ActiveRecord::Base
	validates :name,  presence: true
  validates_uniqueness_of :name
	has_secure_password

  scope :simploniens, -> {
    where(:online => true)
  }

  def tags_to_array
    self.tags.split(",")
  end

  def image_path
    first_name = self.name.split.first.downcase
    "simploniens/#{first_name}.jpg"
  end
end
