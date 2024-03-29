require './Common.rb'

# Get your ClientId and ClientSecret at https://dashboard.groupdocs.cloud (free registration is required).
$client_id = "XXXX-XXXX-XXXX-XXXX"
$client_secret = "XXXXXXXXXXXXXXXX"

$config = GroupDocsMergerCloud::Configuration.new($client_id, $client_secret)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  puts("Executing Upload Test Files...")
  Common.UploadSampleFiles()

  require './GetSupportedFileTypes.rb'
  puts("Executing GetSupportedFileTypes...")
  GetSupportedFileTypes.Run()

  require './GetDocumentInformation.rb'
  puts("Executing GetDocumentInformation...")
  GetDocumentInformation.Run()  

  require './DocumentOperations/JoinMultipleDocuments.rb'
  puts("Executing JoinMultipleDocuments...")
  JoinMultipleDocuments.Run()

  require './DocumentOperations/JoinWordDocumentsContinous.rb'
  puts("Executing JoinWordDocumentsContinous...")
  JoinWordDocumentsContinous.Run()  

  require './DocumentOperations/JoinImages.rb'
  puts("Executing JoinImages...")
  JoinImages.Run()  

  require './DocumentOperations/JoinDocumentsCrossFormat.rb'
  puts("Executing JoinDocumentsCrossFormat...")
  JoinDocumentsCrossFormat.Run()

  require './DocumentOperations/JoinPagesFromVariousDocuments.rb'
  puts("Executing JoinPagesFromVariousDocuments...")
  JoinPagesFromVariousDocuments.Run() 

  require './DocumentOperations/PreviewDocument.rb'
  puts("Executing PreviewDocument...")
  PreviewDocument.Run() 

  require './DocumentOperations/ImportAttachment.rb'
  puts("Executing ImportAttachment...")
  ImportAttachment.Run()   

  require './DocumentOperations/SplitDocument/SplitToMultiPageDocuments.rb'
  puts("Executing SplitToMultiPageDocuments...")
  SplitToMultiPageDocuments.Run() 

  require './DocumentOperations/SplitDocument/SplitToSinglePages.rb'
  puts("Executing SplitToSinglePages...")
  SplitToSinglePages.Run()
  
  require './DocumentOperations/SplitDocument/SplitToSinglePagesByRange.rb'
  puts("Executing SplitToSinglePagesByRange...")
  SplitToSinglePagesByRange.Run()
  
  require './DocumentOperations/SplitDocument/SplitToSinglePagesByRangeWithFilter.rb'
  puts("Executing SplitToSinglePagesByRangeWithFilter...")
  SplitToSinglePagesByRangeWithFilter.Run()

  require './PagesOperations/ChangePageOrientation.rb'
  puts("Executing ChangePageOrientation...")
  ChangePageOrientation.Run()   

  require './PagesOperations/MovePage.rb'
  puts("Executing MovePage...")
  MovePage.Run() 

  require './PagesOperations/RemovePages.rb'
  puts("Executing RemovePages...")
  RemovePages.Run() 

  require './PagesOperations/RotatePages.rb'
  puts("Executing RotatePages...")
  RotatePages.Run()   

  require './PagesOperations/SwapPages.rb'
  puts("Executing SwapPages...")
  SwapPages.Run()

  require './PagesOperations/ExtractPages/ExtractPagesByNumbers.rb'
  puts("Executing ExtractPagesByNumbers...")
  ExtractPagesByNumbers.Run()

  require './PagesOperations/ExtractPages/ExtractPagesByRange.rb'
  puts("Executing ExtractPagesByRange...")
  ExtractPagesByRange.Run()

  require './SecurityOperations/AddDocumentPassword.rb'
  puts("Executing AddDocumentPassword...")
  AddDocumentPassword.Run()

  require './SecurityOperations/CheckDocumentPasswordProtection.rb'
  puts("Executing CheckDocumentPasswordProtection...")
  CheckDocumentPasswordProtection.Run()

  require './SecurityOperations/RemoveDocumentPassword.rb'
  puts("Executing RemoveDocumentPassword...")
  RemoveDocumentPassword.Run()    

  require './SecurityOperations/UpdateDocumentPassword.rb'
  puts("Executing UpdateDocumentPassword...")
  UpdateDocumentPassword.Run() 

end