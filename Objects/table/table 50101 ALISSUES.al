table 50101 ALISSUES
{

    fields
    {
        field(1;ID;Integer)
        {
        }
        field(2;Number;Integer)
        {

        }
        field(3;Title;Text[250])
        {
            
        }
        field(4;Created_at;Datetime)
        {
            
        }
        field(5;User;Text[50])
        {
                
        }
        field(6;State;Text[30])
        {
            
        }
        field(7;html_URL;Text[250])
        {
            
        }
    }

    keys
    {
        key(PK;ID)
        {
            Clustered = true;
        }
    }
    
    

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}