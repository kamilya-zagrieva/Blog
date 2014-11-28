class PostsController <ApplicationController
	before_filter :post, only:[:show, :edit,:update,:destroy]
	before_action :authenticate_user!, only:[:show,:edit,:update,:destroy]

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

		#@post.save

		#flash[:notice] = "Post was successfully created"
		if post.save
			flash[:notice]="Post was successfully created"
		else  
			flash[:warning]="Failed"
	end
		redirect_to posts_path, notice: "Post was successfully created"
	end

	def edit 
	end

	
	def update
		@post.assign_attributes(post_params)
		
		#@post.save

		#flash[:notice] = "Post update successfully created"
		if @post.valid?
			@post.save
			flash[:notice]="Post   update successfully created"
		else  
			flash[:warning]="Failed"
		end
		redirect_to posts_path
	end
	def  post
		@post ||= Post.find(params[:id])
	end
	helper_method :post

	def destroy
		@post.destroy
		flash[:notice] = "Post was successfully deleted"
		redirect_to posts_path, notice: 'Post deleted'
	end

private
	
	def post_params
		params.require(:post).permit(:title,:body)
	end		
end


