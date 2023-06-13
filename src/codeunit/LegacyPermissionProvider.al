codeunit 50101 LegacyPermissionProvider implements IUserPermissionProvider
{
    procedure GetUserPermissions(): Text;
    var
        ExampleLbl: Label 'Legacy Permission Provider Enabled';
    begin
        exit(ExampleLbl);
    end;
}

