unit uFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, uLembreteDAO, System.Generics.Collections, uLembrete, uDM,
  uFrmInserirLembrete, FireDAC.DApt, uFrmEditarLembrete;

type
  TFormConsulta = class(TForm)
    PTitulo: TPanel;
    PPesquisa: TPanel;
    LBuscar: TLabel;
    EdtBuscaTitulo: TEdit;
    BtnBuscar: TSpeedButton;
    LVLembrete: TListView;
    PBotoes: TPanel;
    BtnNovo: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure LVLembreteDblClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    LembreteDAO: TLembreteDAO;
    procedure CarregarColecao;
    procedure PreencherListView(pListaLembrete: TList<TLembrete>);
  public
    { Public declarations }
  end;

var
  FormConsulta: TFormConsulta;

implementation

{$R *.dfm}
{ TForm1 }

procedure TFormConsulta.BtnBuscarClick(Sender: TObject);
begin
  LembreteDAO.ListarPorTitulo(EdtBuscaTitulo.Text);
  CarregarColecao;

end;

procedure TFormConsulta.BtnEditarClick(Sender: TObject);
begin
  try

    FrmEditarLembrete := TFrmEditar.Create(Self,
      TLembrete(LVLembrete.ItemFocused.Data));
    FrmEditarLembrete.ShowModal;
    CarregarColecao;
  finally
    FreeAndNil(FrmEditarLembrete);
  end;
end;

procedure TFormConsulta.BtnExcluirClick(Sender: TObject);
begin
  Lembrete := TLembrete(LVLembrete.ItemFocused.Data);
  if LembreteDAO.Deletar(Lembrete) then
  begin
    ShowMessage('Registro Deletado com Sucesso!');
    Close;
  end;
end;

procedure TFormConsulta.BtnNovoClick(Sender: TObject);
begin
  try
    FrmInserirLembrete := TFrmInserirLembrete.Create(Self);
    FrmInserirLembrete.ShowModal;
    CarregarColecao;
  finally
    FreeAndNil(FrmInserirLembrete);
  end;
end;

procedure TFormConsulta.CarregarColecao;
begin
  Try
    PreencherListView(LembreteDAO.ListarPorTitulo(EdtBuscaTitulo.Text));
  except
    on e: Exception do
      raise Exception.Create(e.Message);

  End;
end;

procedure TFormConsulta.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
  LembreteDAO := TLembreteDAO.Create;
  CarregarColecao;
end;

procedure TFormConsulta.FormDestroy(Sender: TObject);
begin
  Try
    if Assigned(LembreteDAO) then
      FreeAndNil(LembreteDAO);
    if Assigned(DM) then
      FreeAndNil(DM);
  Except
    on e: Exception do
      raise Exception.Create(e.Message);
  End;
end;

procedure TFormConsulta.LVLembreteDblClick(Sender: TObject);
begin
  try
    FrmEditarLembrete := TFrmEditar.Create(Self,
      TLembrete(LVLembrete.ItemFocused.Data));
    FrmEditarLembrete.ShowModal;
    CarregarColecao;
  finally
    FreeAndNil(FrmEditarLembrete);
  end;
end;

procedure TFormConsulta.PreencherListView(pListaLembrete: TList<TLembrete>);
var
  I: integer;
  tempItem: TListItem;
begin
  if Assigned(pListaLembrete) then
  begin
    LVLembrete.Clear;

    for I := 0 to pListaLembrete.Count - 1 do
    begin
      tempItem := LVLembrete.Items.Add;
      tempItem.Caption := IntToStr(TLembrete(pListaLembrete[I]).IDLembrete);
      tempItem.SubItems.Add(TLembrete(pListaLembrete[I]).Titulo);
      tempItem.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:mm',
        TLembrete(pListaLembrete[I]).Data));
      tempItem.SubItems.Add(TLembrete(pListaLembrete[I]).Descricao);
      tempItem.Data := TLembrete(pListaLembrete[I]);
    end;
  end
  else
    ShowMessage('Nada Encontrado');
end;

end.
