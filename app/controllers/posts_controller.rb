class PostsController <ApplicationController

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post=Post.new 
	end

	

	def create
		@post = Post.new (post_params)

		@post.save

		#flash[:notice] = "Post was successfully created"

		redirect_to posts_path, notice: "Post was successfully created"
	end



	private
	 
	def  post
		@post ||= Post.find(params[:id])
	end
	helper_method :post
	def post_params
		params.require(:post).permit(:title,:body)
	end	

		
	
end
