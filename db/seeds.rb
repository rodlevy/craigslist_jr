Category.create(:title => "Bikes")
Category.create(:title => "Electronics")
Category.create(:title => "Cars")
Category.create(:title => "Animals")
Category.create(:title => "Real Estate")
Category.create(:title => "Balloons")

Post.create(:category_id => 1, 
			:title =>"Fast bike",
			:description => "It's really fast",
			:price	=> 50)
			# :item_key => 9999)

