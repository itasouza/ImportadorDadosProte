unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, ADODB, DBClient, Provider;

type
  TfrmPrincipal = class(TForm)
    Panel5: TPanel;
    Panel7: TPanel;
    ADOConn: TADOConnection;
    sqlCADCLI: TADOQuery;
    sqlCADCLICODCLI: TSmallintField;
    sqlCADCLITIPCLI: TStringField;
    sqlCADCLIFISJUR: TStringField;
    sqlCADCLINOMCLI: TStringField;
    sqlCADCLIABVCLI: TStringField;
    sqlCADCLIENDCLI: TStringField;
    sqlCADCLICIDCLI: TStringField;
    sqlCADCLICODMUN: TStringField;
    sqlCADCLIBAICLI: TStringField;
    sqlCADCLIESTCLI: TStringField;
    sqlCADCLICEPCLI: TStringField;
    sqlCADCLIFONCLI: TStringField;
    sqlCADCLIMAICLI: TStringField;
    sqlCADCLIENDCCLI: TStringField;
    sqlCADCLICIDCCLI: TStringField;
    sqlCADCLIBAICCLI: TStringField;
    sqlCADCLIESTCCLI: TStringField;
    sqlCADCLICEPCCLI: TStringField;
    sqlCADCLIFONCCLI: TStringField;
    sqlCADCLIFAXCLI: TStringField;
    sqlCADCLIFAXCCLI: TStringField;
    sqlCADCLICGCCLI: TStringField;
    sqlCADCLIINSCLI: TStringField;
    sqlCADCLISUFRACLI: TStringField;
    sqlCADCLIICMCLI: TStringField;
    sqlCADCLICONCECLI: TStringField;
    sqlCADCLIDT1ACLI: TDateField;
    sqlCADCLIDTULTCLI: TDateField;
    sqlCADCLIVLULTCLI: TFloatField;
    sqlCADCLIDTACUCLI: TDateField;
    sqlCADCLIVLACUCLI: TFloatField;
    sqlCADCLILIMITCLI: TFloatField;
    sqlCADCLIABERTCLI: TFloatField;
    sqlCADCLICODVEN: TSmallintField;
    sqlCADCLIENDENT: TStringField;
    sqlCADCLICIDENT: TStringField;
    sqlCADCLIESTENT: TStringField;
    sqlCADCLINUNOTA: TFloatField;
    sqlCADCLIULTMOV: TDateField;
    sqlCADCLIVALUCO: TFloatField;
    sqlCADCLIICMSCLI: TSmallintField;
    sqlCADCLIVAZIO: TBooleanField;
    sqlCADFOR: TADOQuery;
    sqlCADFORCODFOR: TSmallintField;
    sqlCADFORNOMFOR: TStringField;
    sqlCADFORABVFOR: TStringField;
    sqlCADFORENDFOR: TStringField;
    sqlCADFORBAIFOR: TStringField;
    sqlCADFORCIDFOR: TStringField;
    sqlCADFORESTFOR: TStringField;
    sqlCADFORCEPFOR: TStringField;
    sqlCADFORFONFOR: TStringField;
    sqlCADFORTEXFOR: TStringField;
    sqlCADFORCGCFOR: TStringField;
    sqlCADFORINSFOR: TStringField;
    sqlCADFORFAXFOR: TStringField;
    sqlCADFORNOMREP: TStringField;
    sqlCADFORENDREP: TStringField;
    sqlCADFORBAIREP: TStringField;
    sqlCADFORCIDREP: TStringField;
    sqlCADFORESTREP: TStringField;
    sqlCADFORCEPREP: TStringField;
    sqlCADFORFONREP: TStringField;
    sqlCADFORFAXREP: TStringField;
    sqlCADFORTEXREP: TStringField;
    sqlCADFORPRIMOV: TDateField;
    sqlCADFORULTMOV: TDateField;
    sqlCADFORVALMOV: TFloatField;
    sqlCADFORNUNOTA: TFloatField;
    sqlCADFORICMFOR: TStringField;
    sqlCADFORENDCFOR: TStringField;
    sqlCADFORCIDCFOR: TStringField;
    sqlCADFORESTCFOR: TStringField;
    sqlCADFORBAICFOR: TStringField;
    sqlCADFORCEPCFOR: TStringField;
    sqlCADFORFONCFOR: TStringField;
    sqlCADFORFAXCFOR: TStringField;
    sqlCADFORENDEFOR: TStringField;
    sqlCADFORCIDEFOR: TStringField;
    sqlCADFORESTEFOR: TStringField;
    sqlCADFORVAZIO: TBooleanField;
    sqlCADPAG: TADOQuery;
    sqlCADREC: TADOQuery;
    dspCADCLI: TDataSetProvider;
    cdsCADCLI: TClientDataSet;
    dspCADFOR: TDataSetProvider;
    dspCADPAG: TDataSetProvider;
    dspCADREC: TDataSetProvider;
    cdsCADFOR: TClientDataSet;
    cdsCADPAG: TClientDataSet;
    cdsCADREC: TClientDataSet;
    spCliente: TSpeedButton;
    spFornecedor: TSpeedButton;
    spFinanceiroPagar: TSpeedButton;
    sqlGenerico: TADOQuery;
    cdsGenerico: TClientDataSet;
    dspGenerico: TDataSetProvider;
    cdsCADCLICODCLI: TSmallintField;
    cdsCADCLITIPCLI: TStringField;
    cdsCADCLIFISJUR: TStringField;
    cdsCADCLINOMCLI: TStringField;
    cdsCADCLIABVCLI: TStringField;
    cdsCADCLIENDCLI: TStringField;
    cdsCADCLICIDCLI: TStringField;
    cdsCADCLICODMUN: TStringField;
    cdsCADCLIBAICLI: TStringField;
    cdsCADCLIESTCLI: TStringField;
    cdsCADCLICEPCLI: TStringField;
    cdsCADCLIFONCLI: TStringField;
    cdsCADCLIMAICLI: TStringField;
    cdsCADCLIENDCCLI: TStringField;
    cdsCADCLICIDCCLI: TStringField;
    cdsCADCLIBAICCLI: TStringField;
    cdsCADCLIESTCCLI: TStringField;
    cdsCADCLICEPCCLI: TStringField;
    cdsCADCLIFONCCLI: TStringField;
    cdsCADCLIFAXCLI: TStringField;
    cdsCADCLIFAXCCLI: TStringField;
    cdsCADCLICGCCLI: TStringField;
    cdsCADCLIINSCLI: TStringField;
    cdsCADCLISUFRACLI: TStringField;
    cdsCADCLIICMCLI: TStringField;
    cdsCADCLICONCECLI: TStringField;
    cdsCADCLIDT1ACLI: TDateField;
    cdsCADCLIDTULTCLI: TDateField;
    cdsCADCLIVLULTCLI: TFloatField;
    cdsCADCLIDTACUCLI: TDateField;
    cdsCADCLIVLACUCLI: TFloatField;
    cdsCADCLILIMITCLI: TFloatField;
    cdsCADCLIABERTCLI: TFloatField;
    cdsCADCLICODVEN: TSmallintField;
    cdsCADCLIENDENT: TStringField;
    cdsCADCLICIDENT: TStringField;
    cdsCADCLIESTENT: TStringField;
    cdsCADCLINUNOTA: TFloatField;
    cdsCADCLIULTMOV: TDateField;
    cdsCADCLIVALUCO: TFloatField;
    cdsCADCLIICMSCLI: TSmallintField;
    cdsCADCLIVAZIO: TBooleanField;
    ADOConn2: TADOConnection;
    cdsCADFORCODFOR: TSmallintField;
    cdsCADFORNOMFOR: TStringField;
    cdsCADFORABVFOR: TStringField;
    cdsCADFORENDFOR: TStringField;
    cdsCADFORBAIFOR: TStringField;
    cdsCADFORCIDFOR: TStringField;
    cdsCADFORESTFOR: TStringField;
    cdsCADFORCEPFOR: TStringField;
    cdsCADFORFONFOR: TStringField;
    cdsCADFORTEXFOR: TStringField;
    cdsCADFORCGCFOR: TStringField;
    cdsCADFORINSFOR: TStringField;
    cdsCADFORFAXFOR: TStringField;
    cdsCADFORNOMREP: TStringField;
    cdsCADFORENDREP: TStringField;
    cdsCADFORBAIREP: TStringField;
    cdsCADFORCIDREP: TStringField;
    cdsCADFORESTREP: TStringField;
    cdsCADFORCEPREP: TStringField;
    cdsCADFORFONREP: TStringField;
    cdsCADFORFAXREP: TStringField;
    cdsCADFORTEXREP: TStringField;
    cdsCADFORPRIMOV: TDateField;
    cdsCADFORULTMOV: TDateField;
    cdsCADFORVALMOV: TFloatField;
    cdsCADFORNUNOTA: TFloatField;
    cdsCADFORICMFOR: TStringField;
    cdsCADFORENDCFOR: TStringField;
    cdsCADFORCIDCFOR: TStringField;
    cdsCADFORESTCFOR: TStringField;
    cdsCADFORBAICFOR: TStringField;
    cdsCADFORCEPCFOR: TStringField;
    cdsCADFORFONCFOR: TStringField;
    cdsCADFORFAXCFOR: TStringField;
    cdsCADFORENDEFOR: TStringField;
    cdsCADFORCIDEFOR: TStringField;
    cdsCADFORESTEFOR: TStringField;
    cdsCADFORVAZIO: TBooleanField;
    cdsCADPAGFORNEC: TSmallintField;
    cdsCADPAGNOMFOR: TStringField;
    cdsCADPAGPLACON: TStringField;
    cdsCADPAGVENCTO: TDateField;
    cdsCADPAGNTFISC: TStringField;
    cdsCADPAGDUPLIC: TStringField;
    cdsCADPAGDTEMIS: TDateField;
    cdsCADPAGNROBAN: TStringField;
    cdsCADPAGAGCOBR: TStringField;
    cdsCADPAGDTPROR: TDateField;
    cdsCADPAGVALTIT: TFloatField;
    cdsCADPAGVALJUR: TFloatField;
    cdsCADPAGVALREE: TFloatField;
    cdsCADPAGVALTOT: TFloatField;
    cdsCADPAGNUMBCO: TSmallintField;
    cdsCADPAGNUMAGE: TStringField;
    cdsCADPAGNUMCHE: TStringField;
    cdsCADPAGOBSPAG: TStringField;
    cdsCADPAGVAZIO: TBooleanField;
    spFinanceiroReceber: TSpeedButton;
    sqlCadRbt: TADOQuery;
    dspCadRbt: TDataSetProvider;
    cdsCadRbt: TClientDataSet;
    sqlCadPGT: TADOQuery;
    dspCadPGT: TDataSetProvider;
    cdsCadPGT: TClientDataSet;
    spRecebidas: TSpeedButton;
    spPagas: TSpeedButton;
    cdsCadRbtCODCLI: TSmallintField;
    cdsCadRbtNOMCLI: TStringField;
    cdsCadRbtCODPOR: TSmallintField;
    cdsCadRbtPLACON: TStringField;
    cdsCadRbtNOMPOR: TStringField;
    cdsCadRbtVENCTO: TDateField;
    cdsCadRbtDTPGTO: TDateField;
    cdsCadRbtNTFISC: TFloatField;
    cdsCadRbtDUPLIC: TStringField;
    cdsCadRbtDTEMIS: TDateField;
    cdsCadRbtNROBAN: TStringField;
    cdsCadRbtAGCOBR: TStringField;
    cdsCadRbtDTPROR: TDateField;
    cdsCadRbtVALTIT: TFloatField;
    cdsCadRbtVALJUR: TFloatField;
    cdsCadRbtVALREE: TFloatField;
    cdsCadRbtVALCAR: TFloatField;
    cdsCadRbtVALTOT: TFloatField;
    cdsCadRbtVLPGTO: TFloatField;
    cdsCadRbtNUMBCO: TSmallintField;
    cdsCadRbtNUMAGE: TStringField;
    cdsCadRbtNUMCHE: TStringField;
    cdsCadRbtFORPAG: TStringField;
    cdsCadRbtOBSREC: TStringField;
    cdsCadRbtVAZIO: TBooleanField;
    cdsCADRECCODCLI: TSmallintField;
    cdsCADRECNOMCLI: TStringField;
    cdsCADRECCODPOR: TSmallintField;
    cdsCADRECNOMPOR: TStringField;
    cdsCADRECPLACON: TStringField;
    cdsCADRECVENCTO: TDateField;
    cdsCADRECNTFISC: TFloatField;
    cdsCADRECDUPLIC: TStringField;
    cdsCADRECDTEMIS: TDateField;
    cdsCADRECNROBAN: TStringField;
    cdsCADRECAGCOBR: TStringField;
    cdsCADRECDTPROR: TDateField;
    cdsCADRECVALTIT: TFloatField;
    cdsCADRECVALJUR: TFloatField;
    cdsCADRECVALREE: TFloatField;
    cdsCADRECVALCAR: TFloatField;
    cdsCADRECVALTOT: TFloatField;
    cdsCADRECFORPAG: TStringField;
    cdsCADRECNUMBCO: TSmallintField;
    cdsCADRECNUMAGE: TStringField;
    cdsCADRECNUMCHE: TStringField;
    cdsCADRECOBSREC: TStringField;
    cdsCADRECVAZIO: TBooleanField;
    cdsCadPGTFORNEC: TSmallintField;
    cdsCadPGTNOMFOR: TStringField;
    cdsCadPGTPLACON: TStringField;
    cdsCadPGTVENCTO: TDateField;
    cdsCadPGTDTPGTO: TDateField;
    cdsCadPGTNTFISC: TStringField;
    cdsCadPGTDUPLIC: TStringField;
    cdsCadPGTDTEMIS: TDateField;
    cdsCadPGTNROBAN: TStringField;
    cdsCadPGTAGCOBR: TStringField;
    cdsCadPGTDTPROR: TDateField;
    cdsCadPGTVALTIT: TFloatField;
    cdsCadPGTVALJUR: TFloatField;
    cdsCadPGTVALREE: TFloatField;
    cdsCadPGTVALTOT: TFloatField;
    cdsCadPGTVLPGTO: TFloatField;
    cdsCadPGTNUMBCO: TSmallintField;
    cdsCadPGTNUMAGE: TStringField;
    cdsCadPGTNUMCHE: TStringField;
    cdsCadPGTOBSPAG: TStringField;
    cdsCadPGTVAZIO: TBooleanField;
    spProduto: TSpeedButton;
    sqlProduto: TADOQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoCODDIP: TStringField;
    cdsProdutoNOVCOD: TStringField;
    cdsProdutoCODPRO: TSmallintField;
    cdsProdutoDESPEC: TStringField;
    cdsProdutoLOCALP: TFloatField;
    cdsProdutoCLASSI: TStringField;
    cdsProdutoSITTRI: TStringField;
    cdsProdutoCLAFIS: TStringField;
    cdsProdutoALQIPI: TFloatField;
    cdsProdutoESTMIN: TFloatField;
    cdsProdutoESTMAX: TFloatField;
    cdsProdutoPESOLQ: TFloatField;
    cdsProdutoPESOBR: TFloatField;
    cdsProdutoSALEST: TFloatField;
    cdsProdutoDTUCOM: TDateField;
    cdsProdutoPRUCOM: TFloatField;
    cdsProdutoDTUVEN: TDateField;
    cdsProdutoPRUVEN: TFloatField;
    cdsProdutoCUSMED: TFloatField;
    cdsProdutoCUSREP: TFloatField;
    cdsProdutoDATREP: TDateField;
    cdsProdutoCUSDOL: TFloatField;
    cdsProdutoPREVEN: TFloatField;
    cdsProdutoUNIMED: TStringField;
    cdsProdutoVAZIO: TBooleanField;
    sbTransportadora: TSpeedButton;
    sqlTransportadora: TADOQuery;
    dspTransportadora: TDataSetProvider;
    cdsTransportadora: TClientDataSet;
    cdsTransportadoraCODTRA: TSmallintField;
    cdsTransportadoraNOMTRA: TStringField;
    cdsTransportadoraENDTRA: TStringField;
    cdsTransportadoraCIDTRA: TStringField;
    cdsTransportadoraESTTRA: TStringField;
    cdsTransportadoraFONTRA: TStringField;
    cdsTransportadoraFAXTRA: TStringField;
    cdsTransportadoraCGCTRA: TStringField;
    cdsTransportadoraINSTRA: TStringField;
    cdsTransportadoraOBSTRA: TStringField;
    cdsTransportadoraVAZIO: TBooleanField;
    procedure spClienteClick(Sender: TObject);
    procedure spFornecedorClick(Sender: TObject);
    procedure spFinanceiroPagarClick(Sender: TObject);
    procedure spFinanceiroReceberClick(Sender: TObject);
    procedure spRecebidasClick(Sender: TObject);
    procedure spPagasClick(Sender: TObject);
    procedure spProdutoClick(Sender: TObject);
    procedure sbTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

  //troca , por ponto para gravação
Function TrocaVirgPPto(Valor: string): String;
   var i:integer;
Begin
    if Valor <>'' then begin
        for i := 0 to Length(Valor) do begin
            if Valor[i]=',' then Valor[i]:='.';
        end;
     end;
     If (Valor='') then
      Valor := '0';
     Result := valor;
End;


function LimparCaracteres(texto: string): string;
var
   i: Integer;
   TextoSemCaracteres: string;
begin
   for i := Length(texto) downto 1 do
  	if not (texto[i] in ['.','-','/','(',')']) then
     	TextoSemCaracteres := texto[i] + TextoSemCaracteres;
   Result := TextoSemCaracteres;
end;


procedure TfrmPrincipal.spClienteClick(Sender: TObject);
 var
  sqlExecute :String;
  aliquotaicms :String;
  Icms :Double;
  arquivo :TextFile;
  novoarquivo, linha :String;
begin
   cdsCADCLI.Close;
   cdsCADCLI.Open;


    novoarquivo   := 'C:\ImportadorDados\InsertCliente.txt';
    AssignFile(arquivo,novoarquivo);
    Rewrite(arquivo);

   cdsCADCLI.First;
   while not cdsCADCLI.Eof do
   begin

        Icms := 7;
        aliquotaicms := Trim( cdsCADCLIESTCLI.AsString); //estado do cliente

        if aliquotaicms = 'SP' then
         begin
            Icms := 18;
         end;

         if aliquotaicms = 'MG' then
         begin
            Icms := 12;
         end;

         if aliquotaicms = 'PR' then
         begin
            Icms := 12;
         end;

        if aliquotaicms = 'RS' then
         begin
            Icms := 12;
         end;

        if aliquotaicms = 'RJ' then
         begin
            Icms := 12;
         end;

        if aliquotaicms = 'SC' then
         begin
            Icms := 12;
         end;

        sqlExecute  :=
                 'INSERT INTO '+
                   '  TB_CLIENTE_FORNECEDOR '+
                   '  ( '+
                   '   controlerepresentante                  '+
                   '  ,tipodecliente                          '+
                   '  ,nomerepresentante                      '+
                   '  ,controletransportadora                 '+
                   '  ,nometransportadora                     '+
                   '  ,codigocliente                          '+
                   '  ,controlevendedor                       '+
                   '  ,nomevendedor                           '+
                   '  ,nome                                   '+
                   '  ,setor                                  '+
                   '  ,nomefantasia                           '+
                   '  ,tipopessoa                             '+
                   '  ,endereco                               '+
                   '  ,numero                                 '+
                   '  ,complemento                            '+
                   '  ,bairro                                 '+
                   '  ,cidade                                 '+
                   '  ,estado                                 '+
                   '  ,cep                                    '+
                   '  ,codigoibge                             '+
                   '  ,telefone                               '+
                   '  ,celular                                '+
                   '  ,fax                                    '+
                   '  ,email                                  '+
                   '  ,cnpj                                   '+
                   '  ,inscrestadual                          '+
                   '  ,suframa                                '+
                   '  ,observacao                             '+
                   '  ,enderecocobranca                       '+
                   '  ,bairrocobranca                         '+
                   '  ,cidadecobranca                         '+
                   '  ,estadocobranca                         '+
                   '  ,cepcobranca                            '+
                   '  ,fonecobranca                           '+
                   '  ,faxcobranca                            '+
                   '  ,emeilcobranca                          '+
                   '  ,emailnfe                               '+
                   '  ,enderecoentrega                        '+
                   '  ,limitedecredito                        '+
                   '  ,calculaicms                            '+
                   '  ,aliquotaicms                           '+
                   '  ,clienteoufornecedor                    '+
                   '  ,controlefuncionario                    '+
                   '  ,nomefuncionario                        '+
                   '  ,status                                 '+
                   '  ,marca                                  '+
                   '  ,data_inc                               '+
                   '  ,data_hab                               '+
                   '  ,desconto                               '+
                   '  ,contato                                '+
                   ' ) '+
                   ' VALUES ( '+
                   '   ' + QuotedStr('')+ //controle representante
                       ' , ' + QuotedStr(cdsCADCLITIPCLI.AsString) + // tipo de cliente
                    ' , ' + QuotedStr('')+ //nome representante
                    ' , ' + QuotedStr('')+ //controle transportadora
                    ' , ' + QuotedStr('')+ //nome transportadora
                    ' , ' + QuotedStr(cdsCADCLICODCLI.AsString)+ //codigo do cliente
                    ' , ' + QuotedStr('')+ //controle do vendedor
                    ' , ' + QuotedStr('')+ //nome do vendedor
                    ' , ' + QuotedStr(cdsCADCLINOMCLI.AsString)+ //nome
                    ' , ' + QuotedStr('')+ //setor
                    ' , ' + QuotedStr(cdsCADCLIABVCLI.AsString)+ //nome fantasia
                    ' , ' + QuotedStr(cdsCADCLIFISJUR.AsString)+ //tipo pessoa
                    ' , ' + QuotedStr(cdsCADCLIENDCLI.AsString)+ //endereço
                    ' , ' + QuotedStr('')+ //número do cliente
                    ' , ' + QuotedStr('')+ //complemento do cliente
                    ' , ' + QuotedStr(cdsCADCLIBAICLI.AsString)+ //bairro do cliente
                    ' , ' + QuotedStr(cdsCADCLICIDCLI.AsString)+ //cidade do cliente
                    ' , ' + QuotedStr(cdsCADCLIESTCLI.AsString)+ //estado do cliente
                    ' , ' + QuotedStr(cdsCADCLICEPCLI.AsString)+ //cep do cliente
                    ' , ' + QuotedStr(cdsCADCLICODMUN.AsString)+ //IBGE do cliente
                    ' , ' + QuotedStr(LimparCaracteres(cdsCADCLIFONCLI.AsString))+ //telefone do cliente
                    ' , ' + QuotedStr(LimparCaracteres(cdsCADCLIFAXCLI.AsString))+ //celular do cliente
                    ' , ' + QuotedStr('')+ //fax do cliente
                    ' , ' + QuotedStr('')+ //email do cliente
                    ' , ' + QuotedStr(LimparCaracteres(cdsCADCLICGCCLI.AsString) )+ //cnpj do cliente
                    ' , ' + QuotedStr(LimparCaracteres(cdsCADCLIINSCLI.AsString) )+ //inscrição estadual do cliente
                    ' , ' + QuotedStr(cdsCADCLISUFRACLI.AsString)+ //suframa do cliente
                    ' , ' + QuotedStr('')+ //observacao do cliente
                    ' , ' + QuotedStr(cdsCADCLIENDCCLI.AsString)+ //endereço cobrança do cliente
                    ' , ' + QuotedStr(cdsCADCLIBAICCLI.AsString)+ //bairro cobrança do cliente
                    ' , ' + QuotedStr(cdsCADCLICIDCLI.AsString)+ //cidade cobrança do cliente
                    ' , ' + QuotedStr(cdsCADCLIESTCCLI.AsString)+ //estado cobrança do cliente
                    ' , ' + QuotedStr(cdsCADCLICEPCCLI.AsString)+ //cep cobrança do cliente
                    ' , ' + QuotedStr(LimparCaracteres(cdsCADCLIFONCCLI.AsString))+ //fone cobrança do cliente
                    ' , ' + QuotedStr(cdsCADCLIFAXCCLI.AsString)+ //fax cobrança do cliente
                    ' , ' + QuotedStr('')+ //emeil cobrança do cliente
                    ' , ' + QuotedStr('')+ //emailnfe do cliente
                    ' , ' + QuotedStr(cdsCADCLIENDENT.AsString)+ //endereço entrega cliente
                    ' , ' + '0' + //limite de crédito do cliente
                    ' , ' + QuotedStr('S')+ //calcula icms do cliente
                    ' , ' + FloatToStr(Icms) + //aliquota do icms do cliente
                    ' , ' + QuotedStr('C')+ //cliente ou fornecedor
                    ' , ' + QuotedStr('')+ //controle funcionário
                    ' , ' + QuotedStr('')+ //nome do funcionário
                    ' , ' + QuotedStr('N')+ //status do cliente
                    ' , ' + QuotedStr('N')+ //marça do cliente
                    ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data inc do cliente
                    ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data hab do cliente
                    ' , ' + '0'+ //desconto cliente
                    ' , ' + QuotedStr('')+ //contato cliente

                    ')';

                linha := sqlExecute;
                Writeln(arquivo,linha);

                cdsGenerico.Close;
                cdsGenerico.CommandText := '';
                cdsGenerico.CommandText := sqlExecute;
                cdsGenerico.Execute;

        cdsCADCLI.Next;
   end

   // CloseFile(arquivo);


end;

procedure TfrmPrincipal.spFornecedorClick(Sender: TObject);
var
  sqlExecute :String;
begin
   cdsCADFOR.Close;
   cdsCADFOR.Open;

   cdsCADFOR.First;
   while not cdsCADFOR.Eof do
   begin
    sqlExecute  :=
             'INSERT INTO '+
               '  TB_CLIENTE_FORNECEDOR '+
               '  ( '+
               '   controlerepresentante                  '+
               '  ,tipodecliente                          '+
               '  ,nomerepresentante                      '+
               '  ,controletransportadora                 '+
               '  ,nometransportadora                     '+
               '  ,codigocliente                          '+
               '  ,controlevendedor                       '+
               '  ,nomevendedor                           '+
               '  ,nome                                   '+
               '  ,setor                                  '+
               '  ,nomefantasia                           '+
               '  ,tipopessoa                             '+
               '  ,endereco                               '+
               '  ,numero                                 '+
               '  ,complemento                            '+
               '  ,bairro                                 '+
               '  ,cidade                                 '+
               '  ,estado                                 '+
               '  ,cep                                    '+
               '  ,codigoibge                             '+
               '  ,telefone                               '+
               '  ,celular                                '+
               '  ,fax                                    '+
               '  ,email                                  '+
               '  ,cnpj                                   '+
               '  ,inscrestadual                          '+
               '  ,suframa                                '+
               '  ,observacao                             '+
               '  ,enderecocobranca                       '+
               '  ,bairrocobranca                         '+
               '  ,cidadecobranca                         '+
               '  ,estadocobranca                         '+
               '  ,cepcobranca                            '+
               '  ,fonecobranca                           '+
               '  ,faxcobranca                            '+
               '  ,emeilcobranca                          '+
               '  ,emailnfe                               '+
               '  ,enderecoentrega                        '+
               '  ,limitedecredito                        '+
               '  ,calculaicms                            '+
               '  ,aliquotaicms                           '+
               '  ,clienteoufornecedor                    '+
               '  ,controlefuncionario                    '+
               '  ,nomefuncionario                        '+
               '  ,status                                 '+
               '  ,marca                                  '+
               '  ,data_inc                               '+
               '  ,data_hab                               '+
               '  ,desconto                               '+
               '  ,contato                                '+
               ' ) '+
               ' VALUES ( '+
               '   ' + QuotedStr('')+ //controle representante
                   ' , ' + QuotedStr('F') + // tipo de cliente
                ' , ' + QuotedStr('')+ //nome representante
                ' , ' + QuotedStr('')+ //controle transportadora
                ' , ' + QuotedStr('')+ //nome transportadora
                ' , ' + QuotedStr(cdsCADFORCODFOR.AsString)+ //codigo do cliente
                ' , ' + QuotedStr('')+ //controle do vendedor
                ' , ' + QuotedStr('')+ //nome do vendedor
                ' , ' + QuotedStr(cdsCADFORNOMFOR.AsString)+ //nome
                ' , ' + QuotedStr('')+ //setor
                ' , ' + QuotedStr(cdsCADFORABVFOR.AsString)+ //nome fantasia
                ' , ' + QuotedStr('J')+ //tipo pessoa
                ' , ' + QuotedStr(cdsCADFORENDFOR.AsString)+ //endereço
                ' , ' + QuotedStr('')+ //número do cliente
                ' , ' + QuotedStr('')+ //complemento do cliente
                ' , ' + QuotedStr(cdsCADFORBAIFOR.AsString)+ //bairro do cliente
                ' , ' + QuotedStr(cdsCADFORCIDFOR.AsString)+ //cidade do cliente
                ' , ' + QuotedStr(cdsCADFORESTFOR.AsString)+ //estado do cliente
                ' , ' + QuotedStr(cdsCADFORCEPFOR.AsString)+ //cep do cliente
                ' , ' + QuotedStr('')+ //IBGE do cliente
                ' , ' + QuotedStr(cdsCADFORFONFOR.AsString)+ //telefone do cliente
                ' , ' + QuotedStr(cdsCADFORFAXFOR.AsString)+ //celular do cliente
                ' , ' + QuotedStr('')+ //fax do cliente
                ' , ' + QuotedStr('')+ //email do cliente
                ' , ' + QuotedStr(LimparCaracteres(cdsCADFORCGCFOR.AsString) )+ //cnpj do cliente
                ' , ' + QuotedStr(LimparCaracteres(cdsCADFORINSFOR.AsString) )+ //inscrição estadual do cliente
                ' , ' + QuotedStr('')+ //suframa do cliente
                ' , ' + QuotedStr('')+ //observacao do cliente
                ' , ' + QuotedStr(cdsCADFORENDCFOR.AsString)+ //endereço cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORBAICFOR.AsString)+ //bairro cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORCIDFOR.AsString)+ //cidade cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORESTCFOR.AsString)+ //estado cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORCEPCFOR.AsString)+ //cep cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORFONCFOR.AsString)+ //fone cobrança do cliente
                ' , ' + QuotedStr(cdsCADFORFAXCFOR.AsString)+ //fax cobrança do cliente
                ' , ' + QuotedStr('')+ //emeil cobrança do cliente
                ' , ' + QuotedStr('')+ //emailnfe do cliente
                ' , ' + QuotedStr('')+ //endereço entrega cliente
                ' , ' + '0' + //limite de crédito do cliente
                ' , ' + QuotedStr('N')+ //calcula icms do cliente
                ' , ' + '0' + //aliquota do icms do cliente
                ' , ' + QuotedStr('F')+ //cliente ou fornecedor
                ' , ' + QuotedStr('')+ //controle funcionário
                ' , ' + QuotedStr('')+ //nome do funcionário
                ' , ' + QuotedStr('N')+ //status do cliente
                ' , ' + QuotedStr('N')+ //marça do cliente
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data inc do cliente
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data hab do cliente
                ' , ' + '0'+ //desconto cliente
                ' , ' + QuotedStr('')+ //contato cliente

                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

    cdsCADFOR.Next;
   end

end;

procedure TfrmPrincipal.spFinanceiroPagarClick(Sender: TObject);
var
  sqlExecute, ControleCliente :String;
begin
   cdsCADPAG.Close;
   cdsCADPAG.Open;

   cdsCADPAG.First;
   while not cdsCADPAG.Eof do
   begin

            //seleciona o fornecedor
            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := 'select * from TB_CLIENTE_FORNECEDOR where codigocliente = ' +
                                        QuotedStr(cdsCADPAGFORNEC.AsString)  +
                                       '  and clienteoufornecedor = ''F''   ' ;
            cdsGenerico.Open;
            ControleCliente  := cdsGenerico.FieldByName('controlecliente').AsString;

    sqlExecute  :=
             'INSERT INTO '+
               '  TB_RECEBIMENTO '+
               '  ( '+
                    '    controlebanco                '+
                    '   ,controlecondicaopagamento    '+
                    '   ,controleempresa              '+
                    '   ,descricao                    '+
                    '   ,valorreal                    '+
                    '   ,valorrecebido                '+
                    '   ,juros                        '+
                    '   ,mora                         '+
                    '   ,datacadastro                 '+
                    '   ,datavencimento               '+
                    '   ,statusregistro               '+
                    '   ,controleplano                '+
                    '   ,controlecliente              '+
                    '   ,observacoes                  '+
                    '   ,numeroparcela                '+
                    '   ,formapagamentoA              '+
                    '   ,status                       '+
                    '   ,protesto                     '+
                    '   ,marca                        '+
                    '   ,data_inc                     '+
                    '   ,data_hab                     '+
                    '   ,numerodocumento              '+
               ' ) '+
               ' VALUES ( '+
                '   ' + '0'+ //controle banco
                ' , ' + '2'+ // condição de pagamento
                ' , ' + '1'+ //controle da empresa
                ' , ' + QuotedStr('Importado do sistema antigo (pagar) ')+ //descrição
                ' , ' + TrocaVirgPPto(cdsCADPAGVALTIT.AsString) + //valor real
                ' , ' + '0' + //valor recebido
                ' , ' + '0' + //valor juro
                ' , ' + '0' + //valor mora
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCADPAGDTEMIS.AsDateTime))+ //data do emissão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCADPAGVENCTO.AsDateTime))+ //data do vencimento
                ' , ' + QuotedStr('A')+ //status do registro
                ' , ' + '6'+ //controle do plano
                ' , ' + QuotedStr(ControleCliente)+ //controle do cliente
                ' , ' + QuotedStr('Importado do sistema antigo')+ //observações
                ' , ' + '1'+ //número parcela
                ' , ' + QuotedStr('BOLETO')+ //forma de pagamento
                ' , ' + QuotedStr('N')+ //status
                ' , ' + QuotedStr('N')+ //marça
                ' , ' + QuotedStr('N')+ //protesto
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de inclusão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de alteração
                ' , ' + QuotedStr(cdsCADPAGNTFISC.AsString )+ //número do documento

                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

     cdsCADPAG.Next;
   end
end;

procedure TfrmPrincipal.spFinanceiroReceberClick(Sender: TObject);
var
  sqlExecute, ControleCliente :String;
begin
   cdsCADREC.Close;
   cdsCADREC.Open;

   cdsCADREC.First;
   while not cdsCADREC.Eof do
   begin

            //seleciona o fornecedor
            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := 'select * from TB_CLIENTE_FORNECEDOR where codigocliente = ' +
                                        QuotedStr(cdsCADRECCODCLI.AsString)  +
                                       '  and clienteoufornecedor = ''C''   ' ;
            cdsGenerico.Open;
            ControleCliente  := cdsGenerico.FieldByName('controlecliente').AsString;

    sqlExecute  :=
             'INSERT INTO '+
               '  TB_RECEBIMENTO '+
               '  ( '+
                    '    controlebanco                '+
                    '   ,controlecondicaopagamento    '+
                    '   ,controleempresa              '+
                    '   ,descricao                    '+
                    '   ,valorreal                    '+
                    '   ,valorrecebido                '+
                    '   ,juros                        '+   
                    '   ,mora                         '+
                    '   ,datacadastro                 '+
                    '   ,datavencimento               '+
                    '   ,statusregistro               '+
                    '   ,controleplano                '+
                    '   ,controlecliente              '+
                    '   ,observacoes                  '+
                    '   ,numeroparcela                '+
                    '   ,formapagamentoA              '+
                    '   ,status                       '+
                    '   ,marca                        '+
                    '   ,protesto                     '+
                    '   ,data_inc                     '+
                    '   ,data_hab                     '+
                    '   ,numerodocumento              '+
               ' ) '+
               ' VALUES ( '+
                '   ' + '0'+ //controle banco
                ' , ' + '2'+ // condição de pagamento
                ' , ' + '1'+ //controle da empresa
                ' , ' + QuotedStr('Importado do sistema antigo (recebido) ')+ //descrição
                ' , ' + TrocaVirgPPto(cdsCADRECVALTIT.AsString) + //valor real
                ' , ' + '0' + //valor recebido
                ' , ' + '0' + //valor juro
                ' , ' + '0' + //valor mora
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCADRECDTEMIS.AsDateTime))+ //data do emissão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCADRECVENCTO.AsDateTime))+ //data do vencimento
                ' , ' + QuotedStr('A')+ //status do registro
                ' , ' + '9'+ //controle do plano
                ' , ' + QuotedStr(ControleCliente)+ //controle do cliente
                ' , ' + QuotedStr('Importado do sistema antigo')+ //observações
                ' , ' + '1'+ //número parcela
                ' , ' + QuotedStr('BOLETO')+ //forma de pagamento
                ' , ' + QuotedStr('N')+ //status
                ' , ' + QuotedStr('N')+ //marça
                ' , ' + QuotedStr('N')+ //protesto
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de inclusão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de alteração
                ' , ' + QuotedStr(cdsCADRECNTFISC.AsString )+ //número do documento

                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

     cdsCADREC.Next;
   end

end;

procedure TfrmPrincipal.spRecebidasClick(Sender: TObject);
var
  sqlExecute, ControleCliente :String;
begin
   cdsCadRbt.Close;
   cdsCadRbt.Open;

   cdsCadRbt.First;
   while not cdsCadRbt.Eof do
   begin

            //seleciona o cliente
            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := 'select * from TB_CLIENTE_FORNECEDOR where codigocliente = ' +
                                        QuotedStr(cdsCadRbtCODCLI.AsString)  +
                                       '  and clienteoufornecedor = ''C''   ' ;
            cdsGenerico.Open;
            ControleCliente  := cdsGenerico.FieldByName('controlecliente').AsString;

    sqlExecute  :=
             'INSERT INTO '+
               '  TB_RECEBIMENTO '+
               '  ( '+
                    '    controlebanco                '+
                    '   ,controlecondicaopagamento    '+
                    '   ,controleempresa              '+
                    '   ,descricao                    '+
                    '   ,valorreal                    '+
                    '   ,valorrecebido                '+
                    '   ,juros                        '+   
                    '   ,mora                         '+
                    '   ,datacadastro                 '+
                    '   ,datavencimento               '+
                    '   ,datarecebimento              '+
                    '   ,statusregistro               '+
                    '   ,controleplano                '+
                    '   ,controlecliente              '+
                    '   ,observacoes                  '+
                    '   ,numeroparcela                '+
                    '   ,formapagamentoA              '+
                    '   ,status                       '+
                    '   ,marca                        '+
                    '   ,protesto                     '+
                    '   ,data_inc                     '+
                    '   ,data_hab                     '+
                    '   ,numerodocumento              '+
               ' ) '+
               ' VALUES ( '+
                '   ' + '0'+ //controle banco
                ' , ' + '2'+ // condição de pagamento
                ' , ' + '1'+ //controle da empresa
                ' , ' + QuotedStr('Importado do sistema antigo (Contas Recebidas) ')+ //descrição
                ' , ' + TrocaVirgPPto(cdsCadRbtVALTIT.AsString) + //valor real
                ' , ' + TrocaVirgPPto(cdsCadRbtVLPGTO.AsString) +  //valor recebido
                ' , ' + TrocaVirgPPto(cdsCadRbtVALJUR.AsString) +  //valor juro
                ' , ' + '0' + //valor mora
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadRbtDTEMIS.AsDateTime))+ //data do emissão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadRbtVENCTO.AsDateTime))+ //data do vencimento
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadRbtDTPGTO.AsDateTime))+ //data do recebimento
                ' , ' + QuotedStr('L')+ //status do registro
                ' , ' + '9'+ //controle do plano
                ' , ' + QuotedStr(ControleCliente)+ //controle do cliente
                ' , ' + QuotedStr(cdsCadRbtOBSREC.AsString)+ //observações
                ' , ' + '1'+ //número parcela
                ' , ' + QuotedStr('BOLETO')+ //forma de pagamento
                ' , ' + QuotedStr('N')+ //status
                ' , ' + QuotedStr('N')+ //marça
                ' , ' + QuotedStr('N')+ //protesto
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de inclusão
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de alteração
                ' , ' + QuotedStr(cdsCadRbtNTFISC.AsString )+ //número do documento

                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

     cdsCadRbt.Next;
   end

end;

procedure TfrmPrincipal.spPagasClick(Sender: TObject);
var
  sqlExecute, ControleCliente :String;
  novoarquivo, linha :String;
  arquivo:TextFile;
begin
    cdsCadPGT.Close;
    cdsCadPGT.Open;

    novoarquivo   := 'C:\ImportadorDados\ContasPagas.txt';
    AssignFile(arquivo,novoarquivo);
    Rewrite(arquivo);


    try

         cdsCadPGT.First;
         while not cdsCadPGT.Eof do
         begin

                  //seleciona o cliente
                  cdsGenerico.Close;
                  cdsGenerico.CommandText := '';
                  cdsGenerico.CommandText := 'select * from TB_CLIENTE_FORNECEDOR where codigocliente = ' +
                                              QuotedStr(cdsCadPGTFORNEC.AsString)  +
                                             '  and clienteoufornecedor = ''F''   ' ;
                  cdsGenerico.Open;
                  ControleCliente  := cdsGenerico.FieldByName('controlecliente').AsString;

          sqlExecute  :=
                   'INSERT INTO '+
                     '  TB_RECEBIMENTO '+
                     '  ( '+
                          '    controlebanco                '+
                          '   ,controlecondicaopagamento    '+
                          '   ,controleempresa              '+
                          '   ,descricao                    '+
                          '   ,valorreal                    '+
                          '   ,valorrecebido                '+
                          '   ,juros                        '+   
                          '   ,mora                         '+
                          '   ,datacadastro                 '+
                          '   ,datavencimento               '+
                          '   ,datarecebimento              '+
                          '   ,statusregistro               '+
                          '   ,controleplano                '+
                          '   ,controlecliente              '+
                          '   ,observacoes                  '+
                          '   ,numeroparcela                '+
                          '   ,formapagamentoA              '+
                          '   ,status                       '+
                          '   ,marca                        '+
                          '   ,protesto                     '+
                          '   ,data_inc                     '+
                          '   ,data_hab                     '+
                          '   ,numerodocumento              '+
                     ' ) '+
                     ' VALUES ( '+
                      '   ' + '0'+ //controle banco
                      ' , ' + '2'+ // condição de pagamento
                      ' , ' + '1'+ //controle da empresa
                      ' , ' + QuotedStr('Importado do sistema antigo (Contas Pagas) ')+ //descrição
                      ' , ' + TrocaVirgPPto(cdsCadPGTVALTIT.AsString) + //valor real
                      ' , ' + TrocaVirgPPto(cdsCadPGTVLPGTO.AsString) +  //valor recebido
                      ' , ' + TrocaVirgPPto(cdsCadPGTVALJUR.AsString) +  //valor juro
                      ' , ' + '0' + //valor mora
                      ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadPGTDTEMIS.AsDateTime))+ //data do emissão
                      ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadPGTVENCTO.AsDateTime))+ //data do vencimento
                      ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',cdsCadPGTDTPGTO.AsDateTime))+ //data do recebimento
                      ' , ' + QuotedStr('L')+ //status do registro
                      ' , ' + '6'+ //controle do plano
                      ' , ' + QuotedStr(ControleCliente)+ //controle do cliente
                      ' , ' + QuotedStr(cdsCadPGTOBSPAG.AsString)+ //observações
                      ' , ' + '1'+ //número parcela
                      ' , ' + QuotedStr('BOLETO')+ //forma de pagamento
                      ' , ' + QuotedStr('N')+ //status
                      ' , ' + QuotedStr('N')+ //marça
                      ' , ' + QuotedStr('N')+ //pretesto
                      ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de inclusão
                      ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de alteração
                      ' , ' + QuotedStr(cdsCadPGTNTFISC.AsString )+ //número do documento

                      ')';

                  cdsGenerico.Close;
                  cdsGenerico.CommandText := '';
                  cdsGenerico.CommandText := sqlExecute;
                  cdsGenerico.Execute;

           cdsCadPGT.Next;
         end;

       except
         on e:exception do
           begin
                linha := sqlExecute;
                Writeln(arquivo,linha);
          end;

       end;

     CloseFile(arquivo);

end;

procedure TfrmPrincipal.spProdutoClick(Sender: TObject);
var
  sqlExecute, ControleUnidade, Unidade :String;
  DataReposicao :String;
  SitTributaria :Double;
  DataReposicaoGravacao, DataUltimaEntrada :TDateTime;
begin
   cdsProduto.Close;
   cdsProduto.Open;

   cdsProduto.First;
   while not cdsProduto.Eof do
   begin

            //seleciona o cliente
            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := 'select * from TB_UNIDADE where unidade  = ' +
                                        QuotedStr(cdsProdutoUNIMED.AsString);
            cdsGenerico.Open;

            if cdsGenerico.RecordCount > 0 then
             begin
              ControleUnidade  := cdsGenerico.FieldByName('controleunidade').AsString;
              Unidade          := cdsGenerico.FieldByName('unidade').AsString;
             end;

            if cdsGenerico.RecordCount = 0 then
             begin
                ControleUnidade  := '3';
                Unidade          := 'PC';
             end;

            if cdsProdutoDATREP.AsString <> '' then
            begin
              DataReposicaoGravacao := cdsProdutoDATREP.AsDateTime;
            end;

           if cdsProdutoDTUCOM.AsString <> '' then
            begin
              DataUltimaEntrada := cdsProdutoDTUCOM.AsDateTime;
            end;

           if cdsProdutoSITTRI.AsString = '' then
             SitTributaria := 000
           else
             SitTributaria := cdsProdutoSITTRI.AsFloat;

    sqlExecute  :=
             'INSERT INTO '+
               '  TB_PRODUTO '+
               '  ( '+
                   '    controleunidade             '+
                   '   ,descricaounidade            '+
                   '   ,controlegrupo               '+
                   '   ,descricaogrupo              '+
                   '   ,controlesubgrupo            '+
                   '   ,descricaosubgrupo           '+
                   '   ,descricaoproduto            '+
                   '   ,nomeempresa                 '+
                   '   ,codigocomercial             '+
                   '   ,controleempresa             '+
                   '   ,observacao                  '+
                   '   ,status                      '+
                   '   ,marca                       '+
                   '   ,data_inc                    '+
                   '   ,controleusuario             '+
                   '   ,controleimagem              '+
                   '   ,pesoliquido                 '+
                   '   ,pesobruto                   '+
                   '   ,codigoncm                   '+
                   '   ,sittributaria               '+
                   '   ,ipi                         '+
                   '   ,creditopis                  '+
                   '   ,creditocofins               '+
                   '   ,qtdestoque                  '+
                   '   ,localizacao                 '+
                   '   ,qtdestoqueantigo            '+
                   '   ,codigoca                    '+
                   '   ,estoqueminimo               '+
                   '   ,precoreposicao              '+
                   '   ,dataprecoreposicao          '+
                   '   ,customediocontabil          '+
                   '   ,precovenda                  '+
                   '   ,controlecliente             '+
                   '   ,nomefornecedor              '+
                   '   ,codigobarras                '+
                   '   ,nomemarca                   '+
                   '   ,valorultimaentrada          '+
                   '   ,dataultimaentrada           '+
                   '   ,refmarca                    '+

               ' ) '+
               ' VALUES ( '+
                '   ' + QuotedStr(ControleUnidade) +  //controle unidade
                ' , ' + QuotedStr(Unidade) +  //descrição unidade
                ' , ' + '1'+ //controle do grupo
                ' , ' + QuotedStr('NAO DEFINIDO')+ //descrição do grupo
                ' , ' + '1'+ //controle do sub grupo
                ' , ' + QuotedStr('NAO DEFINIDO')+ //descrição do sub grupo
                ' , ' + QuotedStr(cdsProdutoDESPEC.AsString)+ //descrição do produto
                ' , ' + QuotedStr('')+ //nome da empresa
                ' , ' + QuotedStr(cdsProdutoCODDIP.AsString)+ //código comercial
                ' , ' + QuotedStr('1')+ //código da empresa
                ' , ' + QuotedStr('Importado do sistema antigo')+ //observações
                ' , ' + QuotedStr('N')+ //status
                ' , ' + QuotedStr('N')+ //marça
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data de inclusão
                ' , ' + QuotedStr('3')+ //controle usuário
                ' , ' + QuotedStr('1')+ //controle da imagem
                ' , ' + TrocaVirgPPto(cdsProdutoPESOLQ.AsString) +  //peso liquido
                ' , ' + TrocaVirgPPto(cdsProdutoPESOBR.AsString) +  //peso bruto
                ' , ' + TrocaVirgPPto(cdsProdutoCLASSI.AsString) +  //codigo ncm
                ' , ' + FormatFloat('000',SitTributaria) +  //situação tributária
                ' , ' + TrocaVirgPPto(cdsProdutoALQIPI.AsString) +  //aliquota ipi
                ' , ' + QuotedStr('0')+ //crédito  do ipi
                ' , ' + QuotedStr('0')+ //crédito  do cofins
                ' , ' + QuotedStr(cdsProdutoSALEST.AsString)+ //saldo do estoque
                ' , ' + QuotedStr(cdsProdutoNOVCOD.AsString)+ //localização
                ' , ' + QuotedStr(cdsProdutoSALEST.AsString)+ //saldo do estoque
                ' , ' + QuotedStr(cdsProdutoLOCALP.AsString)+ //número do ca
                ' , ' + QuotedStr('0')+ //estoque mínimo
                ' , ' + TrocaVirgPPto(cdsProdutoCUSREP.AsString)+ //preço de reposição
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DataReposicaoGravacao))+ //data de reposição
                ' , ' + TrocaVirgPPto(cdsProdutoCUSMED.AsString)+ //custo médio
                ' , ' + TrocaVirgPPto(cdsProdutoPREVEN.AsString)+ //preço de venda
                ' , ' + QuotedStr('0')+ //controle do cliente
                ' , ' + QuotedStr('')+ //nome do fornecedor
                ' , ' + QuotedStr('')+ //código de barras
                ' , ' + QuotedStr('')+ //nome da marça
                ' , ' + TrocaVirgPPto(cdsProdutoPRUCOM.AsString)+ //valor última entrada
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',DataUltimaEntrada))+ //data última entrada
                ' , ' + QuotedStr('')+ //nome refmarca

                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

     cdsProduto.Next;
   end

end;

procedure TfrmPrincipal.sbTransportadoraClick(Sender: TObject);
var
  sqlExecute, telefone :String;
begin
   cdsTransportadora.Close;
   cdsTransportadora.Open;

   cdsTransportadora.First;
   while not cdsTransportadora.Eof do
   begin

   telefone :=  LimparCaracteres(cdsTransportadoraFONTRA.AsString);


    sqlExecute  :=
             'INSERT INTO '+
               '  TB_TRANSPORTADORA '+
               '  ( '+
               '   controleempresa            '+
               '  ,controleusuario            '+
               '  ,codigotransportadora       '+
	             '  ,nome                       '+
	             '  ,endereco                   '+
               '  ,cidade                     '+
	             '  ,estado                     '+
               '  ,bairro                     '+
	             '  ,cep                        '+
	             '   ,celular                    '+
               '   ,telefone                   '+
               '   ,codibge                    '+
	             '   ,tipopessoa                 '+
	             '   ,fax                        '+
	             '   ,email                      '+
               '   ,cpf                        '+
               '   ,cnpj                       '+
	             '   ,inscricaoestadual          '+
	             '   ,observacao                 '+
               '   ,status                     '+
               '   ,marca                      '+
	             '   ,data_inc                   '+
               ' ) '+
               ' VALUES ( '+
                '   ' + QuotedStr('1')+ //controle da empresa
                ' , ' + QuotedStr('1') + // controle usuário
                ' , ' + QuotedStr(cdsTransportadoraCODTRA.AsString)+ //codigo da transportadora
                ' , ' + QuotedStr(cdsTransportadoraNOMTRA.AsString)+ //nome transportadora
                ' , ' + QuotedStr(cdsTransportadoraENDTRA.AsString)+ //endereço transportadora
                ' , ' + QuotedStr(cdsTransportadoraCIDTRA.AsString)+ //cidade
                ' , ' + QuotedStr(cdsTransportadoraESTTRA.AsString)+ //estado
                ' , ' + QuotedStr('')+ //bairro
                ' , ' + QuotedStr('')+ //cep
                ' , ' + QuotedStr('')+ //celular
                ' , ' + QuotedStr( copy(telefone,1, 10 ))+
                ' , ' + QuotedStr('')+ //codigo ibge
                ' , ' + QuotedStr('J')+ //tipo de pessoa
                ' , ' + QuotedStr('')+ //fax
                ' , ' + QuotedStr('')+ //email
                ' , ' + QuotedStr('')+ //cpf
                ' , ' + QuotedStr(LimparCaracteres(cdsTransportadoraCGCTRA.AsString))+ //cnpj
                ' , ' + QuotedStr(LimparCaracteres(cdsTransportadoraINSTRA.AsString))+ //ins
                ' , ' + QuotedStr(cdsTransportadoraOBSTRA.AsString)+ //observação
                ' , ' + QuotedStr('N')+ //status
                ' , ' + QuotedStr('N')+ //marca
                ' , ' + QuotedStr(FormatDateTime('yyyy-mm-dd',Date))+ //data inc
                ')';

            cdsGenerico.Close;
            cdsGenerico.CommandText := '';
            cdsGenerico.CommandText := sqlExecute;
            cdsGenerico.Execute;

    cdsTransportadora.Next;
   end
end;

end.


{
select * from TB_CLIENTE_FORNECEDOR
select * from TB_C_VENDAS
select * from TB_D_VENDAS
select * from TB_C_ORCAMENTO
select * from TB_D_ORCAMENTO
select * from TB_RECEBIMENTO
select * from tb_produto
select * from TB_C_VENDAS
select * from TB_D_VENDAS
select * from TB_C_VENDAS
select * from TB_D_VENDAS


delete from TB_CLIENTE_FORNECEDOR
delete from TB_C_VENDAS
delete from TB_D_VENDAS
delete from TB_C_ORCAMENTO
delete from TB_D_ORCAMENTO
delete from TB_RECEBIMENTO
delete from TB_C_ENTRADA_NOTA
delete from TB_D_ENTRADA_NOTA
delete from tb_produto
delete from TB_TRANSPORTADORA

DBCC Checkident( TB_CLIENTE_FORNECEDOR, reseed, 0)
DBCC Checkident( TB_C_VENDAS, reseed, 0)
DBCC Checkident( TB_D_VENDAS, reseed, 0)
DBCC Checkident( TB_C_ORCAMENTO, reseed, 0)
DBCC Checkident( TB_D_ORCAMENTO, reseed, 0)
DBCC Checkident( TB_RECEBIMENTO, reseed, 0)
DBCC Checkident( TB_C_ENTRADA_NOTA, reseed, 0)
DBCC Checkident(  TB_D_ENTRADA_NOTA, reseed, 0)
DBCC Checkident(  TB_D_PRODUTO, reseed, 0)
DBCC Checkident(  TB_TRANSPORTADORA, reseed, 0)

}
