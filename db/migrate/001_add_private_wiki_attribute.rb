class AddPrivateWikiAttribute < ActiveRecord::Migration[5.2]
	def change
		#Add a "Private" attribute used to identify visibility of wikis
		add_column(:wiki_pages, "private", :boolean, :default => false)
	end


	def self.down
		remove_column(:wiki_pages, "private")
	end

end
