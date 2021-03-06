# Import modules
require './Common.rb'

#  This example demonstrates how to obtain all supported file types
class GetSupportedFileTypes
    
    def self.Run()        
        infoApi = GroupDocsMergerCloud::InfoApi.from_config($config)        
        result = infoApi.get_supported_file_formats()
        result.formats.each do |format|        
            puts(format.file_format)
        end
    end

end