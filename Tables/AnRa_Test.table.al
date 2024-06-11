table 50208 AnRa_Test
{
    DataClassification = CustomerContent;
    DrillDownPageId = AnRa_TestList;
    LookupPageId = AnRa_TestList;
    fields
    {
        field(1; Code; Code[20]) { DataClassification = ToBeClassified; }
        field(10; Description; text[50]) { }
    }

    keys
    {
        key(Key1; Code) { Clustered = true; }
    }
}