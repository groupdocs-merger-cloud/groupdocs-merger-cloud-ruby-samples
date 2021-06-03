# Import modules
require './Common.rb'

# This example demonstrates how to split the document to several one-page documents (by exact page numbers)
class SplitToSinglePages
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        options = GroupDocsMergerCloud::SplitOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/split-document"
        options.pages = [1, 3]
        options.mode = "Pages"

        result = documentApi.split(GroupDocsMergerCloud::SplitRequest.new(options))
        
        puts("Documents count: " + result.documents.size.to_s)
    end

end