tableextension 50105 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        // Number of Sales Order Lines
        field(50100; "No of SO Lines"; Integer)
        {
            Caption = 'No of SO Lines';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));

        }

        // Total Unit Price
        field(50101; "Total Unit Price"; Decimal)
        {
            Caption = 'Total Unit Price';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Unit Price" where("Document Type" = field("Document Type"), "Document No." = field("No.")));

        }

        field(50102; "Sales Line Exists"; Boolean)
        {
            Caption = 'Sales Line Exists';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = exist("Sales Line" where("Document Type" = field("Document Type"), "Document No." = field("No.")));

        }

        field(50103; "Contact Email"; Text[80])
        {
            Caption = 'Contact Email';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field("Sell-to Contact No.")));

        }
    }
}