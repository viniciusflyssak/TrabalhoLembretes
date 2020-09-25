unit uFrmInserirLembrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, uLembreteDAO, uLembrete;

type
  TFrmInserirLembrete = class(TForm)
    PFundo: TPanel;
    EdtTitulo: TEdit;
    LTitulo: TLabel;
    MDescricao: TMemo;
    LDescricao: TLabel;
    LDataHora: TLabel;
    DTData: TDateTimePicker;
    BtnSalvar: TSpeedButton;
    DTHora: TDateTimePicker;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PreencherLembrete;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInserirLembrete: TFrmInserirLembrete;
  LembreteDAO: TLembreteDAO;
  Lembrete: Tlembrete;

implementation

{$R *.dfm}

procedure TFrmInserirLembrete.BtnSalvarClick(Sender: TObject);
begin
  PreencherLembrete;
  if LembreteDAO.Inserir(Lembrete) then
  begin
    ShowMessage('Registro Inserido com Sucesso!');
  end;
  Close;
end;

procedure TFrmInserirLembrete.FormCreate(Sender: TObject);
begin
  LembreteDAO := TLembreteDAO.Create;
  Lembrete := Tlembrete.Create;
  DTData.DateTime := Now;
  DTHora.DateTime := Now;
end;

procedure TFrmInserirLembrete.FormDestroy(Sender: TObject);
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

procedure TFrmInserirLembrete.PreencherLembrete;
begin
  Lembrete.Titulo := EdtTitulo.Text;
  Lembrete.Descricao := MDescricao.Text;
  Lembrete.Data := DTData.DateTime;
  Lembrete.Hora := DTHora.DateTime;
end;

end.
