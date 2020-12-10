# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

# This example demonstrates how to check document password
class CheckDocumentPasswordProtection
    
    def self.Run()    
        securityApi = GroupDocsMergerCloud::SecurityApi.from_config($config)

        result = securityApi.check_password(GroupDocsMergerCloud::CheckPasswordRequest.new("WordProcessing/password-protected.docx"))
        
        puts("Check password: " + result.is_password_set.to_s)
    end

end