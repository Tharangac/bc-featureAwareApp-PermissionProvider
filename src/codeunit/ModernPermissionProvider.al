codeunit 50100 ModernPermissionProvider implements IUserPermissionProvider
{
    procedure GetUserPermissions(): Text;
    var
        ExampleLbl: Label 'Modern Permission Provider Enabled';
    begin
        exit(ExampleLbl);
    end;
}

