page 50103 AlListPage
{
    PageType = List;
    SourceTable = ALISSUES;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Number; number) { }
                field(Title; title) { }
                field(CreatedAt; created_at) { }
                field(User; user) { }
                field(State; state) { }
                field(URL; html_url) { ExtendedDatatype = URL; }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(GetIssues)
            {
                Caption = 'Get Issues';
                Image = GetLines;
                trigger OnAction();
                var
                    Getissues:Codeunit RefreshALIssueCode;
                begin
                      Getissues.GetAlIssues();  
                end;
            
            }
        }
    }
}