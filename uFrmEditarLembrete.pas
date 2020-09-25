unit uFrmEditarLembrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Comp.Client, uLembreteDAO, uLembrete;

type
  TFrmEditar = class(TForm)
    LTitulo: TLabel;
    PFundo: TPanel;
    EdtTitulo: TEdit;
    MDescricao: TMemo;
    LDescricao: TLabel;
    LDataHora: TLabel;
    DTData: TDateTimePicker;
    BtnSalvar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    DTHora: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    LembreteDAO: TLembreteDAO;
    Lembrete: TLembrete;
    procedure PreencherLembrete;
    procedure PreencherTela;
  protected
    FDQuery: TFDQuery;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pLembrete: TLembrete);
  end;

var
  FrmEditarLembrete: TFrmEditar;

implementation

{$R *.dfm}
{ TFrmEditar }

procedure TFrmEditar.BtnExcluirClick(Sender: TObject);
begin
  if LembreteDAO.Deletar(Lembrete) then
  begin
    ShowMessage('Registro Deletado com Sucesso!!!');
    Close;
  end;
end;

procedure TFrmEditar.BtnSalvarClick(Sender: TObject);
begin
  PreencherLembrete;
  if LembreteDAO.Alterar(Lembrete) then
  begin
    ShowMessage('Registro Editado com Sucesso!!!');
    Close;
  end;
end;

constructor TFrmEditar.Create(AOwner: TComponent; pLembrete: TLembrete);
begin
  inherited Create(AOwner);
  LembreteDAO := TLembreteDAO.Create;

  try
    if Assigned(pLembrete) then
    begin
      Lembrete := pLembrete;
      PreencherTela;
    end;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TFrmEditar.FormDestroy(Sender: TObject);
begin
  Try
    if Assigned(LembreteDAO) then
      FreeAndNil(LembreteDAO);
    if Assigned(Lembrete) then
      FreeAndNil(Lembrete);
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  End;
end;

procedure TFrmEditar.PreencherLembrete;
begin
  Lembrete.Titulo := EdtTitulo.Text;
  Lembrete.descricao := MDescricao.lines.Text;
  Lembrete.Data := DTData.DateTime;
  Lembrete.Hora := DTHora.DateTime;
end;

procedure TFrmEditar.PreencherTela;
begin
  EdtTitulo.Text := Lembrete.Titulo;
  MDescricao.lines.Text := Lembrete.descricao;
  DTData.DateTime := Lembrete.Data;
  DTHora.DateTime := Lembrete.Hora;
end;

end.
