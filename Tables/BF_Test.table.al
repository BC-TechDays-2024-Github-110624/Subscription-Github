table 50209 BF_Test
{
    Caption = 'Test Table (BF)';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}