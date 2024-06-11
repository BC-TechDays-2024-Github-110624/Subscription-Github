page 50209 BF_TestList
{
    ApplicationArea = All;
    Caption = 'Test List (BF)';
    PageType = List;
    SourceTable = BF_Test;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(Repeater)
            {
                field(Code; Rec.Code) { }
                field(Description; Rec.Description) { }
            }
        }
    }
}