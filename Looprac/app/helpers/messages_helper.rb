module MessagesHelper
	# El method dy bet-concatenate tag esmo <option> fe html le kol user maogood 3al database
	# bet-display el username we goaha feeh el id bta3 el user da

	def recipients_options
    	s = ''
    	User.all.each do |user| 													# loop over every user
      		s << "<option value='#{user.id}'>#{user.username}</option>"				# concatenate each user's option tag to s
    	end
    	s.html_safe
  	end
end
