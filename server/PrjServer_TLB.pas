unit PrjServer_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 17/06/2016 15:38:21 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\criare\Documents\Embarcadero\Studio\Projects\Nova pasta (30)\server\PrjServer (1)
// LIBID: {BF15AC6C-A4C5-48FE-BEA2-725313E66100}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (midas.dll)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, Midas, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PrjServerMajorVersion = 1;
  PrjServerMinorVersion = 0;

  LIBID_PrjServer: TGUID = '{BF15AC6C-A4C5-48FE-BEA2-725313E66100}';

  IID_IRDCliente: TGUID = '{507302C7-7C28-40D7-B00D-EC6B7221766A}';
  CLASS_RDCliente: TGUID = '{A431C441-862C-40F0-A534-24E79111D627}';
  IID_IRDProduto: TGUID = '{0BDD56FE-883C-4D6B-A206-47CCB962A99F}';
  CLASS_RDProduto: TGUID = '{E87AD741-C413-4103-9E51-0A6820A82DD3}';
  IID_Irdteste: TGUID = '{CEFA4796-763D-45C2-94C7-885112EA791C}';
  CLASS_rdteste: TGUID = '{B9DB9F93-028F-4FF9-BE4D-9D3EEEB5F032}';
  IID_Irdtttt: TGUID = '{A3AC8F10-2D54-433F-B00C-13D5D3977D3D}';
  CLASS_rdtttt: TGUID = '{F2702F23-D43F-402B-BCFC-005F750522D5}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IRDCliente = interface;
  IRDClienteDisp = dispinterface;
  IRDProduto = interface;
  IRDProdutoDisp = dispinterface;
  Irdteste = interface;
  IrdtesteDisp = dispinterface;
  Irdtttt = interface;
  IrdttttDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  RDCliente = IRDCliente;
  RDProduto = IRDProduto;
  rdteste = Irdteste;
  rdtttt = Irdtttt;


// *********************************************************************//
// Interface: IRDCliente
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {507302C7-7C28-40D7-B00D-EC6B7221766A}
// *********************************************************************//
  IRDCliente = interface(IAppServer)
    ['{507302C7-7C28-40D7-B00D-EC6B7221766A}']
  end;

// *********************************************************************//
// DispIntf:  IRDClienteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {507302C7-7C28-40D7-B00D-EC6B7221766A}
// *********************************************************************//
  IRDClienteDisp = dispinterface
    ['{507302C7-7C28-40D7-B00D-EC6B7221766A}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: IRDProduto
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0BDD56FE-883C-4D6B-A206-47CCB962A99F}
// *********************************************************************//
  IRDProduto = interface(IAppServer)
    ['{0BDD56FE-883C-4D6B-A206-47CCB962A99F}']
  end;

// *********************************************************************//
// DispIntf:  IRDProdutoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0BDD56FE-883C-4D6B-A206-47CCB962A99F}
// *********************************************************************//
  IRDProdutoDisp = dispinterface
    ['{0BDD56FE-883C-4D6B-A206-47CCB962A99F}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: Irdteste
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEFA4796-763D-45C2-94C7-885112EA791C}
// *********************************************************************//
  Irdteste = interface(IAppServer)
    ['{CEFA4796-763D-45C2-94C7-885112EA791C}']
  end;

// *********************************************************************//
// DispIntf:  IrdtesteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CEFA4796-763D-45C2-94C7-885112EA791C}
// *********************************************************************//
  IrdtesteDisp = dispinterface
    ['{CEFA4796-763D-45C2-94C7-885112EA791C}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// Interface: Irdtttt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3AC8F10-2D54-433F-B00C-13D5D3977D3D}
// *********************************************************************//
  Irdtttt = interface(IAppServer)
    ['{A3AC8F10-2D54-433F-B00C-13D5D3977D3D}']
  end;

// *********************************************************************//
// DispIntf:  IrdttttDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A3AC8F10-2D54-433F-B00C-13D5D3977D3D}
// *********************************************************************//
  IrdttttDisp = dispinterface
    ['{A3AC8F10-2D54-433F-B00C-13D5D3977D3D}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: SYSINT;
                             out ErrorCount: SYSINT; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: SYSINT; out RecsOut: SYSINT;
                           Options: SYSINT; const CommandText: WideString; var Params: OleVariant;
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: SYSINT;
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString;
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoRDCliente provides a Create and CreateRemote method to
// create instances of the default interface IRDCliente exposed by
// the CoClass RDCliente. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRDCliente = class
    class function Create: IRDCliente;
    class function CreateRemote(const MachineName: string): IRDCliente;
  end;

// *********************************************************************//
// The Class CoRDProduto provides a Create and CreateRemote method to
// create instances of the default interface IRDProduto exposed by
// the CoClass RDProduto. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRDProduto = class
    class function Create: IRDProduto;
    class function CreateRemote(const MachineName: string): IRDProduto;
  end;

// *********************************************************************//
// The Class Cordteste provides a Create and CreateRemote method to
// create instances of the default interface Irdteste exposed by
// the CoClass rdteste. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  Cordteste = class
    class function Create: Irdteste;
    class function CreateRemote(const MachineName: string): Irdteste;
  end;

// *********************************************************************//
// The Class Cordtttt provides a Create and CreateRemote method to
// create instances of the default interface Irdtttt exposed by
// the CoClass rdtttt. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  Cordtttt = class
    class function Create: Irdtttt;
    class function CreateRemote(const MachineName: string): Irdtttt;
  end;

implementation

uses System.Win.ComObj;

class function CoRDCliente.Create: IRDCliente;
begin
  Result := CreateComObject(CLASS_RDCliente) as IRDCliente;
end;

class function CoRDCliente.CreateRemote(const MachineName: string): IRDCliente;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RDCliente) as IRDCliente;
end;

class function CoRDProduto.Create: IRDProduto;
begin
  Result := CreateComObject(CLASS_RDProduto) as IRDProduto;
end;

class function CoRDProduto.CreateRemote(const MachineName: string): IRDProduto;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RDProduto) as IRDProduto;
end;

class function Cordteste.Create: Irdteste;
begin
  Result := CreateComObject(CLASS_rdteste) as Irdteste;
end;

class function Cordteste.CreateRemote(const MachineName: string): Irdteste;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_rdteste) as Irdteste;
end;

class function Cordtttt.Create: Irdtttt;
begin
  Result := CreateComObject(CLASS_rdtttt) as Irdtttt;
end;

class function Cordtttt.CreateRemote(const MachineName: string): Irdtttt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_rdtttt) as Irdtttt;
end;

end.

