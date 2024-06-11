page 50205 "RLAN Test List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "RLAN Test";

    layout
    {
        area(Content)
        {
            repeater(Records)
            {
                field(Name; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}