page 50101 "Book Card"
{
    PageType = Card;
    SourceTable = Book;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {

                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field(HardCover; HardCover)
                {
                    ApplicationArea = All;
                }
                field(NumberOfPages; NumberOfPages)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }

    var
        myInt: Integer;
}