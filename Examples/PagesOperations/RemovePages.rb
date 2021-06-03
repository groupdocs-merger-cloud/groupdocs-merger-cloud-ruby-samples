# Import modules
require './Common.rb'

# This example demonstrates how to remove document pages
class RemovePages
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::RemoveOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/remove-pages.docx"
        options.pages = [2, 4]

        result = pagesApi.remove(GroupDocsMergerCloud::RemoveRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end