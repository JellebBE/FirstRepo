codeunit 50103 RefreshALIssueCode
{
    trigger OnRun();
    begin
    end;

    procedure GetAlIssues();
    var
        ALIssue: Record ALISSUES;
        HttpClient: HttpClient;
        ResponseMessage: HttpResponseMessage;
        JsonToken: JsonToken;
        JsonValue: JsonValue;
        JsonObject: JsonObject;
        JsonArray: JsonArray;
        JsonText: text;
        i: Integer;
    begin

        ALIssue.DeleteAll;



        HttpClient.DefaultRequestHeaders.Add('User-Agent', 'Dynamics 365'); if not HttpClient.Get('https://api.github.com/repos/Microsoft/AL/issues', ResponseMessage) then
            Error('The call to the web service failed.');

        if not ResponseMessage.IsSuccessStatusCode then
            error('The web service returned an error message:\\' + 'Status code: %1\' + 'Description: %2', ResponseMessage.HttpStatusCode, ResponseMessage.ReasonPhrase);


        ResponseMessage.Content.ReadAs(JsonText); // Process JSON response 
        if not JsonArray.ReadFrom(JsonText) then
            Error('Invalid response, expected an JSON array as root object');

        foreach JsonToken in JsonArray do
        begin
            JsonObject := JsonToken.AsObject;
            ALIssue.init;
            if not JsonObject.Get('id', JsonToken) then error('Could not find a token with key %1');
            ALIssue.id := JsonToken.AsValue.AsInteger;
            ALIssue.id := JsonToken.AsValue.AsInteger;
            ALIssue.number := GetValue(JsonObject, 'number').AsValue.AsInteger;
            ALIssue.title := GetValue(JsonObject, 'title').AsValue.AsText;
            ALIssue.created_at := GetValue(JsonObject, 'created_at').AsValue.AsDateTime;
            ALIssue.state := GetValue(JsonObject, 'state').AsValue.AsText;
            ALIssue.html_url := GetValue(JsonObject, 'html_url').AsValue.AsText;
            ALIssue.Insert;

        end;

    end;

    local procedure GetValue(JsonObject: JsonObject; TokenKey: text) JsonToken: JsonToken;
    begin
        if not JsonObject.Get(TokenKey, JsonToken) then
            Error('Could not find a token with key %1', TokenKey);
    end;


}