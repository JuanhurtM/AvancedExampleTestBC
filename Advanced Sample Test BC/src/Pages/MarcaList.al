page 50502 Marca
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Marca;
    Caption = 'Lista de Marcas';
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Codigo; Rec.Codigo)
                { }
                field(Descripcion; Rec.Descripcion)
                { }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(TEST)
            {
                ApplicationArea = All;
                Caption = 'TEST';
                Image = ExecuteBatch;

                trigger OnAction()
                var
                    TestCode: Codeunit TestCodeUnit;
                begin
                    TestCode.TestMetodoGlobal();
                end;
            }
        }

    }

}