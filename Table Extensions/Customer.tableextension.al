tableextension 50100 "BCT Customer Ext" extends Customer
{
    fields
    {
        field(50100; "BCT Subscription Customer"; Boolean)
        {
            Caption = 'Subscription Customer';
            FieldClass = FlowField;
            CalcFormula = Exist("BCT Customer Subscription" where("Customer No" = field("No."), Active = const(true)));
            Editable = false;
        }
        field(50200; "PBA_Test"; Text[50])
        {
            Caption = 'PBA_Test';
        }
        field(50205; "RLAN Test"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
}