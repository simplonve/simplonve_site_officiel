class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name,  presence: true
  validates_uniqueness_of :name
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false }
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
