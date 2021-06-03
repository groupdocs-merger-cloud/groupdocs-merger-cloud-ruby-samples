# Import modules
require './Common.rb'

# This example demonstrates how to add password to document
class AddDocumentPassword
    
    def self.Run()    
        securityApi = GroupDocsMergerCloud::SecurityApi.from_config($config)

        options = GroupDocsMergerCloud::Options.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/one-page.docx'
        options.file_info.password = 'password'
        options.output_path = "Output/add-password.docx"

        result = securityApi.add_password(GroupDocsMergerCloud::AddPasswordRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end