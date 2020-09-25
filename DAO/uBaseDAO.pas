unit uBaseDAO;

interface

uses
  FireDAC.Comp.Client, uDM, System.SysUtils;

type
  TBaseDAO = class
  private

  protected
    FQuery: TFDQuery;
    constructor Create;
    destructor Destroy; Override;
    function RetornarDataSet(pSQL: String): TFDQuery;
    function ExecutarComando(pSQL: String): Integer;
  end;

implementation

{ TBaseDAO }

constructor TBaseDAO.Create;
begin
  inherited Create;
  FQuery := TFDQuery.Create(Nil);
  FQuery.Connection := DM.Conexao;
end;

destructor TBaseDAO.Destroy;
begin
  try
    if Assigned(FQuery) then
    begin
      FreeAndNil(FQuery);
    end;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

function TBaseDAO.ExecutarComando(pSQL: String): Integer;
begin
  Try
    DM.Conexao.StartTransaction;
    FQuery.SQL.Text := pSQL;
    FQuery.ExecSQL;
    Result := FQuery.RowsAffected;
    DM.Conexao.Commit;
  except
    DM.Conexao.Rollback;
  End;
end;

function TBaseDAO.RetornarDataSet(pSQL: String): TFDQuery;
begin
  FQuery.SQL.Text := pSQL;
  FQuery.Active := True;
  Result := FQuery;
end;

end.
