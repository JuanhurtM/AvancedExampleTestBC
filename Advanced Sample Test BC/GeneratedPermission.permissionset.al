permissionset 50500 GeneratedPermission
{
    Assignable = true;
    Permissions = tabledata "Activation Code Information"=RIMD,
        tabledata "Customer Rewards Mgt. Setup"=RIMD,
        tabledata "Reward Level"=RIMD,
        table "Activation Code Information"=X,
        table "Customer Rewards Mgt. Setup"=X,
        table "Reward Level"=X,
        codeunit "Customer Rewards Ext. Mgt."=X,
        codeunit "Customer Rewards Install Logic"=X,
        page "Customer Rewards Wizard"=X,
        page "Rewards Level List"=X;
}