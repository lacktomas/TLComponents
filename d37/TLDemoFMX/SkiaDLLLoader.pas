unit SkiaDLLLoader;

interface

procedure LoadSkiaDLL;

implementation

uses
  System.SysUtils, System.Classes, System.Hash, Winapi.Windows;

function FileSHA256(const FileName: string): string;
var
  FS: TFileStream;
begin
  FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    Result := THashSHA2.GetHashString(FS);
  finally
    FS.Free;
  end;
end;

function ResourceSHA256(const ResName: string): string;
var
  RS: TResourceStream;
begin
  RS := TResourceStream.Create(HInstance, ResName, RT_RCDATA);
  try
    Result := THashSHA2.GetHashString(RS);
  finally
    RS.Free;
  end;
end;

procedure ExtractResourceToFile(const ResName, FilePath: string);
var
  RS: TResourceStream;
begin
  RS := TResourceStream.Create(HInstance, ResName, RT_RCDATA);
  try
    RS.SaveToFile(FilePath);
  finally
    RS.Free;
  end;
end;

procedure LoadSkiaDLL;
var
  ExeDir: string;
  DLLPath: string;
  HashRes, HashFile: string;
begin
  ExeDir := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  DLLPath := ExeDir + 'sk4d.dll';

  HashRes := ResourceSHA256('SK4D_DLL');

  if FileExists(DLLPath) then
  begin
    HashFile := FileSHA256(DLLPath);

    // Ak sa hash zhoduje: nic neprepisujeme
    if SameText(HashRes, HashFile) then
    begin
      if LoadLibrary(PChar(DLLPath)) = 0 then
        raise Exception.Create('Failed to load sk4d.dll');
      Exit;
    end;
  end;

  // Hash sa lisi: prepis DLL
  ExtractResourceToFile('SK4D_DLL', DLLPath);

  if LoadLibrary(PChar(DLLPath)) = 0 then
    raise Exception.Create('Failed to load sk4d.dll');
end;

initialization
  LoadSkiaDLL;
end.

