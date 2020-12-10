# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

#  This example demonstrates how to get document info
class GetDocumentInformation
    
    def self.Run()        
        infoApi = GroupDocsMergerCloud::InfoApi.from_config($config)
        fileInfo = GroupDocsMergerCloud::FileInfo.new
        fileInfo.file_path = 'WordProcessing/password-protected.docx'
        fileInfo.password = 'password'
        request = GroupDocsMergerCloud::GetInfoRequest.new(fileInfo)
        response = infoApi.get_info(request)
        puts("Pages count = " + response.pages.size.to_s)
    end

end