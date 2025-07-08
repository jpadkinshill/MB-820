pageextension 50105 "Sales Order Ext" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("No of SO Lines"; Rec."No of SO Lines")
            {
                ApplicationArea = All;
            }

            field("Total Unit Price"; Rec."Total Unit Price")
            {
                ApplicationArea = All;
            }

            field("Sales Line Exists"; Rec."Sales Line Exists")
            {
                ApplicationArea = All;
            }

            field("Primary Contact Email"; Rec."Contact Email")
            {
                ApplicationArea = All;
            }
        }
    }
}