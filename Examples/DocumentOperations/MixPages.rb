# Import modules
require './Common.rb'

# This example demonstrates how to mix specific pages from several source documents
class MixPages
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        # Prepare file info objects
        file1 = GroupDocsMergerCloud::FileInfo.new
        file1.file_path = 'WordProcessing/sample-10-pages.docx'
        file2 = GroupDocsMergerCloud::FileInfo.new
        file2.file_path = 'WordProcessing/four-pages.docx'

        # Prepare MixPagesItem objects
        item1 = GroupDocsMergerCloud::MixPagesItem.new
        item1.file_index = 0
        item1.pages = [1, 2]

        item2 = GroupDocsMergerCloud::MixPagesItem.new
        item2.file_index = 1
        item2.pages = [1, 2]

        item3 = GroupDocsMergerCloud::MixPagesItem.new
        item3.file_index = 0
        item3.pages = [3, 4]

        # Prepare MixPagesOptions
        options = GroupDocsMergerCloud::MixPagesOptions.new
        options.files = [file1, file2]
        options.files_pages = [item1, item2, item3]
        options.output_path = "Output/mixed-pages.docx"

        # Call the API
        result = documentApi.mix(GroupDocsMergerCloud::MixRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end