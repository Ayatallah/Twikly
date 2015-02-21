class BlogController < ApplicationController

	before_action :authenticate_user!

end
