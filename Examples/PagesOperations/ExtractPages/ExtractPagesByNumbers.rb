# Import modules
require './Common.rb'

# This example demonstrates how to extract document pages by specifying their numbers
class ExtractPagesByNumbers
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::ExtractOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/extract-pages-by-numbers.docx"
        options.pages = [2, 4, 7]

        result = pagesApi.extract(GroupDocsMergerCloud::ExtractRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end