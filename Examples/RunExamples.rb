require './Common.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXX-XXXX-XXXX-XXXX"
$app_key = "XXXXXXXXXXXXXXXX"

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

  require './DocumentOperations/JoinPagesFromVariousDocuments.rb'
  puts("Executing JoinPagesFromVariousDocuments...")
  JoinPagesFromVariousDocuments.Run() 

  require './DocumentOperations/PreviewDocument.rb'
  puts("Executing PreviewDocument...")
  PreviewDocument.Run() 

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