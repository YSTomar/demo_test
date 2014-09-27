class Presentation < ActiveRecord::Base
	has_attached_file :document
 	validates_attachment :document, content_type: { content_type: ['application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation'] }

 	has_many :lectures
end
