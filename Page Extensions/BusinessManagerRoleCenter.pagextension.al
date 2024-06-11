pageextension 50100 "BCT BusinessManager RC Ext" extends "Business Manager Role Center"
{
    actions
    {
        addlast(Embedding)
        {
            action("BCT Subscriptions")
            {
                Caption = 'Subscriptions';
                image = InsuranceRegisters;
                RunObject = page "BCT Subscription List";
                ApplicationArea = All;
            }
            action("BF_Test")
            {
                ApplicationArea = All;
                Caption = 'Test (BF)';
                Image = "8ball";
                RunObject = page BF_TestList;
            }
            action("AOT_Test")
            {
                Caption = 'AOT Test';
                RunObject = page AOT_TestList;
            }
            action(AnRa_Test)
            {
                Caption = 'AnRa_Test';
                image = "8ball";
                RunObject = page AnRa_TestList;
                ApplicationArea = All;
            }
            action("PBA_Test")
            {
                Caption = 'Pba Test';
                image = Import;
                RunObject = page "PBA Test List";
                ApplicationArea = All;
            }

        }
        addafter("Create Vendor Payments")
        {
            group("BCT Subscriptions 2")
            {

                Caption = 'Subscriptions';
                action("BCT Create Subscription Invoices")
                {
                    Caption = 'Create Subscription Invoices';
                    image = CreateJobSalesInvoice;
                    RunObject = report "BCT Create Invoices";
                    ApplicationArea = All;
                }
                action("BCT Subscription Customers")
                {
                    Caption = 'Subscription Customers';
                    image = Report;
                    RunObject = report "BCT Subscription Customers";
                    ApplicationArea = All;
                }
            }
        }
    }
}
