# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to change document page orientation
class ChangePageOrientation
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::OrientationOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/change-page-orientation.docx"
        options.pages = [2, 4]
        options.mode = "Landscape"

        result = pagesApi.orientation(GroupDocsMergerCloud::OrientationRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end