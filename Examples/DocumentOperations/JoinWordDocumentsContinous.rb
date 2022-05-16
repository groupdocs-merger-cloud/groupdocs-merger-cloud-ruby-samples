# Import modules
require './Common.rb'

# This example demonstrates how to join word document continously, without adding new page between documents.
class JoinWordDocumentsContinous
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        item1 = GroupDocsMergerCloud::JoinItem.new
        item1.file_info = GroupDocsMergerCloud::FileInfo.new
        item1.file_info.file_path = 'WordProcessing/four-pages.docx'

        item2 = GroupDocsMergerCloud::JoinItem.new
        item2.file_info = GroupDocsMergerCloud::FileInfo.new
        item2.file_info.file_path = 'WordProcessing/one-page.docx'        
        item2.word_join_mode = 'Continous'

        options = GroupDocsMergerCloud::JoinOptions.new
        options.join_items = [item1, item2]
        options.output_path = "Output/joined_continous.docx"

        result = documentApi.join(GroupDocsMergerCloud::JoinRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end