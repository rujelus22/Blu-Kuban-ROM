.class final Lcom/darekxan/extweaks/app/e;
.super Ljava/lang/Object;
.source "ExTweaksProfileManagementActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/darekxan/extweaks/app/e;->a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 78
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 71
    :pswitch_a
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_9

    .line 74
    :pswitch_e
    const-string v1, "rename this and that"

    const-string v2, "wth"

    invoke-static {v1, v2}, Lcom/darekxan/extweaks/app/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/darekxan/extweaks/app/f;

    move-result-object v1

    iget-object v2, p0, Lcom/darekxan/extweaks/app/e;->a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    invoke-virtual {v2}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/darekxan/extweaks/app/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_9

    .line 69
    nop

    :pswitch_data_26
    .packed-switch 0x7f050044
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public final onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 54
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 55
    iget-object v0, p0, Lcom/darekxan/extweaks/app/e;->a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    iget-object v0, v0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/darekxan/extweaks/app/e;->a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a(Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;)V

    .line 86
    iget-object v0, p0, Lcom/darekxan/extweaks/app/e;->a:Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;

    iget-object v0, v0, Lcom/darekxan/extweaks/app/ExTweaksProfileManagementActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 87
    return-void
.end method

.method public final onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
