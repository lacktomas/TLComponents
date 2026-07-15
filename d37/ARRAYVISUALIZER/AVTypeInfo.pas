unit AVTypeInfo;

interface

uses
  TypInfo, Classes, ActiveX, SysUtils, Windows, Graphics;

type
  TProcParam = record
    Flags    : TParamFlags;
    ParamName: ShortString;
    TypeName : ShortString;
  end;
  TProcParams = array of TProcParam;

  TTypeInfos = class
  private
    FTypeInfos: array of PPTypeInfo;
  public
    constructor Create;
    destructor Destroy; override;
    function GetPTypeInfo(const Kind: TypInfo.TTypeKind; const Name: ShortString): PPTypeInfo;
    function FindPTypeInfo(const Kind: TypInfo.TTypeKind; TypeData: PTypeData): PPtypeInfo;
  end;

  TFuncParam = record
    vt       : TVarType;
    pvt      : TVarType;
    TypeKind : ActiveX.TTypeKind;
    ParamName: ShortString;
    TypeName : ShortString;
    //Variable : TDVelicina;
  end;

  PFuncParams = ^TFuncParams;
  TFuncParams = array[0..255] of TFuncParam;

  PFuncInfo = ^TFuncInfo;
  TFuncInfo = record
    Index     : Integer;
    Name      : ShortString;
    cParams   : Smallint;
    FuncParams: PFuncParams;
    TypeName  : ShortString;
    vt        : TVarType;
    TypeKind  : ActiveX.TTypeKind;
    GUID      : TGUID;
  end;

  TMethodTypeInfo = record
    EventTypeInfo: PPTypeInfo;
    MethodClass  : TComponentClass;
  end;

  TMethods = class
  private
    FMethods: array of TMethodTypeInfo;
  public
    constructor Create;
    destructor Destroy; override;
    function AddMethod(const EventTypeInfo: PTypeInfo; const MethodClass: TComponentClass): Boolean;
    function GetPTypeInfo(const EventTypeInfo: PTypeInfo): PPTypeInfo; overload;
    function GetPTypeInfo(const MethodClass: TComponentClass): PPTypeInfo; overload;
    function GetPTypeInfo(const ClassName: String): PPTypeInfo; overload;
    function GetPTypeInfo(const Kind: TypInfo.TTypeKind; const TypeData: PTypeData): PPTypeInfo; overload;
    function GetMethodClass(const EventTypeInfo: PTypeInfo): TComponentClass;
  end;

  TSetWString = procedure(Index: Integer; const Value: WideString) of Object;
  TGetWString = function(Index: Integer): WideString of Object;
  TSetString = procedure(Index: Integer; const Value: string) of Object;
  TGetString = function(Index: Integer): string of Object;
  TSetWordBool = procedure(Index: Integer; Value: WordBool) of Object;
  TGetWordBool = function(Index: Integer): WordBool of Object;
  TSetBoolean = procedure(Index: Integer; Value: Boolean) of Object;
  TGetBoolean = function(Index: Integer): Boolean of Object;
  TSetChar = procedure(Index: Integer; Value: Char) of Object;
  TGetChar = function(Index: Integer): Char of Object;
  TSetByte = procedure(Index: Integer; Value: Byte) of Object;
  TGetByte = function(Index: Integer): Byte of Object;
  TSetSmallInt = procedure(Index: Integer; Value: SmallInt) of Object;
  TGetSmallInt = function(Index: Integer): SmallInt of Object;
  TSetInteger = procedure(Index: Integer; Value: Integer) of Object;
  TGetInteger = function(Index: Integer): Integer of Object;
  TSetWord = procedure(Index: Integer; Value: Word) of Object;
  TGetWord = function(Index: Integer): Word of Object;
  TSetLongInt = procedure(Index: Integer; Value: LongInt) of Object;
  TGetLongInt = function(Index: Integer): LongInt of Object;
  TSetLongWord = procedure(Index: Integer; Value: LongWord) of Object;
  TGetLongWord = function(Index: Integer): LongWord of Object;
  TSetOleEnum = procedure(Index: Integer; Value: TOleEnum) of Object;
  TGetOleEnum = function(Index: Integer): TOleEnum of Object;
  TSetSingle = procedure(Index: Integer; const Value: Single) of Object;
  TGetSingle = function(Index: Integer): Single of Object ;
  TSetDouble = procedure(Index: Integer; const Value: Double) of Object;
  TGetDouble = function(Index: Integer): Double of Object ;
  TSetOleVariant = procedure(Index: Integer; const Value: OleVariant) of Object;
  TGetOleVariant = function(Index: Integer): OleVariant of Object ;
  TSetColor = procedure(Index: Integer; Value: TColor) of Object;
  TGetColor = function(Index: Integer): TColor of Object;
  TSetFont = procedure(Index: Integer; Value: TFont) of Object;
  TGetFont = function(Index: Integer): TFont of Object;
  TSetPicture = procedure(Index: Integer; Value: TPicture) of Object;
  TGetPicture = function(Index: Integer): TPicture of Object;
  TSetMethod = procedure(Index: Integer; const Method: TMethod) of Object;
  TGetMethod = function(Index: Integer): TMethod of Object;

  TNoParamsProc = procedure of Object;

const
  VT_BOOLEAN = $0049;
  VT_STRING  = $0100;

var
  WideStringTI: PTypeInfo;
  StringTI    : PTypeInfo;
  WordBoolTI  : PTypeInfo;
  BooleanTI   : PTypeInfo;
  CharTI      : PTypeInfo;
  ByteTI      : PTypeInfo;
  IntegerTI   : PTypeInfo;
  SmallIntTI  : PtypeInfo;
  WordTI      : PTypeInfo;
  LongIntTI   : PTypeInfo;
  LongWordTI  : PtypeInfo;
  OleEnumTI   : PTypeInfo;
  SingleTI    : PTypeInfo;
  DoubleTI    : PTypeInfo;
  OleVariantTI: PTypeInfo;
  ColorTI     : PTypeInfo;
  FontTI      : PTypeInfo;
  PictureTI   : PTypeInfo;
  DispatchTI  : PTypeInfo;

function VTtoTypeName(VT: TVarType): String;
function TypeNameToVT(TypeName: String): TVarType;

function ComponentPropInfo(Instance: TPersistent; const PropName: string): PPropInfo;
function ComponentPropList(Instance: TPersistent; TypeKinds: TTypeKinds; PropList: PPropList): Integer;

procedure SortPropList(PropList: PPropList; PropCount: Integer); assembler;

function GetProcParams(TypeData: PTypeData; var ProcParams: TProcParams;
  var ResultType: ShortString): Integer;
procedure SetProcParams(TypeData: PTypeData; ProcParams: TProcParams);
function ProcParamsToStr(TypeData: PTypeData; var ResultType: ShortString): String;

var
  TypeInfos: TTypeInfos;
  Methods  : TMethods;

const
  NullMethod: TMethod = (Code: nil; Data: nil);

  FontGUID   : TGUID = '{BEF6E003-A874-101A-8BBA-00AA00300CAB}';
  PictureGUID: TGUID = '{7BF80981-BF32-101A-8BBB-00AA00300CAB}';

implementation

uses
  Controls;

function VTtoTypeName(VT: TVarType): String;
begin
  case VT of
    VT_BOOL   : Result := 'Boolean';
    VT_I2     : Result := 'Smallint';
    VT_I4     : Result := 'Integer';
    VT_R4     : Result := 'Single';
    VT_R8     : Result := 'Double';
    VT_CY     : Result := 'Currency';
    VT_DATE   : Result := 'TDateTime';
    VT_BSTR   : Result := 'WideString';
    VT_VARIANT: Result := 'OleVariant';
    VT_PTR    : Result := 'Pointer';
  else
    Result := '';
  end;
end;

function TypeNameToVT(TypeName: String): TVarType;
begin
  Result := VT_EMPTY;
  case TypeName[1] of
    'B': if CompareText(TypeName, 'Boolean') = 0 then
           Result := VT_BOOLEAN
         else if CompareText(TypeName, 'Byte') = 0 then
           Result := VT_UI1;
    'C': if CompareText(TypeName, 'Cardinal') = 0 then
           Result := VT_UI4
         else if CompareText(TypeName, 'Char') = 0 then
           Result := VT_I1;
    'S': if CompareText(TypeName, 'Smallint') = 0 then
           Result := VT_I2
         else if CompareText(TypeName, 'Single') = 0 then
           Result := VT_R4
         else if CompareText(TypeName, 'String') = 0 then
           Result := VT_STRING;
    'I': if CompareText(TypeName, 'Integer') = 0 then
           Result := VT_INT;
    'L': if CompareText(TypeName, 'LongInt') = 0 then
           Result := VT_I4
         else if CompareText(TypeName, 'LongWord') = 0 then
           Result := VT_UI4;
    'D': if CompareText(TypeName, 'Double') = 0 then
           Result := VT_R8;
    'P': if CompareText(TypeName, 'Pointer') = 0 then
           Result := VT_PTR;
    'T': if CompareText(TypeName, 'TObject') = 0 then
           Result := VT_PTR;
    'W': if CompareText(TypeName, 'Word') = 0 then
           Result := VT_UI2;
  end;
end;

function ComponentPropInfo(Instance: TPersistent; const PropName: string): PPropInfo;
begin
  Result := GetPropInfo(Instance.ClassInfo, PropName);
  if Result = nil then
  begin
    {if Instance is TOCXControl then
      Result := TOCXControl(Instance).GetPropInfo(PropName)
    else if Instance is TOleDispatch then
      Result := TOleDispatch(Instance).GetPropInfo(PropName)
    else if Instance is TDispatchInvoke then
      Result := TDispatchInvoke(Instance).GetPropInfo(PropName)
    else if Instance is TCallMethod then
      Result := TCallMethod(Instance).GetPropInfo(PropName);}
  end;
end;

function ComponentPropList(Instance: TPersistent; TypeKinds: TTypeKinds; PropList: PPropList): Integer;
begin
  Result := GetPropList(Instance.ClassInfo, TypeKinds, PropList);
  {if Instance is TOCXControl then
  begin
    Result := TOCXControl(Instance).GetPropList(TypeKinds, Result, PropList);
    if (PropList <> nil) and (Result > 1) then
      SortPropList(PropList, Result);
  end
  else if Instance is TOleDispatch then
  begin
    Result := TOleDispatch(Instance).GetPropList(TypeKinds, Result, PropList);
    if (PropList <> nil) and (Result > 1) then
      SortPropList(PropList, Result);
  end
  else if Instance is TDispatchInvoke then
  begin
    Result := TDispatchInvoke(Instance).GetPropList(TypeKinds, Result, PropList);
    if (PropList <> nil) and (Result > 1) then
      SortPropList(PropList, Result);
  end
  else if Instance is TCallMethod then
  begin
    Result := TCallMethod(Instance).GetPropList(TypeKinds, Result, PropList);
    if (PropList <> nil) and (Result > 1) then
      SortPropList(PropList, Result);
  end;}
end;

function UTF8Compare(const Str1, Str2: ShortString): Integer;
var
  LStr1, LStr2: array[0..511] of WideChar;
begin
  UTF8ToUnicode(LStr1, Length(LStr1), PAnsiChar(@Str1[1]), Length(Str1));
  UTF8ToUnicode(LStr2, Length(LStr2), PAnsiChar(@Str2[1]), Length(Str2));
  Result := AnsiStrIComp(LStr1, LStr2);
end;

procedure SortPropList(PropList: PPropList; PropCount: Integer);
//{$IFDEF PUREPASCAL}
  function Compare(const L, R: ShortString): Integer;
  var
    I, Max: Integer;
  begin
    if Length(L) <= Length(R) then
      Max := Length(L)
    else
      Max := Length(R);
    for I := 1 to Max do
    begin
      if (Byte(L[I]) and $80) or (Byte(R[I]) and $80) <> 0 then
        Exit(UTF8Compare(L,R));
      Result := (Byte(L[I]) and $DF) - (Byte(R[I]) and $DF);
      if Result <> 0 then Exit;
    end;
    Result := Length(L) - Length(R);
  end;
  procedure QSort(Values: PPropList; L, R: Integer);
  var
    I, J: Integer;
    pivot, temp: PPropInfo;
  begin
    if (R - L) <= 0 then
      Exit;
    repeat
      I := L;
      J := R;
      pivot := Values[L + (R - L) shr 1];
      repeat
        while Compare(Values[I]^.Name, pivot^.Name) < 0 do
          Inc(I);
        while Compare(Values[J]^.Name, pivot^.Name) > 0 do
          Dec(J);
        if I <= J then
        begin
          if I <> J then
          begin
            temp := Values[I];
            Values[I] := Values[J];
            Values[J] := temp;
          end;
          Inc(I);
          Dec(J);
        end;
      until I > J;
      if L < J then
        QSort(Values, L, J);
      L := I;
    until I >= R;
  end;
begin
  if PropCount = 0 then Exit;
  QSort(PropList, 0, PropCount-1);
end;

(*
{$ELSE !PUREPASCAL}
asm //StackAligned
        { ->    EAX Pointer to prop list        }
        {       EDX Property count              }
        { <-    nothing                         }

        PUSH    EBX
        PUSH    ESI
        PUSH    EDI
        MOV     ECX,EAX
        XOR     EAX,EAX
        DEC     EDX
        CALL    @@qsort
        POP     EDI
        POP     ESI
        POP     EBX
        JMP     @@exit

@@qsort:
        PUSH    EAX
        PUSH    EDX
        LEA     EDI,[EAX+EDX]           { pivot := (left + right) div 2 }
        SHR     EDI,1
        MOV     EDI,[ECX+EDI*4]
        ADD     EDI,OFFSET TPropInfo.Name
@@repeat:                               { repeat                        }
@@while1:
        CALL    @@compare               { while a[i] < a[pivot] do inc(i);}
        JAE     @@endWhile1
        INC     EAX
        JMP     @@while1
@@endWhile1:
        XCHG    EAX,EDX
@@while2:
        CALL    @@compare               { while a[j] > a[pivot] do dec(j);}
        JBE     @@endWhile2
        DEC     EAX
        JMP     @@while2
@@endWhile2:
        XCHG    EAX,EDX
        CMP     EAX,EDX                 { if i <= j then begin          }
        JG      @@endRepeat
        MOV     EBX,[ECX+EAX*4]         { x := a[i];                    }
        MOV     ESI,[ECX+EDX*4]         { y := a[j];                    }
        MOV     [ECX+EDX*4],EBX         { a[j] := x;                    }
        MOV     [ECX+EAX*4],ESI         { a[i] := y;                    }
        INC     EAX                     { inc(i);                       }
        DEC     EDX                     { dec(j);                       }
                                        { end;                          }
        CMP     EAX,EDX                 { until i > j;                  }
        JLE     @@repeat

@@endRepeat:
        POP     ESI
        POP     EBX

        CMP     EAX,ESI
        JL      @@rightNonEmpty         { if i >= right then begin      }
        CMP     EDX,EBX
        JG      @@leftNonEmpty1         { if j <= left then exit        }
        RET

@@leftNonEmpty1:
        MOV     EAX,EBX
        JMP     @@qsort                 { qsort(left, j)                }

@@rightNonEmpty:
        CMP     EAX,EBX
        JG      @@leftNonEmpty2
        MOV     EDX,ESI                 { qsort(i, right)               }
        JMP     @@qsort
@@leftNonEmpty2:
        PUSH    EAX
        PUSH    ESI
        MOV     EAX,EBX
        CALL    @@qsort                 { qsort(left, j)                }
        POP     EDX
        POP     EAX
        JMP     @@qsort                 { qsort(i, right)               }

@@compare:
        PUSH    EAX
        PUSH    EDI
        MOV     ESI,[ECX+EAX*4]
        ADD     ESI,OFFSET TPropInfo.Name
        PUSH    ESI
        XOR     EBX,EBX
        MOV     BL,[ESI]
        INC     ESI
        CMP     BL,[EDI]
        JBE     @@firstLenSmaller
        MOV     BL,[EDI]
@@firstLenSmaller:
        INC     EDI
        TEST    BL,BL
        JE      @@endLoop
@@loop:
        MOV     AL,[ESI]
        MOV     AH,[EDI]
        TEST    EAX,$8080
        JNZ     @@CompareUTF8
        AND     EAX,$DFDF
        CMP     AL,AH
        JNE     @@difference

@@NoDiff:
        INC     ESI
        INC     EDI
        DEC     EBX
        JNZ     @@loop
@@endLoop:
        POP     ESI
        POP     EDI
        MOV     AL,[ESI]
        MOV     AH,[EDI]
        CMP     AL,AH
        POP     EAX
        RET
@@difference:
        POP     ESI
        POP     EDI
        POP     EAX
        RET

@@CompareUTF8:
        POP     ESI
        POP     EDI
        PUSH    ECX
        PUSH    EDX
        MOV     EAX,ESI
        MOV     EDX,EDI
{$IFDEF ALIGN_STACK}
        SUB     ESP,4
{$ENDIF ALIGN_STACK}
        CALL    UTF8Compare
{$IFDEF ALIGN_STACK}
        ADD     ESP,4
{$ENDIF ALIGN_STACK}
        POP     EDX
        POP     ECX
        TEST    EAX, EAX
        POP     EAX
        RET
@@exit:
end;
{$ENDIF !PUREPASCAL}
*)

{ ### ProcParams functions ### }
function GetProcParams(TypeData: PTypeData; var ProcParams: TProcParams;
  var ResultType: ShortString): Integer;
var
  I, J, K: Integer;
  L      : Byte;
begin
  Result := TypeData.ParamCount;
  J := 0;
  if Result > 0 then
    for I := 0 to Result - 1 do
    begin
      ProcParams[I].Flags := TParamFlags(TypeData.ParamList[J]);
      Inc(J);
      L := Ord(TypeData.ParamList[J]);
      SetLength(ProcParams[I].ParamName, L);
      Inc(J);
      for K := 1 to L do
      begin
        ProcParams[I].ParamName[K] := TypeData.ParamList[J];
        Inc(J);
      end;
      L := Ord(TypeData.ParamList[J]);
      SetLength(ProcParams[I].TypeName, L);
      Inc(J);
      for K := 1 to L do
      begin
        ProcParams[I].TypeName[K] := TypeData.ParamList[J];
        Inc(J);
      end;
    end;
  if TypeData.MethodKind = mkFunction then
  begin
    L := Ord(TypeData.ParamList[J]);
    SetLength(ResultType, L);
    Inc(J);
    for K := 1 to L do
    begin
      ResultType[K] := TypeData.ParamList[J];
      Inc(J);
    end;
  end
  else
    ResultType := '';
end;

procedure SetProcParams(TypeData: PTypeData; ProcParams: TProcParams);
var
  I, J, K: Integer;
  L      : Byte;
begin
  J := 0;
  for I := 0 to TypeData.ParamCount - 1 do
  begin
    TypeData.ParamList[J] := AnsiChar(ProcParams[I].Flags);
    Inc(J);
    L := Length(ProcParams[I].ParamName);
    TypeData.ParamList[J] := AnsiChar(L);
    Inc(J);
    for K := 1 to L do
    begin
      TypeData.ParamList[J] := ProcParams[I].ParamName[K];
      Inc(J);
    end;
    L := Length(ProcParams[I].TypeName);
    TypeData.ParamList[J] := AnsiChar(L);
    Inc(J);
    for K := 1 to L do
    begin
      TypeData.ParamList[J] := ProcParams[I].TypeName[K];
      Inc(J);
    end;
  end;
end;

function ProcParamsToStr(TypeData: PTypeData; var ResultType: ShortString): String;
var
  I          : Integer;
  ProcParams : TProcParams;
  IsEqualType: Boolean;
begin
  Result := '';
  SetLength(ProcParams, TypeData.ParamCount);
  try
    GetProcParams(TypeData, ProcParams, ResultType);
    IsEqualType := False;
    for I := 0 to TypeData.ParamCount - 1 do
    begin
      if IsEqualType then
        IsEqualType := False
      else
      begin
        if pfConst in ProcParams[I].Flags then
          Result := Result + 'const ';
        if pfVar in ProcParams[I].Flags then
          Result := Result + 'var ';
      end;
      Result := Result + ProcParams[I].ParamName;
      if I <> TypeData.ParamCount - 1 then
      begin
        if (ProcParams[I].Flags = ProcParams[I+1].Flags) and
           (CompareText(ProcParams[I].TypeName, ProcParams[I+1].TypeName) = 0) then
        begin
          Result := Result + ', ';
          IsEqualType := True;
        end
        else
          Result := Result + Concat(': ', ProcParams[I].TypeName, '; ');
      end
      else
        Result := Result + Concat(': ', ProcParams[I].TypeName);
    end;
  finally
    ProcParams := nil;
  end;
end;

{ ### TTypeInfos ### }
constructor TTypeInfos.Create;
begin
  inherited Create;
  FTypeInfos := nil;
end;

destructor TTypeInfos.Destroy;
var
  I: Integer;
begin
  if FTypeInfos <> nil then
  begin
    for I := 0 to High(FTypeInfos) do
    begin
      FreeMem(FTypeInfos[I]^);
      FreeMem(FTypeInfos[I], SizeOf(PTypeInfo));
    end;
    FTypeInfos := nil;
  end;
  inherited Destroy;
end;

function TTypeInfos.GetPTypeInfo(const Kind: TypInfo.TTypeKind; const Name: ShortString): PPTypeInfo;
var
  I, L     : Integer;
  TypeInfo : PPTypeInfo;
begin
  if FTypeInfos <> nil then
    for I := 0 to High(FTypeInfos) do
    begin
      TypeInfo := FTypeInfos[I];
      if (TypeInfo^.Kind = Kind) and (CompareText(TypeInfo^.Name, Name) = 0) then
      begin
        Result := FTypeInfos[I];
        Exit;
      end;
    end;
  GetMem(TypeInfo, SizeOf(PTypeInfo));
  GetMem(TypeInfo^, SizeOf(TypInfo.TTypeKind) + Length(Name) + SizeOf(TTypeData));
  TypeInfo^.Kind := Kind;
  TypeInfo^.Name := Name;
  if FTypeInfos <> nil then
  begin
    L := Length(FTypeInfos);
    Inc(L);
  end
  else
    L := 1;
  SetLength(FTypeInfos, L);
  FTypeInfos[L - 1] := TypeInfo;
  Result := FTypeInfos[L - 1];
end;

function TTypeInfos.FindPTypeInfo(const Kind: TypInfo.TTypeKind; TypeData: PTypeData): PPtypeInfo;
var
  I       : Integer;
  VarTD   : PTypeData;
  TypeInfo: PPTypeInfo;
begin
  Result := nil;
  if FTypeInfos <> nil then
    for I := 0 to High(FTypeInfos) do
    begin
      TypeInfo := FTypeInfos[I];
      if TypeInfo^.Kind = Kind then
      begin
        VarTD := GetTypeData(TypeInfo^);
        if (VarTD.ParamCount = TypeData.ParamCount) and
           (VarTD.ParamList = TypeData.ParamList) then
        begin
          Result := FTypeInfos[I];
          Exit;
        end;
      end;
    end;
end;

{ ### TMethods ### }
constructor TMethods.Create;
begin
  inherited Create;
  FMethods := nil;
end;

destructor TMethods.Destroy;
var
  I: Integer;
begin
  if FMethods <> nil then
  begin
    for I := 0 to High(FMethods) do
    begin
      FreeMem(FMethods[I].EventTypeInfo, SizeOf(PTypeInfo));
    end;
    FMethods := nil;
  end;
  inherited Destroy;
end;

function TMethods.AddMethod(const EventTypeInfo: PTypeInfo; const MethodClass: TComponentClass): Boolean;
var
  TypeInfo: PPTypeInfo;
  I, L    : Integer;
begin
  Result := False;
  if FMethods <> nil then
  begin
    for I := 0 to High(FMethods) do
      if FMethods[I].EventTypeInfo^ = EventTypeInfo then
        Exit;
    L := Length(FMethods);
    Inc(L);
  end
  else
    L := 1;
  SetLength(FMethods, L);
  GetMem(TypeInfo, SizeOf(PTypeInfo));
  TypeInfo^ := EventTypeInfo;
  FMethods[L-1].EventTypeInfo := TypeInfo;
  FMethods[L-1].MethodClass := MethodClass;
  Result := True;
end;

function TMethods.GetPTypeInfo(const EventTypeInfo: PTypeInfo): PPTypeInfo;
var
  I: Integer;
begin
  Result := nil;
  if FMethods <> nil then
    for I := 0 to High(FMethods) do
      if FMethods[I].EventTypeInfo^ = EventTypeInfo then
      begin
        Result := FMethods[I].EventTypeInfo;
        Exit;
      end;
end;

function TMethods.GetPTypeInfo(const MethodClass: TComponentClass): PPTypeInfo;
var
  I: Integer;
begin
  Result := nil;
  if FMethods <> nil then
    for I := 0 to High(FMethods) do
      if FMethods[I].MethodClass = MethodClass then
      begin
        Result := FMethods[I].EventTypeInfo;
        Exit;
      end;
end;

function TMethods.GetPTypeInfo(const ClassName: String): PPTypeInfo;
var
  I: Integer;
begin
  Result := nil;
  if FMethods <> nil then
    for I := 0 to High(FMethods) do
      if CompareText(FMethods[I].EventTypeInfo^.Name, ClassName) = 0 then
      begin
        Result := FMethods[I].EventTypeInfo;
        Exit;
      end;
end;

function TMethods.GetPTypeInfo(const Kind: TypInfo.TTypeKind; const TypeData: PTypeData): PPTypeInfo;
var
  I       : Integer;
  VarTD   : PTypeData;
  TypeInfo: PTypeInfo;
begin
  Result := nil;
  if (Kind = tkMethod) and (FMethods <> nil) then
    for I := 0 to High(FMethods) do
    begin
      TypeInfo := FMethods[I].EventTypeInfo^;
      VarTD := GetTypeData(TypeInfo);
      if (TypeData <> nil) and
         (VarTD.ParamCount = TypeData.ParamCount) and
         (VarTD.ParamList = TypeData.ParamList) then
      begin
        Result := FMethods[I].EventTypeInfo;
        Exit;
      end;
    end;
end;

function TMethods.GetMethodClass(const EventTypeInfo: PTypeInfo): TComponentClass;
var
  I: Integer;
begin
  Result := nil;
  if FMethods <> nil then
    for I := 0 to High(FMethods) do
      if FMethods[I].EventTypeInfo^ = EventTypeInfo then
      begin
        Result := FMethods[I].MethodClass;
        Exit;
      end;
end;

initialization
  TypeInfos := TTypeInfos.Create;
  Methods := TMethods.Create;
  //Methods.AddMethod(TypeInfo(TNotifyEvent), TNotifyProc);
  //Methods.AddMethod(TypeInfo(TMeasureEvent), TMeasureProc);
  //Methods.AddMethod(TypeInfo(TKeyEvent), TKeyEventProc);
  //Methods.AddMethod(TypeInfo(TKeyPressEvent), TKeyPressEventProc);
  //Methods.AddMethod(TypeInfo(TMouseEvent), TMouseEventProc);
  //Methods.AddMethod(TypeInfo(TMouseMoveEvent), TMouseMoveEventProc);
  WideStringTI := TypeInfo(WideString);
  StringTI := TypeInfo(String);
  WordBoolTI := TypeInfo(WordBool);
  BooleanTI := TypeInfo(Boolean);
  CharTI := TypeInfo(Char);
  ByteTI := TypeInfo(Byte);
  WordTI := TypeInfo(Word);
  LongWordTI := TypeInfo(LongWord);
  LongIntTI := TypeInfo(LongInt);
  IntegerTI := TypeInfo(Integer);
  SmallIntTI := TypeInfo(SmallInt);
  OleEnumTI := TypeInfo(TOleEnum);
  SingleTI := TypeInfo(Single);
  DoubleTI := TypeInfo(Double);
  OleVariantTI := TypeInfo(OleVariant);
  ColorTI := TypeInfo(TColor);
  FontTI := TypeInfo(TFont);
  PictureTI := TypeInfo(TPicture);
  //DispatchTI := TypeInfo(TOleDispatch);
finalization
  FreeAndNil(Methods);
  FreeAndNil(TypeInfos);
end.
