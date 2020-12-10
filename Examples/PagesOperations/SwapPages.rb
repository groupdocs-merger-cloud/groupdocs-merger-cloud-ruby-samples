# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to swap document pages
class SwapPages
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::SwapOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/swap-pages.docx"
        options.first_page_number = 2
        options.second_page_number = 4

        result = pagesApi.swap(GroupDocsMergerCloud::SwapRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end