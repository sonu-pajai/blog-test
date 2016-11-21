class SiteController < ApplicationController
	layout "site"
	require 'will_paginate/array'
	def index			
		@blogs=Blog.order("pagevisits Desc").paginate(:per_page => 5, :page => params[:page])
	end
	def search_blog
		if params[:searchtext]
			@searchtext=params[:searchtext]
		@blogs=Blog.where("title LIKE ? OR description LIKE ? ", "%"+params[:searchtext]+"%", "%"+params[:searchtext]+"%").order('pagevisits desc').paginate(:per_page => 5, :page => params[:page])
		else
			redirect_to "/"
		end
	end
	def filter_blog
		if params[:sort_by]
			if params[:sort_by]=="popular"
				@blogs=Blog.order("pagevisits Desc").paginate(:per_page => 5, :page => params[:page])
			elsif params[:sort_by]=="recent"
				@blogs=Blog.order("created_at DESC").paginate(:per_page => 5, :page => params[:page])
	
		    elsif params[:sort_by]=="nameasc"
		    	@blogs=Blog.order("title ASC").paginate(:per_page => 5, :page => params[:page])
	
		    elsif params[:sort_by]=="namedesc"
		    	@blogs=Blog.order("title DESC").paginate(:per_page => 5, :page => params[:page])
			end		
		else
		@blogs=Blog.paginate(:per_page => 5, :page => params[:page])
		end
	end

	def blog
	 	@blog=Blog.find(params[:blog_id])
	  	if @blog.present?
			entity_id = @blog.id
		    entity_type = 'Blog'       
		    visit = Pagevisit.where("user_ip = ? AND entity_type = ? AND entity_id = ?", request.remote_ip, entity_type, entity_id)
	      	if(visit.count==0)         
		        @blog.pagevisits == nil ? visits=1 : visits=@blog.pagevisits+1
		        @blog.update_attributes(:pagevisits =>visits )
		        newvisit = Pagevisit.new
		        newvisit.user_ip = request.remote_ip
		        newvisit.entity_type =  entity_type
		        newvisit.entity_id =  entity_id
		        newvisit.save     
	    	end  
        end 
	end
end
