{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit tb2k;

{$warn 5023 off : no warning about unused units}
interface

uses
  TB2Acc, TB2Anim, TB2Common, TB2Consts, TB2Dock, TB2ExtItems, TB2Hook, 
  TB2Item, TB2MDI, TB2MRU, TB2Toolbar, TB2ToolWindow, TB2Version, 
  LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('tb2k', @Register);
end.
