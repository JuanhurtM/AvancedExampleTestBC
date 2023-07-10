report 50500 ReportVehiculo
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Reporte Vehiculos';
    DefaultRenderingLayout = Vehiculos_report;
    dataset
    {
        dataitem(Vehiculo; Vehiculo)
        {
            column(Codigo; Codigo)
            { }
            column(CodigoMarca; CodigoMarca)
            { }
            column(Tipo; Format(Tipo))
            { }
            column(Cantidad_de_Ruedas; "Cantidad de Ruedas")
            { }
        }
    }

    rendering
    {
        layout(Vehiculos_report)
        {
            Type = RDLC;
            LayoutFile = 'Vehiculos_report.rdl';
        }
    }

}