class Url < ActiveRecord::Base
	validates :long_url, presence: true
	validates :long_url, format: { with: /https*:\/\/\S*/, message: "wrong url format ..."}

end
