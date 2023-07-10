table 50504 Vehiculo
{
    DataClassification = ToBeClassified;
    DrillDownPageId = VehiculosList;
    LookupPageId = VehiculosList;
    Caption = 'Tabla Vehiculos';

    fields
    {
        field(1; Codigo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo';

        }
        field(2; CodigoMarca; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Codigo Marca';
            TableRelation = Marca;
            ValidateTableRelation = true;
        }

        field(3; Tipo; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Tipo';
            OptionMembers = ,Auto,Moto;
            trigger OnValidate()
            begin
                if Tipo = Tipo::Auto then
                    "Cantidad de Ruedas" := 4
                else
                    if Tipo = Tipo::Moto then
                        "Cantidad de Ruedas" := 2;
            end;

        }
        field(4; "Cantidad de Ruedas"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Cantidad de Ruedas';
        }
    }

    keys
    {
        key(PK; Codigo)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Message('Nuevo vehiculo creado!!');
    end;

    trigger OnModify()
    begin
        Message('El vehiculo fue modificado!!');
    end;

    trigger OnDelete()
    begin
        if (Tipo = Tipo::Auto) OR (Tipo = Tipo::Moto) then
            Error('El tipo debe ser vacio para ser eliminado!!');
    end;

    trigger OnRename()
    begin

    end;

}