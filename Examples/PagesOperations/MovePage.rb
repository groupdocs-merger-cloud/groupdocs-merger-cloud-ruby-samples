# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to move document page to a new position
class MovePage
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::MoveOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/move-pages.docx"
        options.page_number = 1
        options.new_page_number = 2

        result = pagesApi.move(GroupDocsMergerCloud::MoveRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end