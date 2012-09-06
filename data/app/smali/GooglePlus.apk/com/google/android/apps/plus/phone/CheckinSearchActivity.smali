.class public Lcom/google/android/apps/plus/phone/CheckinSearchActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "CheckinSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->LOCATION_PICKER:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 54
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    if-eqz v0, :cond_e

    .line 55
    check-cast p1, Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->mCheckinSearchFragment:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->setSearchMode(Z)V

    .line 58
    :cond_e
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_14

    .line 126
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    return-void

    .line 115
    :pswitch_7
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->getLocationSettingActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    goto :goto_3

    .line 113
    nop

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->setContentView(I)V

    .line 35
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 97
    packed-switch p1, :pswitch_data_24

    .line 105
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 99
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08020b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08020e

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 97
    nop

    :pswitch_data_24
    .packed-switch 0x1bfb7a8
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 72
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 67
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 68
    const/4 v0, 0x1

    goto :goto_8

    .line 65
    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->isIntentAccountActive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/CheckinSearchActivity;->finish()V

    .line 47
    :cond_c
    return-void
.end method
