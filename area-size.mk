##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=area-size
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/MyTemp/Cplus/ws
ProjectPath            :=C:/MyTemp/Cplus/ws/area-size
IntermediateDirectory  :=../build-$(ConfigurationName)/area-size
OutDir                 :=../build-$(ConfigurationName)/area-size
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=IlkkaKotilainen
Date                   :=27/12/2021
CodeLitePath           :=C:/devel/CodeLite
LinkerName             :=C:/devel/mingw/mingw64/bin/g++.exe
SharedObjectLinkerName :=C:/devel/mingw/mingw64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/devel/mingw/mingw64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/devel/mingw/mingw64/bin/ar.exe rcu
CXX      := C:/devel/mingw/mingw64/bin/g++.exe
CC       := C:/devel/mingw/mingw64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/devel/mingw/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\devel\CodeLite
Objects0=../build-$(ConfigurationName)/area-size/area-size.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/area-size/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\area-size" mkdir "..\build-$(ConfigurationName)\area-size"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\area-size" mkdir "..\build-$(ConfigurationName)\area-size"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/area-size/.d:
	@if not exist "..\build-$(ConfigurationName)\area-size" mkdir "..\build-$(ConfigurationName)\area-size"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/area-size/area-size.c$(ObjectSuffix): area-size.c ../build-$(ConfigurationName)/area-size/area-size.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/MyTemp/Cplus/ws/area-size/area-size.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/area-size.c$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/area-size/area-size.c$(DependSuffix): area-size.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/area-size/area-size.c$(ObjectSuffix) -MF../build-$(ConfigurationName)/area-size/area-size.c$(DependSuffix) -MM area-size.c

../build-$(ConfigurationName)/area-size/area-size.c$(PreprocessSuffix): area-size.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/area-size/area-size.c$(PreprocessSuffix) area-size.c


-include ../build-$(ConfigurationName)/area-size//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


