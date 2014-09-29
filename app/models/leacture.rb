class Leacture < ActiveRecord::Base
	has_attached_file :p_document
 	validates_attachment :p_document, content_type: { content_type: ['application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation'] }
 	belongs_to :presentation
end
