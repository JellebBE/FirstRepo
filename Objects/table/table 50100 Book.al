table 50100 Book
{
    LookupPageId = "Book list";
    fields
    {
        field(1; "No."; Integer)
        {
            CaptionML=ENU='No.';
        }
        field(2; Title; Text[50])
        {
            CaptionML=ENU='Title';
        }
        Field(3; Author; Text[50])
        {
            CaptionML=ENU='Author';

        }
        field(4; HardCover; Boolean)
        {
            CaptionML=ENU='HardCover';
        }
        field(5; NumberOfPages; Integer)
        {
            CaptionML=ENU='Number of Page';

        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}