# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to split the document to several one-page documents (by start/end page numbers)
class SplitToSinglePagesByRange
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_keys($app_sid, $app_key)

        options = GroupDocsMergerCloud::SplitOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/split-by-start-end-numbers"
        options.start_page_number = 3
        options.end_page_number = 7
        options.mode = "Pages"

        result = documentApi.split(GroupDocsMergerCloud::SplitRequest.new(options))
        
        puts("Documents count: " + result.documents.size.to_s)
    end

end