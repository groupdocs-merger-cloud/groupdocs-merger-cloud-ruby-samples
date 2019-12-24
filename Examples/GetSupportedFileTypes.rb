# Import modules
require 'groupdocs_merger_cloud'
require './Common.rb'

#  This example demonstrates how to obtain all supported file types
class GetSupportedFileTypes
    
    def self.Run()        
        infoApi = GroupDocsMergerCloud::InfoApi.from_keys($app_sid, $app_key)        
        result = infoApi.get_supported_file_formats()
        result.formats.each do |format|        
            puts(format.file_format)
        end
    end

end