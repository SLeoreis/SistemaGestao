unit uBiblioteca;

interface
  uses inifiles, System.SysUtils, Vcl.Forms;
  procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string );
  function GetValorIni(pLocal, pSessao, pSubsessao: string) : string;

implementation
  procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string );
  var vArquivo: TIniFile;
  begin
    vArquivo := TIniFile.Create(pLocal);

    vArquivo.WriteString(pSessao, pSubSessao, pValor);

    vArquivo.Free;
  end;

  function GetValorIni(pLocal, pSessao, pSubsessao: string) : string;
  var vArquivo: TIniFile;
  begin
    vArquivo := TIniFile.Create(pLocal);

    Result := vArquivo.ReadString(pSessao, pSubsessao, '');

    vArquivo.Free;
  end;
end.
