# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to remove document pages
class RemovePages
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_keys($app_sid, $app_key)

        options = GroupDocsMergerCloud::RemoveOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/remove-pages.docx"
        options.pages = [2, 4]

        result = pagesApi.remove(GroupDocsMergerCloud::RemoveRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end