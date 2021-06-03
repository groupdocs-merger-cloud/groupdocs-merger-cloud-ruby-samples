# Import modules
require './Common.rb'

# This example demonstrates how to join specific pages from several source documents
class JoinPagesFromVariousDocuments
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        item1 = GroupDocsMergerCloud::JoinItem.new
        item1.file_info = GroupDocsMergerCloud::FileInfo.new
        item1.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        item1.pages = [3, 6, 8]

        item2 = GroupDocsMergerCloud::JoinItem.new
        item2.file_info = GroupDocsMergerCloud::FileInfo.new
        item2.file_info.file_path = 'WordProcessing/four-pages.docx'        
        item2.start_page_number = 1
        item2.end_page_number = 4
        item2.range_mode = "OddPages"

        options = GroupDocsMergerCloud::JoinOptions.new
        options.join_items = [item1, item2]
        options.output_path = "Output/joined-pages.docx"

        result = documentApi.join(GroupDocsMergerCloud::JoinRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end