codeunit 50800 "HelloWorld Test"
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('HelloWorldMessageHandler')]
    procedure TestHelloWorldMessage()
    var
        CustList: TestPage "Customer List";
    begin

        LibraryLowerPermissions.SetExactPermissionSet('GeneratedPermission');
        LibraryLowerPermissions.SetO365BusFull();
        CustList.OpenView();
        CustList.Close();
        if (not MessageDisplayed) then
            ERROR('Message was not displayed!');
    end;

    [MessageHandler]
    procedure HelloWorldMessageHandler(Message: Text[1024])
    begin
        MessageDisplayed := MessageDisplayed or (Message = 'App published: Hello worlds');
    end;

    var
        MessageDisplayed: Boolean;
        LibraryLowerPermissions: Codeunit "Library - Lower Permissions";
}

