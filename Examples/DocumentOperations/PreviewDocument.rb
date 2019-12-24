# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to generate document pages preview
class PreviewDocument
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_keys($app_sid, $app_key)

        options = GroupDocsMergerCloud::PreviewOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/four-pages.docx'
        options.output_path = "Output/preview-page"
        options.pages = [1, 3]
        options.format = "Png"

        result = documentApi.preview(GroupDocsMergerCloud::PreviewRequest.new(options))
        
        puts("Documents count: " + result.documents.size.to_s)
    end

end