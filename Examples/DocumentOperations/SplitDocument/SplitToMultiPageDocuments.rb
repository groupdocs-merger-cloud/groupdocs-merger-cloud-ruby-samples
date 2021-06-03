# Import modules
require './Common.rb'

# This example demonstrates how to split the document to several multi-page documents by specified page ranges
class SplitToMultiPageDocuments
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        options = GroupDocsMergerCloud::SplitOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/sample-10-pages.docx'
        options.output_path = "Output/split-to-multipage-document"
        options.pages = [3, 6, 8]
        options.mode = "Intervals"

        result = documentApi.split(GroupDocsMergerCloud::SplitRequest.new(options))
        
        puts("Documents count: " + result.documents.size.to_s)
    end

end