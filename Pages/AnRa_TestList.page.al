page 50104 AnRa_TestList
{
    Caption = 'ARA_TestList';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = AnRa_Test;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code) { }
                field(Description; Rec.Description) { }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {

    }
}