class User < ActiveRecord::Base
	has_secure_password

	def self.authenticate(email, password)
		user = find_by_email(email)
		if user && user.password == BCryt::Engine.hash_secret(password)
			user
		end
	end
end
