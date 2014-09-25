class ReviewsController < ApplicationController

	def filter
	end
	
	def display_tweets
		text_for_reviews_search = params[:make]+' '+params[:model]+' '+params[:version]
		p text_for_reviews_search.inspect
		session['text_for_reviews_search'] = text_for_reviews_search
		since_date = params[:date][:year]+'-'+params[:date][:month]+'-'+params[:date][:day]
		p since_date
		
		@tweets = $client.search("#{text_for_reviews_search}", :lang => "en", :result_type => "recent", :since=> since_date).take(200)	
	end

	def display_fb_posts
		
	end
end
