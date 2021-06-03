# Import modules
require './Common.rb'

# This example demonstrates how to extract document pages by specifying page numbers range
class ExtractPagesByRange
    
    def self.Run()    
        pagesApi = GroupDocsMergerCloud::PagesApi.from_config($config)

        options = GroupDocsMergerCloud::ExtractOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/extract-pages-by-range.docx"
        options.start_page_number = 1
        options.end_page_number = 10
        options.range_mode = "EvenPages"

        result = pagesApi.extract(GroupDocsMergerCloud::ExtractRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end