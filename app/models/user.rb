class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :trackable, :validatable

	validates :username, :uniqueness => {:case_sensitive => false}

	has_many :posts
	has_many :offers
	has_many :requests
	has_one :profile



	def name
		"#{first_name} #{last_name}"
	end
	protected

	def self.find_for_database_authentication(warden_conditions)
		conditions = warden_conditions.dup
		login = conditions.delete(:login)
		where(conditions).where(["lower(username) = :value", { :value => login.downcase }]).first
	end


end
