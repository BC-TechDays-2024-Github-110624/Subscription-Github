codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        kw_test();
        pba_test();
        RLAN_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure kw_test()
    var
        KW_Test : Record "KW Test";
    begin
        KW_Test.Code:='KW';
        KW_Test.Description:='KW Test';
        if KW_Test.Insert() then ;
    end;
}