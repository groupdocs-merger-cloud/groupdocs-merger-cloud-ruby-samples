# Import modules
require './Common.rb'

# This example demonstrates how to update document password
class UpdateDocumentPassword
    
    def self.Run()    
        securityApi = GroupDocsMergerCloud::SecurityApi.from_config($config)

        options = GroupDocsMergerCloud::UpdatePasswordOptions.new
        options.file_info = GroupDocsMergerCloud::FileInfo.new
        options.file_info.file_path = 'WordProcessing/password-protected.docx'
        options.file_info.password = 'password'
        options.output_path = "Output/update-password.docx"
        options.new_password = "NewPassword"

        result = securityApi.update_password(GroupDocsMergerCloud::UpdatePasswordRequest.new(options))
        
        puts("Output file path: " + result.path)
    end

end