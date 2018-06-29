# README

tb2k to Lazarus v1.8.4

## Delphi versions

See: https://en.wikipedia.org/wiki/Delphi_(IDE)

- Borland Delphi
- Borland Delphi 2
- Borland Delphi 3
- Inprise Delphi 4
- Borland Delphi 5
- Kylix
- Borland Delphi 6
- Borland Delphi 7
- Later Borland years (2003–2008)
- Borland Delphi 8
- Borland Delphi 2005
- Borland Delphi 2006
- Turbo Delphi and Turbo Delphi for .NET
- Codegear Delphi 2007
- Delphi for PHP
- Embarcadero years (2008–)
- CodeGear Delphi 2009
- Embarcadero Delphi 2010
- Embarcadero Delphi XE
- Delphi Starter Edition
- Embarcadero Delphi XE2
- Embarcadero Delphi XE3
- Embarcadero Delphi XE4
- Embarcadero Delphi XE5
- Embarcadero Delphi XE6
- Embarcadero Delphi XE7
- Embarcadero Delphi XE8
- Embarcadero Delphi 10 Seattle
- Embarcadero Delphi 10.1 Berlin
- Embarcadero Delphi 10.2 Tokyo

## Useful compiler variables / defines / macros

Like `{$IFDEF LCL}`

See: http://wiki.freepascal.org/Code_Conversion_Guide#Useful_compiler_variables_.2F_defines_.2F_macros

## Compiler directives

Like `{$IFDEF}`

See: https://www.freepascal.org/docs-html/prog/prog.html#QQ2-5-4

## Replacements

DestroyWindowHandle → DestroyHandle

PtInRect(R, P) → R.Contains(P)

TCreateParams 
uses LCLType

HookProcList.List[I]
HookProcList[I]

CWPStruct.hwnd
CWPStruct^.hwnd

HookProcs[htCallWndProc] := CallWndProcHook;
HookProcs[htCallWndProc] := @CallWndProcHook;

Msg: TMsg;
Msg: Windows.TMsg;

### TB2Dock.pas(920,35) Error: Wrong number of parameters specified for call to "BackgroundChanged"
FBackground.UnregisterChanges(BackgroundChanged);
FBackground.UnregisterChanges(@BackgroundChanged);

### TB2Dock.pas(1787,39) Error: Illegal qualifier
ApplyToRect(Message.CalcSize_Params.rgrc[0]);
ApplyToRect(Message.CalcSize_Params^.rgrc[0]);

### TB2Dock.pas(2350,62) Error: Identifier not found "TWMNCRButtonUp"
procedure TTBFloatingWindowParent.WMNCRButtonUp(var Message: TWMNCRButtonUp);
procedure TTBFloatingWindowParent.WMNCRButtonUp(var Message: TWMNCLButtonUp);

### TB2Dock.pas(2373,3) Error: Duplicate identifier "ParentForm"
ParentForm: TTBCustomForm;
AParentForm: TTBCustomForm;

### TObjectList → uses contnrs

### TB2Dock.pas(4258,38) Error: Call by var for arg no. 1 has to match exactly: Got "tagMSG" expected "MSG"
case Integer(GetMessage(Msg, 0, 0, 0)) of

Msg: TMsg;
Msg: Windows.TMsg;

### TB2Dock.pas(5234,20) Error: identifier idents no member "Dormant"
FBitmap.Dormant;
FBitmap.Destroy;
