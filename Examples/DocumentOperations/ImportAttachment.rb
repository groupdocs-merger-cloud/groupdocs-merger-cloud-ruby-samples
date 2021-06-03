# Import modules
require './Common.rb'

# This example demonstrates how to import attachment into pdf document
class ImportAttachment
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        options = GroupDocsMergerCloud::ImportOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'Pdf/one-page-password.pdf'
        options.file_info.password = 'password'        
        options.attachments = ["Txt/document.txt"]
        options.output_path = "Output/with-attachment.pdf"

        result = documentApi.import(GroupDocsMergerCloud::ImportRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end