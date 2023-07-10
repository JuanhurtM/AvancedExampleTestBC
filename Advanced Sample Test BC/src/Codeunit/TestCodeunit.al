codeunit 50502 TestCodeunit
{
    trigger OnRun()
    begin

    end;

    procedure TestMetodoGlobal()
    var
        myInt: Integer;
    begin
        Message('Metodo global!!');
    end;

    local procedure TestMetodoLocal()
    var
        myInt: Integer;
    begin
        Message('Metodo local!!');
    end;
}