class Api::PostsController < ApplicationController

  def index
    @posts = Post.where(nil)
    if params[:tags].present?
      @posts = @posts.select do |post|
         (post.tags & params[:tags].split(',')).any?
      end
      
      if params[:sortBy].present?
        if (params[:direction].present? && params[:direction] == "desc")
          #@posts = @posts.order("#{params[:sortBy]} DESC")
            @posts = @posts.sort_by{|posts| posts[params[:sortBy]].to_i}.reverse
        else
            @posts = @posts.sort_by{|posts| posts[params[:sortBy]].to_i}
        end
      end
    
      render json: @posts, status: :ok
    else
      render json: { error: "The tag parameter is required"}, status: 422
    end  
    
  end
end

