codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        JW_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure JW_Test()
    var
        MyTable: Record MyTable;
    begin
        if not MyTable.IsEmpty() then
            exit;
        MyTable.Init();
        MyTable.Code := 'JW';
        MyTable.Description := 'Jens Winberg';
        MyTable.Insert();
    end;
}