page 50504 VehiculosList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vehiculo;
    CardPageId = VehiculoCard;
    Caption = 'Lista Vehiculos';


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    ApplicationArea = All;
                }
                field(CodigoMarca; Rec.CodigoMarca)
                {
                    ApplicationArea = All;
                }
                field(Tipo; Rec.Tipo)
                {
                    ApplicationArea = All;
                }
                field("Cantidad de Ruedas"; Rec."Cantidad de Ruedas")
                {
                    ApplicationArea = All;
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
}