# Import modules
require './Common.rb'

# This example demonstrates how to import attachment into pdf document
class JoinDocumentsCrossFormat
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        item1 = GroupDocsMergerCloud::JoinItem.new
        item1.file_info = GroupDocsMergerCloud::FileInfo.new
        item1.file_info.file_path = 'Pdf/one-page-password.pdf'
        item1.file_info.password = 'password'

        item2 = GroupDocsMergerCloud::JoinItem.new
        item2.file_info = GroupDocsMergerCloud::FileInfo.new
        item2.file_info.file_path = 'WordProcessing/one-page.docx'        

        options = GroupDocsMergerCloud::JoinOptions.new
        options.join_items = [item1, item2]
        options.output_path = "Output/joined.pdf"

        result = documentApi.join(GroupDocsMergerCloud::JoinRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end