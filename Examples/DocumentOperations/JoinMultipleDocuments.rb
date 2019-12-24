# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to join multiple documents into one document
class JoinMultipleDocuments
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_keys($app_sid, $app_key)

        item1 = GroupDocsMergerCloud::JoinItem.new
        item1.file_info = GroupDocsMergerCloud::FileInfo.new
        item1.file_info.file_path = 'WordProcessing/four-pages.docx'

        item2 = GroupDocsMergerCloud::JoinItem.new
        item2.file_info = GroupDocsMergerCloud::FileInfo.new
        item2.file_info.file_path = 'WordProcessing/one-page.docx'        

        options = GroupDocsMergerCloud::JoinOptions.new
        options.join_items = [item1, item2]
        options.output_path = "Output/joined.docx"

        result = documentApi.join(GroupDocsMergerCloud::JoinRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end