page 50505 VehiculoCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vehiculo;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    Caption = 'Codigo';
                    ApplicationArea = All;
                }
                field(CodigoMarca; Rec.CodigoMarca)
                {
                    Caption = 'Codigo Marca';
                    ApplicationArea = All;
                }
                field(Tipo; Rec.Tipo)
                {
                    Caption = 'Tipo';
                    ApplicationArea = All;
                }
                field("Cantidad de Ruedas"; Rec."Cantidad de Ruedas")
                {
                    Caption = 'Cantidad de Ruedas';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}