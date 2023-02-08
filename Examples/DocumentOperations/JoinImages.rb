# Import modules
require './Common.rb'

# This example demonstrates how to join images.
class JoinImages
    
    def self.Run()    
        documentApi = GroupDocsMergerCloud::DocumentApi.from_config($config)

        item1 = GroupDocsMergerCloud::JoinItem.new
        item1.file_info = GroupDocsMergerCloud::FileInfo.new
        item1.file_info.file_path = 'Img/task1.jpg'

        item2 = GroupDocsMergerCloud::JoinItem.new
        item2.file_info = GroupDocsMergerCloud::FileInfo.new
        item2.file_info.file_path = 'Img/task2.jpg'        
        item2.image_join_mode = 'Vertical'

        options = GroupDocsMergerCloud::JoinOptions.new
        options.join_items = [item1, item2]
        options.output_path = "Output/joined.jpg"

        result = documentApi.join(GroupDocsMergerCloud::JoinRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end