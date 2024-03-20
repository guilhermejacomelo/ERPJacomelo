unit Service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.Client, System.IniFiles, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    FBDriverLink: TFDPhysFBDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile : TIniFIle;
  LDatabase : string;
  LUser_Name : string;
  LPassword : string;
  LServidor : string;
  LPorta : Integer;
  LCaminho : string;
begin
  try


    LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini';

    LIniFile := TIniFile.Create(LCaminho);

    LDatabase := LIniFile.ReadString('Conexao', 'Database', LDatabase);
    LServidor := LIniFile.ReadString('Conexao', 'Servidor', LServidor);
    LPorta := LIniFile.ReadInteger('Conexao', 'Porta', LPorta);

    LUser_Name := 'SYSDBA';
    LPassword := 'masterkey';

    FDConn.Params.Values['Database'] := LDatabase;
    FDConn.Params.Values['User_Name'] := LUser_Name;
    FDConn.Params.Values['Passoword'] := LPassword;
    FDConn.Params.Values['Server'] := LServidor;
    FDConn.Params.Values['Port'] := LPorta.ToString;


  finally
    FreeAndNil(LIniFile);
  end;

  QRY_filial.Close;
  QRY_filial.Params[0].AsInteger := 1;
  QRY_filial.Open();

  iCOD_FILIAL := QRY_filialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;

end;

end.
