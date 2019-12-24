# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to extract document pages by specifying their numbers
class ExtractPagesByNumbers
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_keys($app_sid, $app_key)

        options = GroupDocsMergerCloud::ExtractOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/extract-pages-by-numbers.docx"
        options.pages = [2, 4, 7]

        result = pagesApi.extract(GroupDocsMergerCloud::ExtractRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end