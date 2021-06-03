# Import modules
require './Common.rb'

# This example demonstrates how to remove document password
class RemoveDocumentPassword
    
    def self.Run()    
        securityApi = GroupDocsMergerCloud::SecurityApi.from_config($config)

        options = GroupDocsMergerCloud::Options.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/password-protected.docx'
        options.file_info.password = 'password'
        options.output_path = "Output/remove-password.docx"

        result = securityApi.remove_password(GroupDocsMergerCloud::RemovePasswordRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end