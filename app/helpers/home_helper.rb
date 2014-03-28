module HomeHelper
	def cover_img_url(cover_id)
		set = Flickr.sets.find(cover_id)
		info = set.get_photos(:sizes => :all).last
		cover = info.small!(320)
		@cover_url = cover.source_url
		return @cover_url
	end
end
