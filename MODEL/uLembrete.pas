unit uLembrete;

interface

uses System.SysUtils;

type
  TLembrete = class
  private
    FIDPessoa: Integer;
    FTitulo: String;
    FDescricao: String;
    FData: TDateTime;
    FHora: TDateTime;
    constructor Create;

    procedure setTitulo(Value: String);
    procedure setDescricao(Value: String);
    procedure setData(Value: TDateTime);
    procedure setHora(Value: TDateTime);
    procedure setIDLembrete(Value: Integer);

    function getTitulo: String;
    function getDescricao: String;
    function getData: TDateTime;
    function getHora: TDateTime;
    function getIDLembrete: Integer;

  public
    property IDLembrete: Integer read getIDLembrete write setIDLembrete;
    property Titulo: String read getTitulo write setTitulo;
    property Descricao: String read getDescricao write setDescricao;
    property Data: TDateTime read getData write setData;
    property Hora: TDateTime read getHora write setHora;
  end;

implementation

{ TLembrete }

constructor TLembrete.Create;
begin
  FIDPessoa := 0;
  FTitulo := '';
  FDescricao := '';
  FData := EncodeDate(1900, 1, 1);
end;

function TLembrete.getData: TDateTime;
begin
  Result := FData;
end;

function TLembrete.getDescricao: String;
begin
  Result := FDescricao;
end;

function TLembrete.getHora: TDateTime;
begin
  Result := FHora;
end;

function TLembrete.getIDLembrete: Integer;
begin
  Result := FIDPessoa;
end;

function TLembrete.getTitulo: String;
begin
  Result := FTitulo;
end;

procedure TLembrete.setData(Value: TDateTime);
begin
  FData := Value;
end;

procedure TLembrete.setDescricao(Value: String);
begin
  FDescricao := Value;
end;

procedure TLembrete.setHora(Value: TDateTime);
begin
  FHora := Value;
end;

procedure TLembrete.setIDLembrete(Value: Integer);
begin
  FIDPessoa := Value;
end;

procedure TLembrete.setTitulo(Value: String);
begin
  FTitulo := Value;
end;

end.
