# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to rotate document pages
class RotatePages
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_keys($app_sid, $app_key)

        options = GroupDocsMergerCloud::RotateOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'Pdf/ten-pages.pdf'
        options.output_path = "Output/rotate-pages.pdf"
        options.pages = [2, 4]
        options.mode = "Rotate90"

        result = pagesApi.rotate(GroupDocsMergerCloud::RotateRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end