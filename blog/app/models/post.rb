class Post < ActiveRecord::Base
	def Post_params
		params.require(:Post).permit(:title, :content)
	end
	
	validates :title, :content, :presence => true
	validates :title, :length => {:minimum => 2}
	validates :title, :uniqueness => {:message => "already taken"}
end
