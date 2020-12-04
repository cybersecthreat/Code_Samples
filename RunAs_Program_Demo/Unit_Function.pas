unit Unit_Function;

interface

uses
  Forms, DCPcrypt2, DCPrijndael, DCPmd5, DCPsha512;


function AES_Encrypt(InputText: String): String;
function AES_Decrypt(InputText: String): String;
function AES_Encrypt_With_Key(InputText: String; KeyStr: String): String;
function AES_Decrypt_With_Key(InputText: String; KeyStr: String): String;



implementation

function AES_Encrypt(InputText: String): String;
  var
    i: integer;
    Cipher: TDCP_rijndael;
    KeyStr: string;
    KeyStr1, KeyStr2: String;
    ReturnString: String;
begin

    KeyStr1:=AES_Decrypt_With_Key('JmXpIYABg4y2rg==', 'BBBBB_key');
    KeyStr2:=AES_Decrypt_With_Key('zMQ4pckZyCRqgw==', 'DDDDD_key');

    KeyStr:= 'AAAAA_'+KeyStr1+'_CCCCC_'+KeyStr2;

      Cipher:= TDCP_rijndael.Create(Screen.ActiveForm);
      Cipher.InitStr(KeyStr,TDCP_sha512);         // initialize the cipher with a hash of the passphrase
      ReturnString:= Cipher.EncryptString(InputText);
      Cipher.Burn;
      Cipher.Free;
    Result := ReturnString;
end;

function AES_Decrypt(InputText: String): String;
  var
    i: integer;
    Cipher: TDCP_rijndael;
    KeyStr: string;
    KeyStr1, KeyStr2: String;
    ReturnString: String;
begin

    KeyStr1:=AES_Decrypt_With_Key('JmXpIYABg4y2rg==', 'BBBBB_key');
    KeyStr2:=AES_Decrypt_With_Key('zMQ4pckZyCRqgw==', 'DDDDD_key');

    KeyStr:= 'AAAAA_'+KeyStr1+'_CCCCC_'+KeyStr2;

    //KeyStr:= 'AAAAA_BBBBB_CCCCC_DDDDD';
      Cipher:= TDCP_rijndael.Create(Screen.ActiveForm);
      Cipher.InitStr(KeyStr,TDCP_sha512);         // initialize the cipher with a hash of the passphrase
      ReturnString:= Cipher.DecryptString(InputText);
      Cipher.Burn;
      Cipher.Free;
    Result := ReturnString;
end;

function AES_Encrypt_With_Key(InputText: String; KeyStr: String): String;
  var
    Cipher: TDCP_rijndael;
    ReturnString: String;
begin

      Cipher:= TDCP_rijndael.Create(Screen.ActiveForm);
      Cipher.InitStr(KeyStr,TDCP_md5);         // initialize the cipher with a hash of the passphrase
      ReturnString:= Cipher.EncryptString(InputText);
      Cipher.Burn;
      Cipher.Free;
    Result := ReturnString;
end;

function AES_Decrypt_With_Key(InputText: String; KeyStr: String): String;
  var
    Cipher: TDCP_rijndael;
    ReturnString: String;
begin

      Cipher:= TDCP_rijndael.Create(Screen.ActiveForm);
      Cipher.InitStr(KeyStr,TDCP_md5);         // initialize the cipher with a hash of the passphrase
      ReturnString:= Cipher.DecryptString(InputText);
      Cipher.Burn;
      Cipher.Free;
    Result := ReturnString;
end;

end.
