table 50503 Marca
{
    DataClassification = ToBeClassified;
    DrillDownPageId = Marca;
    Caption = 'Tabla Marca';

    fields
    {
        field(1; Codigo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo';

        }
        field(2; Descripcion; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Descripcion';
        }
    }

    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }
    }

    //Triggers o Disparadores

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}