# Import modules
require './Common.rb'

# This example demonstrates how to split the document to several one-page documents (by start/end page numbers and even/odd filter)
class SplitToSinglePagesByRangeWithFilter
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        options = GroupDocsMergerCloud::SplitOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/split-by-start-end-numbers-with-filter"
        options.start_page_number = 3
        options.end_page_number = 7
        options.range_mode = "OddPages"
        options.mode = "Intervals"

        result = documentApi.split(GroupDocsMergerCloud::SplitRequest.new(options))
        
        puts("Documents count: " + result.documents.size.to_s)
    end

end