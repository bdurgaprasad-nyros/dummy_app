class User < ActiveRecord::Base
	
	
	
	 has_attached_file :avatar,
				  :whiny=> false, 
				  :styles => { :medium => "150x150!", 
						     :stamp => "50x50!"  ,
						     :thumb => { :geometry => '30x30#', :format => "png" }
						   },
			               :storage => :s3,
				       :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
                                       :path => ":attachment/:id/:style.:extension",
				       :bucket => 'paperclip-demo'			   
                                  
	 
	 validates_presence_of :name 
         validates_attachment_presence :avatar
         validates_attachment_content_type :avatar, :content_type => ['image/jpg', 'image/jpeg', 'image/gif', 'image/png'] 
end
