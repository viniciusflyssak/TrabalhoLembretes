object FrmInserirLembrete: TFrmInserirLembrete
  Left = 0
  Top = 0
  Caption = 'Inserir Lembretes'
  ClientHeight = 366
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PFundo: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 366
    Align = alClient
    TabOrder = 0
    object LTitulo: TLabel
      Left = 24
      Top = 25
      Width = 37
      Height = 16
      Caption = 'T'#237'tulo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LDescricao: TLabel
      Left = 24
      Top = 81
      Width = 60
      Height = 16
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LDataHora: TLabel
      Left = 24
      Top = 256
      Width = 63
      Height = 16
      Caption = 'Data/Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnSalvar: TSpeedButton
      Left = 24
      Top = 320
      Width = 105
      Height = 38
      Caption = 'Salvar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF97433F97433F97433F97433FB59A9BB59A9BB59A9BB59A9B
        B59A9BB59A9BB59A9BB59A9BB59A9BB59A9BB59A9B97433F97433F97433F9743
        3FFF00FFFF00FFFF00FFFF00FF97433FC16967D06565C96564C45C5CA27474E9
        E2E2D5CCCCD1C0BFE9DAD8F6F0EDF6F1EFEBE6E6E3E7E6E3E7E6C27F7E932B2A
        9A3737B85353BF5F6097433FFF00FFFF00FFFF00FF97433FC46C6AD06565D069
        69CA6061A25657E9E2E292292A92292ABE6967F7EDEAFFFFFDFBF8F5F3F8F6F3
        F8F6C27F7E9227279A3636BB5454C4636397433FFF00FFFF00FFFF00FF97433F
        C36B69D06565CE6868C85F5FA35A5AE9E2E292292A92292AC36E6BEADFDDFBFA
        F7FEFAF7FDFFFCFDFFFFC27F7E9227279A3636BA5454C3626297433FFF00FFFF
        00FFFF00FF97433FC36B69D06565CE6868C75E5EA55B5BE9E2E292292A92292A
        C36E6BDACECDF0EFEDFBF7F5FFFFFFFDFFFFC27F7E9227279A3636BA5454C362
        6297433FFF00FFFF00FFFF00FF97433FC36B69D06565CE6868C75E5EA75D5CE9
        E2E292292A92292AC36E6BC1B4B3DEDEDCF2EDEAFFFFFFFDFFFFC27F7E912626
        9B3636BA5454C3626297433FFF00FFFF00FFFF00FF97433FC36B69D06565CE68
        68C55D5DA95E5EE9E2E292292A92292AC36E6BA39B9ABAC0BFDDDEDBFDFFFFFD
        FFFFC27F7E8D2222983333B95353C3626297433FFF00FFFF00FFFF00FF97433F
        C36B69D06565CD6767C75F5FB05B5CE9E2E2E9E2E2E9E2E2E9E2E2E9E2E2E9E2
        E2E9E2E2E9E2E2E9E2E2C27F7E9B3131A33E3EBD5757C3616297433FFF00FFFF
        00FFFF00FF97433FC36C69D06565CD6666CC6564C76161CD7676D99090DB9494
        D88D8ED98889D78686D48282D18282CE7575C65F5EC45B5BC65E5ECC6464C260
        6197433FFF00FFFF00FFFF00FF97433FD06565D06565C35F5EC76664CB6C6CCA
        6B6ACA6867CA6868CA6868CA6868CA6867CA6867C96766CA6B6ACE7372CF7675
        CF7272CF6969C15F6097433FFF00FFFF00FFFF00FF97433FD06565D06565D6A3
        A1D6A3A1D7A5A3D8A6A4D8A6A4D8A6A4D8A6A4D8A6A4D8A6A4D8A6A5D8A6A5D8
        A6A5D8A6A4D8A7A5D7A6A4CE7070D0656597433FFF00FFFF00FFFF00FF97433F
        D06565D06565E0C4C2FEFDFDFEFDFDFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
        FEFFFEFEFFFEFEFFFEFEFEFDFDFDFCFCE5C7C6C56666D0656597433FFF00FFFF
        00FFFF00FF97433FD06565D06565E2C8C6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C7C7C46463D065
        6597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFECD
        CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFE
        E5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6
        C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433F
        D06565D06565E2C6C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF
        00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFECDCDCDCDCDCDCDCDCD
        CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFEE5C7C6C46463D065
        6597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        E5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6
        C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433F
        D06565D06565E2C7C5FEFEFEFEFEFECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
        CDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFEE5C7C6C56565D0656597433FFF00FFFF
        00FFFF00FF97433FD06565D06565DDC2C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C8C6D06565D065
        6597433FFF00FFFF00FFFF00FFFF00FF97433F97433FCFB4B2FEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        E7C9C797433F97433FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = BtnSalvarClick
    end
    object EdtTitulo: TEdit
      Left = 112
      Top = 24
      Width = 417
      Height = 21
      TabOrder = 0
    end
    object MDescricao: TMemo
      Left = 112
      Top = 64
      Width = 417
      Height = 169
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object DTData: TDateTimePicker
      Left = 112
      Top = 256
      Width = 186
      Height = 21
      Date = 44096.000000000000000000
      Format = 'dd/MM/yyyy '
      Time = 0.616727372682362300
      TabOrder = 2
    end
    object DTHora: TDateTimePicker
      Left = 320
      Top = 256
      Width = 186
      Height = 21
      Date = 44096.000000000000000000
      Format = 'HH:mm:ss'
      Time = 0.616727372682362300
      Kind = dtkTime
      TabOrder = 3
    end
  end
end
